----------------------------------------------------------------------
--继承
function __inherit__(sub,super)
	setmetatable(sub,{ __index=function(t,k)
			sub[k]=super[k]
            return super[k]
	end })
end

--如果这几个函数都不存在，没办法检查语法
if(outString == nil) then
	--outString=print
end
if(getGlobalValue == nil) then
	getGlobalValue = loadstring('return nil')
end
if(__SCRIPTS_ROOT__ == nil) then
	__SCRIPTS_ROOT__ = './'
end

outString('开始载入枚举脚本')
require("SharedDef")
--------------------------------------------------------------------
--针对每个服务器都需要生成一些不同的配置
function dofile_config()
	--先检测一下脚本根目录下面的
	local lua_config_file = "config.lua"
	local file = io.open(lua_config_file,"r")
	if(file == nil) then
		lua_config_file = __SCRIPTS_ROOT__..lua_config_file
		file = io.open(lua_config_file,"r")
		--如果还是不存在,则在脚本路径下面生成这个文件
		if(file == nil) then
			file = io.open(lua_config_file,"a")
			file:write("wulongju_test = true\n")
			file:write("post_chat_to_dahei = false\n")
			file:write("changan_robot_open = false\n")
		end
	end
	file:close()
	dofile(lua_config_file)
end
--dofile_config()

--服务器类型
SERVER_TYPE_NETGD	= 0		--网关服
SERVER_TYPE_CENTD	= 1		--中心服
SERVER_TYPE_LOGIND	= 2		--登录服
SERVER_TYPE_APPD	= 3		--应用服
SERVER_TYPE_POLICED	= 4		--日志服
SERVER_TYPE_ROBOTD	= 5		--机器人服
SERVER_TYPE_SCENED	= 6		--场景服
SERVER_TYPE_DATAD   = 7     --数据服
SERVER_TYPE_GAMEHALLD = 8   --大厅服
SERVER_TYPE_DESKD   = 9     --桌子服


-- 服务器连接信息下标
-- 前面16位是连接次数，后面16位是成功连接次数
SERVER_CONN_LIST_FIELD_CONN_NUM = 0	-- 各种服务器连接次数，先预留个20种服务器吧
SERVER_CONN_LIST_FIELD_SERVER_INFO_START = 20	-- 服务器信息开始下标

SCENED_COUNT = 6			--场景服个数

--服务器信息枚举
SERVER_CONN_INFO_ID				= 0	--连接ID
SERVER_CONN_INFO_TYPE			= 1	--服务器类型
SERVER_CONN_INFO_LINENO			= 2	--线路
SERVER_CONN_INFO_COUNT			= 3	--玩家数量
SERVER_CONN_INFO_PING_PONG_MS	= 4	--响应时间
SERVER_CONN_INFO_SCENED_TYPE	= 5	--场景服分类 0)替补地图 1)普通地图 2)活动地图 3)副本地图；仅对场景服有效
SERVER_CONN_INFO_PID			= 6	--远程的进程号
SERVER_CONN_INFO_FLAG			= 7	--一些标志
MAX_SERVER_CONN_INFO = 8
--服务器标志位，准备好了
SERVER_CONN_INFO_FLAG_READY_OK = 0
--场景服类型
SCENED_TYPE_NONE = 0
SCENED_TYPE_NO_INST = 1
SCENED_TYPE_ACTIVI = 2
SCENED_TYPE_INST = 3
MAX_SCENED_TYPE = 4
--地图副本类型
MAP_INST_TYP_NO_INSTANCE = 0		--不是副本
MAP_INST_TYP_ACTIVITY = 1			--活动副本,虽是副本地图,但是,只有单例,活动时间自动关闭
MAP_INST_TYP_SINGLETON = 2			--单人副本，副本完成直接关闭
DELETE_GENERALS_ID = 9999


outString('开始载入协议脚本')
require("external")

outString('开始载入错误枚举脚本')
require("OprateResult")

outString('开始载入BinLog脚本')
require("binlog")


TIME_ZONE_HOUR = 8		--时区 todo目前写死


