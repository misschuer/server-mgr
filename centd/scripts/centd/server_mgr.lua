--进程守护管理器
ServerManager = {
	--调用shell启动服务器的每一个时间点
	StartTime = {
		[SERVER_TYPE_LOGIND] = {true},
		[SERVER_TYPE_APPD] = {true},
		[SERVER_TYPE_POLICED] = {true},
		[SERVER_TYPE_SCENED] = {true},
		[SERVER_TYPE_DATAD] = {true},
		[SERVER_TYPE_GAMEHALLD] = {true},
		[SERVER_TYPE_DESKD] = {true},
	},
	--清空时间点
	ClearServerStartInfo = function(self, server_type)
		self.StartTime[server_type] = {true}
	end,
	--服务器是否不能使用
	ServerState = function(self, server_type)
		local timetable = self.StartTime[server_type]
		--第一位是服务器能不能用
		if(timetable == nil or #timetable == 0 or timetable[1] == false)then
			return false
		end
		--干掉过时的
		while(#timetable > 1)do
			if(timetable[2] < os.time() - 300)then --5分钟
				table.remove(timetable, 2)
			else
				break
			end
		end
		--看下失败次数
		--场景服
		if(server_type == SERVER_TYPE_SCENED)then
			if(#timetable > 11)then
				timetable[1] = false
				outString(string.format('ServerManager:ServerState server %u fail', server_type))
			end
			return timetable[1]
		end
		--桌子服
		if(server_type == SERVER_TYPE_DESKD)then
			if(#timetable > 100)then
				timetable[1] = false
				outString(string.format('ServerManager:ServerState server %u fail', server_type))
			end
			return timetable[1]
		end
		--其他
		if(#timetable > 5)then
			timetable[1] = false
			outString(string.format('ServerManager:ServerState server %u fail', server_type))
		end
		return timetable[1]
	end,
	--服务器启动时，要尝试几次创建tcp监听
	GetTryOpenTcpCount = function(self, s_test_type, process_method)
		--若没开进程守护，也是只能尝试一次
		if((s_test_type == 1 or s_test_type == 11) and process_method)then
			return 10000
		else
			return 1
		end
	end,
	--轮询检测服务器状态
	StartServer = function(self, is_windows, s_test_type, centd_port)
		-- s_test_type [1] centd datad logind appd scened policed
		-- s_test_type [2] centd datad logind scened policed
		-- s_test_type [3] centd datad logind appd policed
		-- s_test_type [4] centd datad logind policed
		-- s_test_type [5] centd datad logind
		-- s_test_type [10] centd
		-- s_test_type [11] runcore
		if(s_test_type == 10)then
			return
		end
		--世界服
		if(s_test_type == 11)then
			if(is_windows)then
				return
			end
			if(processMgrLib.GetServerCount(SERVER_TYPE_LOGIND) == 0 
				and self:ServerState(SERVER_TYPE_LOGIND))then
				outString('start runcore SERVER_TYPE_LOGIND')
				os.execute("nohup "..__BIN_FOLDER__.."start_logind.sh "..__BIN_FOLDER__.." -centd_port "..centd_port.." > /dev/null 2>&1 &")
				processMgrLib.AddServer(SERVER_TYPE_LOGIND)
				table.insert(self.StartTime[SERVER_TYPE_LOGIND], os.time())
			end
			if(processMgrLib.GetServerCount(SERVER_TYPE_APPD) == 0  and self:ServerState(SERVER_TYPE_APPD))then
				outString('start runcore SERVER_TYPE_APPD')
				os.execute("nohup "..__BIN_FOLDER__.."start_appd.sh "..__BIN_FOLDER__.." -centd_port "..centd_port.." > /dev/null 2>&1 &")
				processMgrLib.AddServer(SERVER_TYPE_APPD)
				table.insert(self.StartTime[SERVER_TYPE_APPD], os.time())
			end			
			return 
		end
		--梭哈服
		if(s_test_type == 12)then
			if(is_windows)then
				return
			end
			--大厅服
			if(processMgrLib.GetServerCount(SERVER_TYPE_GAMEHALLD) == 0 
				and self:ServerState(SERVER_TYPE_GAMEHALLD))then
				outString('start runcore SERVER_TYPE_GAMEHALLD')
				os.execute("nohup ./runcore /home/showhand/gamehalld.lua -centd_port " .. centd_port .. " > /home/showhand/log/_runcore_gamehall.out 2>&1 &")
				processMgrLib.AddServer(SERVER_TYPE_GAMEHALLD)
				table.insert(self.StartTime[SERVER_TYPE_GAMEHALLD], os.time())
			end
			
			--桌子服，有多个
			if(self:ServerState(SERVER_TYPE_DESKD))then
				local t = os.time()
				local index = 1
				while(processMgrLib.GetServerCount(SERVER_TYPE_DESKD) < 20)do
					outString('start SERVER_TYPE_DESKD')
					local sh = string.format("nohup ./runcore /home/showhand/deskd.lua -centd_port %u %u%u > /home/showhand/log/_runcore_desk%u%u.out 2>&1 &"
						, centd_port, t, index, t, index)
					os.execute(sh)
					processMgrLib.AddServer(SERVER_TYPE_DESKD)
					table.insert(self.StartTime[SERVER_TYPE_DESKD], os.time())
					index = index + 1
				end
			end
			return 
		end
		--登录服
		if(processMgrLib.GetServerCount(SERVER_TYPE_LOGIND) == 0 
			and self:ServerState(SERVER_TYPE_LOGIND))then
			outString('start SERVER_TYPE_LOGIND')
			if(is_windows)then
				os.execute("start "..__BIN_FOLDER__.."\\cow_logind.exe -centd_port "..centd_port)
			else
				os.execute("nohup "..__BIN_FOLDER__.."logind -c "..__ETC_FOLDER__.."logind.conf -centd_port "..centd_port.." > /dev/null 2>&1 &")
			end
			processMgrLib.AddServer(SERVER_TYPE_LOGIND)
			table.insert(self.StartTime[SERVER_TYPE_LOGIND], os.time())
		end
		--数据服
		if(processMgrLib.GetServerCount(SERVER_TYPE_DATAD) == 0 
			and self:ServerState(SERVER_TYPE_DATAD))then
			outString('start SERVER_TYPE_DATAD')
			if(is_windows)then
				os.execute("start "..__BIN_FOLDER__.."\\cow_datad.exe -centd_port "..centd_port)
			else
				os.execute("nohup "..__BIN_FOLDER__.."datad -c "..__ETC_FOLDER__.."datad.conf -centd_port "..centd_port.." > /dev/null 2>&1 &")
			end
			processMgrLib.AddServer(SERVER_TYPE_DATAD)
			table.insert(self.StartTime[SERVER_TYPE_DATAD], os.time())
		end
		--应用服
		if((s_test_type == 1 or s_test_type == 3) 
			and	processMgrLib.GetServerCount(SERVER_TYPE_APPD) == 0 
			and self:ServerState(SERVER_TYPE_APPD))then
			outString('start SERVER_TYPE_APPD')
			outString("nohup "..__BIN_FOLDER__.."appd -c "..__ETC_FOLDER__.."appd.conf -centd_port "..centd_port.." > /dev/null 2>&1 &")
			if(is_windows)then
				os.execute("start "..__BIN_FOLDER__.."\\cow_appd.exe -centd_port "..centd_port)
			else
				os.execute("nohup "..__BIN_FOLDER__.."appd -c "..__ETC_FOLDER__.."appd.conf -centd_port "..centd_port.." > /dev/null 2>&1 &")
			end
			processMgrLib.AddServer(SERVER_TYPE_APPD)
			table.insert(self.StartTime[SERVER_TYPE_APPD], os.time())
		end
		--日志服
		if(s_test_type <5
			and processMgrLib.GetServerCount(SERVER_TYPE_POLICED) == 0 
			and self:ServerState(SERVER_TYPE_POLICED))then
			outString('start SERVER_TYPE_POLICED')
			if(is_windows)then
				os.execute("start "..__BIN_FOLDER__.."\\cow_policed.exe -centd_port "..centd_port)
			else
				os.execute("nohup "..__BIN_FOLDER__.."policed -c "..__ETC_FOLDER__.."policed.conf -centd_port "..centd_port.." > /dev/null 2>&1 &")
			end
			processMgrLib.AddServer(SERVER_TYPE_POLICED)
			table.insert(self.StartTime[SERVER_TYPE_POLICED], os.time())
		end
		--场景服，有多个
		if((s_test_type == 1 or s_test_type == 2) and self:ServerState(SERVER_TYPE_SCENED))then			
			while(processMgrLib.GetServerCount(SERVER_TYPE_SCENED) < SCENED_COUNT)do
				outString('start SERVER_TYPE_SCENED')
				outString("nohup "..__BIN_FOLDER__.."scened -c "..__ETC_FOLDER__.."scened.conf -centd_port "..centd_port.." > /dev/null 2>&1 &")
				if(is_windows)then
					os.execute("start "..__BIN_FOLDER__.."\\cow_scened.exe -centd_port "..centd_port)
				else
					os.execute("nohup "..__BIN_FOLDER__.."scened -c "..__ETC_FOLDER__.."scened.conf -centd_port "..centd_port.." > /dev/null 2>&1 &")
				end
				processMgrLib.AddServer(SERVER_TYPE_SCENED)
				table.insert(self.StartTime[SERVER_TYPE_SCENED], os.time())
			end
		end
	end,


