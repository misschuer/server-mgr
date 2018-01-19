--服务器列表binlog
ServerConnList = {
	--遍历所有服务器信息
	Foreach = function(self, fun)
		local i = 0
		while true do
			if(self:GetConnInfoID(i) == 0)then
				break
			else
				fun(i, self:GetConnInfoID(i), self:GetServerType(i), self:GetConnOkFlag(i), self:GetScenedType(i))
				i = i + 1
			end
		end
	end,
	--获取指定位置的fd
	GetConnInfoID = function(self, index)
		return self:GetUInt32(SERVER_CONN_LIST_FIELD_SERVER_INFO_START + index * MAX_SERVER_CONN_INFO + SERVER_CONN_INFO_ID)
	end,
	--获取指定位置的服务器类型
	GetServerType = function(self, index)
		return self:GetUInt32(SERVER_CONN_LIST_FIELD_SERVER_INFO_START + index * MAX_SERVER_CONN_INFO + SERVER_CONN_INFO_TYPE)
	end,
	--获取指定位置的场景服类型
	GetScenedType = function(self, index)
		return self:GetUInt32(SERVER_CONN_LIST_FIELD_SERVER_INFO_START + index * MAX_SERVER_CONN_INFO + SERVER_CONN_INFO_SCENED_TYPE)
	end,
	--获取指定位置的服务器是否准备完毕
	GetConnOkFlag = function(self, index)
		return self:GetBit(SERVER_CONN_LIST_FIELD_SERVER_INFO_START + index * MAX_SERVER_CONN_INFO + SERVER_CONN_INFO_FLAG, SERVER_CONN_INFO_FLAG_READY_OK)
	end,
	--添加一个server信息,中心服调用
	AddServer = function(self, server_type, conn_id, pid)
		outDebug(string.format('AddServer server_type = %d  conn_id = %d',server_type,conn_id))
		local empty_pos = self:FindEmptyPos() --找个空的位置
		--把服务器信息存到空位置上
		for j = 0, MAX_SERVER_CONN_INFO-1, 1 do
			--存之前先清零
			self:SetUInt32(SERVER_CONN_LIST_FIELD_SERVER_INFO_START + empty_pos * MAX_SERVER_CONN_INFO + j, 0)
		end
		self:SetUInt32(SERVER_CONN_LIST_FIELD_SERVER_INFO_START + empty_pos * MAX_SERVER_CONN_INFO + SERVER_CONN_INFO_PID, pid)			
		self:SetUInt32(SERVER_CONN_LIST_FIELD_SERVER_INFO_START + empty_pos * MAX_SERVER_CONN_INFO + SERVER_CONN_INFO_TYPE, server_type)	
		--场景服需要设置自己的类型
		if(server_type == SERVER_TYPE_SCENED)then
			local type_table = {0,0,0,0}
			self:Foreach(function(index, fd, server_type, ok_flag, scened_type)
				if(server_type == SERVER_TYPE_SCENED)then
					type_table[scened_type] = type_table[scened_type] + 1
				end
			end)
			
			local scened_type
			local min_v = 999
			for i = 1, table.maxn(type_table) do
				if(min_v > type_table[i])then
					scened_type = i
					min_v = type_table[i]
				end
			end
			outString('this scened server type is '..scened_type)
			self:SetUInt32(SERVER_CONN_LIST_FIELD_SERVER_INFO_START + empty_pos * MAX_SERVER_CONN_INFO + SERVER_CONN_INFO_SCENED_TYPE, scened_type)
		end
		--最后才给连接id
		self:SetUInt32(SERVER_CONN_LIST_FIELD_SERVER_INFO_START + empty_pos * MAX_SERVER_CONN_INFO + SERVER_CONN_INFO_ID, conn_id)
		--self:PrintServerConList()
	end,
	
	--移除指定类型和链接id的服务器
	RemoveServer = function(self, server_type, conn_id)
		outDebug(string.format('RemoveServer server_type = %d  conn_id = %d',server_type,conn_id))
		local i = 0
		while true do
			if(self:GetConnInfoID(i) == 0)then
				--outError('error: why cant find !!! server_type = '..server_type..' conn_id = '..conn_id..'  i = '..i)
				break
			end
			--outDebug('xiaobiao_conn_id = '..self:GetConnInfoID(i)..' xiaobiao_server_type = '..self:GetServerType(i))
			if(self:GetConnInfoID(i) == conn_id
				and self:GetServerType(i) == server_type)then
				--找到后把后面的数据往前移动
				--outDebug('scened  remove server_type = '..server_type..'  conn_id = '..conn_id)
				local j = i + 1
				while true do 
					if(self:GetConnInfoID(i) == 0)then
						--outDebug('-------scened remove break')
						break
					end
					--outDebug('--------------scened remove i = '..i..'  j = '..j)
					for k = 0, MAX_SERVER_CONN_INFO - 1, 1 do
						self:SetUInt32(SERVER_CONN_LIST_FIELD_SERVER_INFO_START + i * MAX_SERVER_CONN_INFO + k 
							, self:GetUInt32(SERVER_CONN_LIST_FIELD_SERVER_INFO_START + j * MAX_SERVER_CONN_INFO + k))
					end						
					i = i + 1
					j = i + 1
				end					
				break;
			end
			i = i + 1
		end	
		--self:PrintServerConList()
	end,
	
	--返回场景服的个数
	GetScenedSize = function(self)
		local size = 0;
		local i = 0
		while true do
			if(self:GetConnInfoID(i) == 0)then
				break
			else
				if(self:GetConnOkFlag(i) and self:GetServerType(i) == SERVER_TYPE_SCENED)then
					size = size + 1	--服务器类型为场景服才统计
				end				
				i = i + 1
			end
		end
		return size
	end,
	
	--返回场景服的索引
	GetScenedIndex = function(self)
		local indexs = {};
		local i = 0
		while true do
			if(self:GetConnInfoID(i) == 0)then
				break
			else
				if(self:GetConnOkFlag(i) and self:GetServerType(i) == SERVER_TYPE_SCENED)then
					table.insert(indexs, i)	--服务器类型为场景服才统计
				end				
				i = i + 1
			end
		end
		return indexs
	end,
	
	--添加场景服的玩家数量
	AddScenedPlayer = function(self, conn_id)
		local i =  0
		while true do
			if(self:GetConnInfoID(i) == 0)then
				break;
			end
			if(self:GetConnInfoID(i) == conn_id)then
				self:AddUInt32(SERVER_CONN_LIST_FIELD_SERVER_INFO_START + i * MAX_SERVER_CONN_INFO + SERVER_CONN_INFO_COUNT, 1)
				break
			end	
			i = i + 1
		end
	end,
	
	--减少场景服的玩家数量
	SubScenedPlayer = function(self, conn_id)
		local i =  0
		while true do
			if(self:GetConnInfoID(i) == 0)then
				break;
			end
			if(self:GetConnInfoID(i) == conn_id)then
				self:SubUInt32(SERVER_CONN_LIST_FIELD_SERVER_INFO_START + i * MAX_SERVER_CONN_INFO+ SERVER_CONN_INFO_COUNT, 1)
				break
			end	
			i = i + 1
		end
	end,
	
	--选取一个玩家数量较少的场景服conn_id
	SelectScenedFDByType = function(self, scened_type, mapid)
		local conn_id = 0
		local player_count = 0
		local i = 0
		local world_mapid_config = DoGetNeedCreateMapIDWhenStart()
		local config = world_mapid_config[1]
		local index = 1
		for k, val in pairs(config) do
			if(val == mapid)then
				index = k
			end
		end
		local scened_indexs = self:GetScenedIndex()
		while true do
			if(self:GetConnInfoID(i) == 0)then
				--outDebug('--- break')
				break
			end
			if(self:GetServerType(i) == SERVER_TYPE_SCENED and self:GetConnOkFlag(i))then
				local type_ = self:GetUInt32(SERVER_CONN_LIST_FIELD_SERVER_INFO_START + i * MAX_SERVER_CONN_INFO + SERVER_CONN_INFO_SCENED_TYPE)
				--outDebug('---------- scened_type = '..scened_type..'	type_ = '..type_)
				--第0、1、2、3个场景服为非副本场景，第4个场景为活动副本场景，第5个场景为单人副本场景
				if(scened_type == SCENED_TYPE_NO_INST and type_ == SCENED_TYPE_NO_INST)then
					--当mapid不为0时，则说明是刚启动服务器的时候创建世界地图，把实例平均分配在场景0,1,2,3
					if(index > 4 and index <= 8)then
						index = index - 4
					elseif(index > 8 and index <= 12)then
						index = index - 8
					end
					if(index <= 4)then
						local pos = scened_indexs[index]
						if(pos == nil)then
							pos = i
						end						
						conn_id = self:GetConnInfoID(pos)						
						break
					end	
				--如果是新手村副本的话，则随机到各个场景服
				elseif((scened_type == SCENED_TYPE_INST and mapid == 43) 	--新手村分配到压力最小的场景
					or (scened_type == SCENED_TYPE_INST and type_ == SCENED_TYPE_INST)
					or (scened_type == SCENED_TYPE_ACTIVI and type_ == SCENED_TYPE_ACTIVI)
					or (scened_type == MAX_SCENED_TYPE) )then	
					local player_count_ = self:GetUInt32(SERVER_CONN_LIST_FIELD_SERVER_INFO_START + i * MAX_SERVER_CONN_INFO + SERVER_CONN_INFO_COUNT)
					if(conn_id == 0 or player_count > player_count_)then
						--outDebug('------------ conn_id = '..conn_id..'  player_count = '..player_count)
						conn_id = self:GetConnInfoID(i)
						player_count = player_count_
					end			
				end
			end
			i = i + 1
		end
		
		return conn_id
	end,
	
	--根据一定的规则获得场景服连接 inst_type:副本类型（0：不是副本 1：活动副本 2：单人副本）
	GetScenedFDByType = function(self, inst_type, mapid)
		local conn_id = 0
		if(inst_type == MAP_INST_TYP_SINGLETON)then		--单人副本
			conn_id = self:SelectScenedFDByType(SCENED_TYPE_INST, mapid)
		elseif(inst_type == MAP_INST_TYP_ACTIVITY)then	--活动副本
			conn_id = self:SelectScenedFDByType(SCENED_TYPE_ACTIVI, mapid)
		elseif(inst_type == MAP_INST_TYP_NO_INSTANCE)then	--不是副本
			conn_id = self:SelectScenedFDByType(SCENED_TYPE_NO_INST, mapid)
		end
		--如果相应的服务器没有找到	
		if(conn_id == 0)then
			conn_id = self:SelectScenedFDByType(MAX_SCENED_TYPE);
		end
		outDebug('tip: SelectScenedFDByType:mapid = '..mapid..' select scened connection = '..conn_id)
		return conn_id	
	end,
	
	--设置服务器准备好的flag
	SetServerReadyOKFlag = function(self, conn_id)
		local index = self:FindServerByConnid(conn_id)
		if(index ~= -1)then
			self:SetBit(SERVER_CONN_LIST_FIELD_SERVER_INFO_START + index * MAX_SERVER_CONN_INFO + SERVER_CONN_INFO_FLAG, SERVER_CONN_INFO_FLAG_READY_OK)
		end
	end,
	
	--获得服务器准备好的flag
	GetServerReadyOKFlag = function(self, conn_id)
		local index = self:FindServerByConnid(conn_id)
		if(index ~= -1)then
			return self:GetConnOkFlag(index)
		else
			return false
		end
	end,
	
	--找个空的位置
	FindEmptyPos = function(self)
		--找个空位置存起来
		local i = 0
		while true do
			if(self:GetConnInfoID(i) == 0)then
				break
			end
			i = i + 1		
		end
		return i
	end,
	
	--查找指定类型的服务器,除场景服
	FindServerByType = function(self, server_type)
		local index = 0
		local i = 0
		while true do
			local fd = self:GetConnInfoID(i)
			if(fd == 0)then
				--outError('error: why cant find !!! server_type = '..server_type..'  i = '..i)
				break
			end
			if(self:GetServerType(i) == server_type)then
				return true, i, fd, self:GetConnOkFlag(i)
			end	
			i = i + 1		
		end
	
		return false, nil, nil, nil
	end,
	--找到指定链接的服务器 
	FindServerByConnid = function(self, conn_id)
		local i = 0
		while true do
			if(self:GetConnInfoID(i) == 0)then
				break;
			end
			if(self:GetConnInfoID(i) == conn_id)then
				return i
			end	
			i = i + 1
		end
		return -1
	end,	

	PrintServerConList = function(self)
		local i = 0 
		outDebug('-------------------- print server list -------------------')
		while true do
			if(self:GetConnInfoID(i) == 0)then
				break;
			end
			if(self:GetConnInfoID(i) ~= 0)then
				outDebug('index = '..i..' conn_id = '..self:GetConnInfoID(i)..' server_type = '..self:GetServerType(i)..' scened_type = '..self:GetUInt32(SERVER_CONN_LIST_FIELD_SERVER_INFO_START + i * MAX_SERVER_CONN_INFO + SERVER_CONN_INFO_SCENED_TYPE))
			end	
			i = i + 1
		end
		outDebug('-------------------- print server list end-------------------')	
	end,
	
};
__inherit__(ServerConnList, BinLogObject)