--获取GM命令对应的枚举
function GetGmCommandKey(gm_str)
	local gm_key = -1
	if(gm_str == '@ClientInfo')then	
		return GM_COMMAND_JIULONGCHAO    	 		
    
	elseif(gm_str == '@素材'  or gm_str == '@Material')then
		return GM_COMMAND_SUCAI    					
    
	elseif(gm_str == '@脚本'  or gm_str == '@Script' )then
		return GM_COMMAND_JIAOBEN 						
	
	elseif(gm_str == '@踢'  or gm_str == '@Kick')then
		return GM_COMMAND_TI							
    
	elseif(gm_str == '@在线'  or gm_str == '@Online')then
		return GM_COMMAND_ZAIXIAN  					
    
	elseif(gm_str == '@地图人数'  or gm_str == '@MapMembers' )then
		return GM_COMMAND_DITURENSHU 					
    
	elseif(gm_str == '@招财'  or gm_str == '@ShowMeTheMoney' )then
		return GM_COMMAND_ZHAOCAI				
    
	elseif(gm_str == '@制造' or gm_str == '@Make')then
		return GM_COMMAND_ZHIZAO						
    
	elseif(gm_str == '@清理'  or gm_str=='@ClearMainBag')then
		return GM_COMMAND_QINGLI						
    
	elseif(gm_str == '@装备'  or gm_str=='@GiveMeEquip')then
		return GM_COMMAND_ZHUANGBEI					
    
	elseif(gm_str == '@排行榜' or gm_str=='@RefreshRankingList')then
		return GM_COMMAND_PAIHANGBANG					
    
	elseif(gm_str == '@邮件'  or gm_str=='@Mail')then
		return GM_COMMAND_YOUJIAN						
    
	elseif(gm_str == '@崩掉' or gm_str=='@Crash')then
		return GM_COMMAND_BENGDIAO						
    
	elseif(gm_str == '@帮助' or gm_str=='@Help')then
		return GM_COMMAND_BANGZHU						
    
	elseif(gm_str == '@公告' or gm_str=='@Notice')then
		return GM_COMMAND_GONGGAO						
    
	elseif(gm_str == '@世界提示' or gm_str=='@WorldTip')then
		return GM_COMMAND_SHIJIETISHI					
    
	elseif(gm_str == '@排队' or gm_str=='@QueueUp')then
		return GM_COMMAND_PAIDUI						
    
	elseif(gm_str == '@屏蔽词' or gm_str=='@ReloadPingBiWords')then
		return GM_COMMAND_PINGBICI						
    
	elseif(gm_str == '@开启所有副本' or gm_str=='@ActivateAllInstance')then
		return GM_COMMAND_KAIQISUOYOUFUBEN				
        
	elseif(gm_str == '@关闭服务器'  or gm_str=='@CloseServer')then
		return GM_COMMAND_GUANBIFUWUQI					
    
	elseif(gm_str == '@LUA' or gm_str == '@lua')then
		return GM_COMMAND_LUA							
    
	elseif(gm_str == '@充值'  or gm_str=='@PayMoney')then
		return GM_COMMAND_CHONGZHI						
    
	elseif(gm_str == '@关闭地图'        or gm_str=='@CloseMap')then
		return GM_COMMAND_GUANBIDITU					
    
	elseif(gm_str == '@等级'            or gm_str=='@SetLevel')then
		return GM_COMMAND_DENGJI						
    
	elseif(gm_str == '@清理任务物品'    or gm_str=='@ClearQuestItem')then
		return GM_COMMAND_QINGLIRENWUWUPIN				
    
	elseif(gm_str == '@清理任务'        or gm_str=='@ClearQuest')then
		return GM_COMMAND_QINGLIRENWU					
    
	elseif(gm_str == '@完成任务'        or gm_str=='@CompleteQuest')then
		return GM_COMMAND_WANCHENGRENWU				
    
	elseif(gm_str == '@接受任务'        or gm_str=='@ReceiveQuest')then
		return GM_COMMAND_JIESHOURENWU					
    
	elseif(gm_str == '@干掉'            or gm_str=='@Kill')then
		return GM_COMMAND_GANDIAO						
    
	elseif(gm_str == '@刷怪'            or gm_str=='@MakeMonster')then
		return GM_COMMAND_SHUAGUAI						
    
	elseif(gm_str == '@传送'            or gm_str=='@Teleport')then
		return GM_COMMAND_CHUANSONG					
    
	elseif(gm_str == '@消除冷却'        or gm_str=='@ClearSpellCD')then
		return GM_COMMAND_XIAOCHULENGQUE		
    
	elseif(gm_str == '@瞎走' or gm_str=='@RandomMove')then
		return GM_COMMAND_XIAZOU	
		
	elseif(gm_str == '@自爆' or gm_str == '@suicide')then
		return GM_COMMAND_SUICIDE
	elseif(gm_str == '@服务器' or gm_str == '@server')then
		return GM_COMMAND_SERVER_INFO
	elseif(gm_str == '@硬盘' or gm_str == '@hdd')then
		return GM_COMMAND_HDD
	elseif(gm_str == '@数据库' or gm_str == '@db')then
		return GM_COMMAND_DB
	elseif(gm_str == '@开服时间' or gm_str == '@kfsj')then
		return GM_COMMAND_KAIFUSHIJIAN
	elseif(gm_str == '@修正数据' or gm_str == '@xzsj')then
		return GM_COMMAND_XIUZHENGSHUJU
	elseif(gm_str == '@测试数据' or gm_str == '@cssj')then
		return GM_COMMAND_TEST_SHUJU
	elseif(gm_str == '@狩猎开始' or gm_str == '@slks')then
		return GM_COMMAND_SHOULIE_START
	end
	return gm_key
end

