--------------------------------------------------------------------------------------------------------------------------
--------------------------------------------以下代码为自动生成，请勿手工改动----------------------------------------------
--------------------------------------------------------------------------------------------------------------------------
-- 操作类型
OPRATE_TYPE_LOGIN = 1	-- 登录
OPRATE_TYPE_KICKING = 2	-- 踢人
OPRATE_TYPE_JUMP = 3	-- 跳
OPRATE_TYPE_ATTK_LOSE = 4	-- 攻击失败
OPRATE_TYPE_SPELL_LOSE = 5	-- 技能释放失败
OPRATE_TYPE_INTERACTION = 6	-- 交互,如使用GAMEOBJ 与NPC对话，交接任务等
OPRATE_TYPE_USE_GAMEOBJECT = 7	-- 使用游戏对象
OPRATE_TYPE_GROUP = 8	-- 队伍
OPRATE_TYPE_CORPS = 9	-- 军团
OPRATE_TYPE_BAG = 10	-- 包裹
OPRATE_TYPE_ITEM_STRENG = 11	-- 强化
OPRATE_TYPE_TRADE = 12	-- 交易
OPRATE_TYPE_STALL = 13	-- 摊位系统
OPRATE_TYPE_MOUNT_OPERATE = 14	-- 坐骑操作
OPRATE_TYPE_FRIEND = 15	-- 好友系统
OPRATE_TYPE_CHAT = 16	-- 聊天
OPRATE_TYPE_JSHY = 17	-- 绝世红颜
OPERTE_TYPE_RECEIVE_GIFT_PACKS = 18	-- 领取补偿礼包
OPERTE_TYPE_PIFENG = 19	-- 披风系统
OPERTE_TYPE_BINGSHU = 20	-- 兵书系统
OPERTE_TYPE_FORGE_GEM = 21	-- 宝石系统
OPERTE_TYPE_MARRY = 22	-- 结婚系统
OPERTE_TYPE_BINGFU = 23	-- 兵符系统
OPERTE_TYPE_JUJU = 24	-- 护符系统
OPERTE_TYPE_QUEST = 25	-- 任务
OPERTE_TYPE_BINGYING = 26	-- 武将
OPERTE_TYPE_NPCBUY = 27	-- 购买商品
OPERTE_TYPE_TTXT = 28	-- 偷桃系统
OPERTE_TYPE_EXCHANGE_SHOP = 29	-- 无双战场相关
OPERTE_TYPE_BFTX = 30	-- 兵分天下
OPERTE_TYPE_FUBEN = 31	-- 副本
OPERTE_TYPE_BOSS_WABAO = 32	-- boss挖宝
OPERTE_TYPE_ZHANBU = 33	-- 占卜
OPERTE_TYPE_GUANZHU = 34	-- 关注
OPERTE_TYPE_ITEM_BLEND = 35	-- 装备合成
OPERTE_TYPE_MONEY_TREE = 36	-- 摇钱树领取
OPERTE_TYPE_SPORTS = 37	-- 竞技场
OPERTE_TYPE_RECRUIT_GENERALS = 38	-- 武将
OPERTE_TYPE_WATER_MELON = 39	-- 种瓜系统
OPERTE_TYPE_TELEPORT = 40	-- 传送
OPERTE_TYPE_JIUGUAN = 41	-- 酒馆
OPERTE_TYPE_WUJIANG_EQUIP = 42	-- 武将装备
OPERTE_TYPE_WUJIANG_SYS = 43	-- 武将系统
OPERTE_TYPE_WUSHE_SYS = 44	-- 屋舍系统
OPERTE_TYPE_KUAFU = 45	-- 跨服
OPERTE_TYPE_KAIGUANG = 46	-- 开光
OPERTE_TYPE_QILONGZHU = 47	-- 七龙珠
OPERTE_TYPE_MYHOUSE = 48	-- 我的屋舍
OPERTE_TYPE_RANK_LIST = 49	-- 排行榜
OPERTE_TYPE_BAGUAZHEN = 50	-- 八卦阵
OPERTE_TYPE_SLGJJC = 51	-- slg竞技场
OPERTE_TYPE_SLG_INSTANCE = 52	-- SLG打天下
OPERTE_TYPE_ZGJNC = 53	-- 战国技能策
OPERTE_TYPE_FISHING = 54	-- 钓鱼
OPERTE_TYPE_SHANZHAI = 55	-- 山寨
OPERTE_TYPE_PETS = 56	-- 机关兽
OPERTE_TYPE_HOSTING = 57	-- 托管
OPERTE_TYPE_BINGHUN = 58	-- 兵魂
OPERTE_TYPE_MINING = 59	-- 矿洞挖矿
OPERTE_TYPE_SHENGWU = 60	-- 圣物
OPERTE_TYPE_XINGKONGTU = 61	-- 星空图
OPERTE_TYPE_SLG_KUAFU_JJC = 62	-- SLG跨服竞技场
OPERTE_TYPE_PUT_DOG = 63	-- 放恶狗
-- 登录相关操作返回
OPRATE_RESULT_SUCCESS = 1	-- 成功
OPRATE_RESULT_NAME_REPEAT = 2	-- 名称重复
OPRATE_RESULT_NAME_ILLEGAL = 3	-- 名称非法
OPRATE_RESULT_CHAR_CAP = 4	-- 角色数量达到上限
OPRATE_RESULT_SCENED_CLOSE = 5	-- 场景服未开启
OPRATE_RESULT_SCENED_ERROR = 6	-- 场景服重置，其实就是崩了一个场景服换一个新的
OPRATE_RESULT_LOGINED_IN = 7	-- 角色已登录
OPRATE_RESULT_OTHER_LOGINED = 8	-- 角色其他地方登录
OPRATE_RESULT_GAME_VERSION_ERROR = 9	-- 游戏版本不对
OPRATE_RESULT_MAP_VERSION_ERROR = 10	-- 地图素材版本不对
OPRATE_RESULT_DATA_VERSION_ERROR = 11	-- data素材版本不对
OPRATE_RESULT_VERSION_FORMAT_ERROR = 12	-- 客户端发来的版本信息格式不对
OPRATE_RESULT_APPD_ERROR = 13	-- 应用服异常重启
OPRATE_RESULT_LOCK_ACCOUNT = 14	-- 帐号被封
OPRATE_RESULT_LOCK_IP = 15	-- IP被封
OPRATE_RESULT_APPD_CLOSE = 16	-- 应用服未开启
OPRATE_RESULT_NAME_TOO_LONG = 17	-- 名字太长
OPRATE_RESULT_NAME_HAS_PINGBI = 18	-- 有屏蔽词
OPRATE_RESULT_LOGOUT_UNFINISHED = 19	-- 该角色上一次的登出未完成，请等待
OPRATE_RESULT_PID_OR_SID_ERROR = 20	-- 服务器id或者平台id错误
OPRATE_RESULT_DB_RESULT_ERROR = 21	-- 数据库查询出问题了
OPRATE_RESULT_MERGE_SERVER = 22	-- 合服了
-- 系统踢人的原因
KICKING_TYPE_GM_LOCK_IP = 0	-- 封IP
KICKING_TYPE_GM_LOCK_ACCOUNT = 1	-- 封号
KICKING_TYPE_GM_KICKING = 2	-- 从GM表中读取的踢人
KICKING_TYPE_KUANGCHANG_RELIVE = 3	-- 荒芜矿场非法复活
KICKING_TYPE_FUCK_PINGBI = 4	-- 聊天点带屏蔽词
KICKING_TYPE_QUEST_GET_ITEM = 5	-- 刷物品
KICKING_TYPE_NOT_MONEY = 6	-- 钱负数还继续消费
-- 跳跃操作返回
JUMP_RESULT_NOMAL = 1	-- 无，默认结果
JUMP_RESULT_DEAD = 2	-- 死了你还跳，果断是诈尸
JUMP_RESULT_ENERGY = 3	-- 体力不足
JUMP_RESULT_MAP_CANT_JUMP = 4	-- 地图无法跳跃
JUMP_RESULT_CANT_JUMP = 5	-- 玩家被限制不能跳跃
JUMP_RESULT_MAX_DISTANCE = 6	-- 超过最大距离
JUMP_RESULT_WRONG_COORD = 7	-- 无效坐标，障碍点之流
JUMP_RESULT_SPELL_CD = 8	-- 跳跃技能cd中
-- 攻击操作返回
ATTACK_LOST_CANTATTACK = 1	-- 被限制不能攻击
ATTACK_LOST_TARGET_DEAD = 2	-- 目标已经死亡
ATTACK_LOST_NEED_TARGET = 3	-- 攻击需要一个目标
ATTACK_LOST_OUT_OF_RANGE = 4	-- 超出攻击范围
ATTACK_LOST_WRONG_TARGET = 5	-- 错误的目标
ATTACK_LOST_MOVING = 6	-- 正在移动状态下不能攻击
-- 技能释放操作返回
LOST_RESON_SPELL_DOENT_EXIST = 1	-- 技能不存在
LOST_RESON_NOT_HAVE_SPELL = 2	-- 你没有这个技能
LOST_RESON_NOT_ENOUGH_CONSUMPTION = 3	-- 能量不足释放这个魔法，MP、HP或者其它
LOST_RESON_SPELL_COOLDOWN = 4	-- 冷却
LOST_RESON_ALREADY_CAST = 5	-- 已经在施法
LOST_RESON_TARGET_DEAD = 6	-- 目标已经死亡
LOST_RESON_NEED_TARGET = 7	-- 此技能需要一个目标
LOST_RESON_OUT_OF_RANGE = 8	-- 超出施法范围
LOST_RESON_WRONG_TARGET = 9	-- 错误的目标，比如有些技能只能对友方用
LOST_RESON_CAN_NOT_CAST = 10	-- 无法施法
LOST_RESON_HAS_CONFLICT_SPELL = 11	-- 有技能冲突
LOST_RESON_NOTHAS_CHUZHAN = 12	-- 当前没有出战兵种
LOST_RESON_WRONG_FACTION = 13	-- 同一阵营不能攻击（争霸天下用）
-- 交互操作返回
INTERACTION_TOO_FAR = 1	-- NPC太远
INTERACTION_BOOK_DAILYNUM_FULL = 2	-- 奇遇日常任务次数已满
INTERACTION_NO_ENOUGH_ENDURANCE = 3	-- 精力值不够
INTERACTION_JHM_ERROR = 4	-- 激活码错误
INTERACTION_WORSHIP = 5	-- 城主膜拜
INTERACTION_JHM_HAVE = 6	-- 激活码奖励已领取
INTERACTION_JHM_IS_USED = 7	-- 激活码已使用
-- 使用游戏对象操作返回
USE_GAMEOBJECT_SUCCEED = 1	-- 使用游戏对象成功
USE_GAMEOBJECT_FAIL = 2	-- 使用游戏对象失败
USE_GAMEOBJECT_QUEST = 3	-- 采集成功
USE_GAMEOBJECT_TOO_FAST = 4	-- 采集速度太快
-- 队伍操作返回
GROUP_RESULT_NOT_GROUP = 1	-- 没有队伍
GROUP_RESULT_NOT_LEADER = 2	-- 不是队长不能邀请组队
GROUP_RESULT_NOT_PLAYER = 3	-- 找不到玩家
GROUP_RESULT_UNFIND_NEW_LEADER = 4	-- 找不到队长
GROUP_RESULT_ADD_OK = 5	-- 成功
GROUP_RESULT_ADD_HAVE_GROUP = 6	-- 已经有队伍
GROUP_RESULT_ADD_GROUP_FULL = 7	-- 队伍已满
GROUP_RESULT_ADD_MEMBER_KICK = 8	-- 队伍踢出成员
GROUP_RESULT_ADD_DISSOLUTION = 9	-- 解散队伍
GROUP_RESULT_ADD_REFUSED = 10	-- 拒绝入队申请
GROUP_RESULT_NAME_TOO_LONG = 11	-- 队伍名，太长
GROUP_RESULT_NAME_NULL = 12	-- 队伍名，为空
GROUP_RESULT_NAME_ILLEGAL = 13	-- 队伍名，有屏蔽词
GROUP_RESULT_NAME_REPEAT = 14	-- 队伍名 重复
GROUP_RESULT_LEVEL_REFUSE = 15	-- 等级限制
GROUP_RESULT_SEND_INVITE_SUCCESS = 16	-- 成功发送邀请
GROUP_RESULT_SEND_INVITE_WAIT = 17	-- 邀请已发送请稍等
GROUP_RESULT_SEND_APPLY_SUCCESS = 18	-- 成功发送组队申请
GROUP_RESULT_ADD_NO_QUEST = 19	-- 未激活队伍系统
GROUP_RESULT_NOT_ONLINE = 20	-- 不在线
-- 军团操作返回
OPRATE_TYPE_CORPS_NAME_REPEAT = 1	-- 创建军团，军团名重复
OPRATE_TYPE_CORPS_LIST_VOID = 2	-- 军团列表为空
OPRATE_TYPE_CORPS_THREE_ARE = 3	-- 玩家已有军团
OPRATE_TYPE_CORPS_REFUSED_JOIN = 4	-- 军团拒绝申请
OPRATE_TYPE_CORPS_NAME_ILLEGAL = 5	-- 创建军团，军团名有屏蔽词
OPRATE_TYPE_CORPS_LEVEL_LACK = 6	-- 创建军团，玩家等级不足
OPRATE_TYPE_CORPS_MONEY = 7	-- 创建军团，货币不足
OPRATE_TYPE_CORPS_CREATE_ERR = 8	-- 创建军团，未知原因
OPRATE_TYPE_CORPS_MAX_QUEST = 9	-- 申请军团超过限制
OPRATE_TYPE_CORPS_PLAYER_MOBAI = 10	-- 玩家膜拜
OPRATE_TYPE_CORPS_NO_QUEST = 11	-- 邀请失败，玩家未激活军团
OPRATE_TYPE_CORPS_MEMBER_MAX_COUNT = 12	-- 军团成员已满
OPRATE_TYPE_CORPS_NO_ONLINE = 13	-- 军团邀请失败，玩家在不线
OPRATE_TYPE_CORPS_IS_QUEST = 14	-- 邀请失败，已经邀请过
OPEATE_TYPE_CORPS_ITEM_ERR = 15	-- 创建军团，物品不足
OPEATE_TYPE_CORPS_CREATE_MAX = 16	-- 创建军团，军团已满
OPRATE_TYPE_CORPS_XIAOHEIWU = 17	-- 被关入小黑屋
OPRATE_TYPE_COPRS_KICK = 18	-- 踢出军团
OPRATE_TYPE_COPRS_LEAVE_TIMES_ERR = 19	-- 离开军团没超过12小时
OPRATE_TYPE_COPRS_MANAGER_NO_ENOUGH = 20	-- 管理员不足，无法踢人
OPRATE_TYPE_COPRS_KICK_REQUEST = 21	-- 发给管理员踢人请求
OPRATE_TYPE_CORPS_KICK_REFUSE = 22	-- 管理员踢人被拒绝
OPRATE_TYPE_CORPS_KICK_SUCCESS = 23	-- 给所有管理员发踢人成功
OPRATE_TYPE_CORPS_KICK_OPT = 24	-- 踢人操作中，无法再踢人
-- 包裹操作返回
BAG_RESULT_NULL = 1	-- 路过的
BAG_RESULT_ITEM_NOT_EXIST = 2	-- 物品不存在
BAG_RESULT_CHANGE_ERROR = 3	-- 交换位置错误
BAG_RESULT_DESTROY_BIND = 4	-- 删除绑定的
BAG_RESULT_ITEM_NOT_SELF = 5	-- 不是自己的物品
BAG_RESULT_REPAIR_FULL = 6	-- 修理耐久已满的物品
BAG_RESULT_BAG_NOT_EXIST = 7	-- 包裹不存在
BAG_RESULT_POS_NOT_EXIST = 8	-- 包裹位置不存在
BAG_RESULT_DESTROY_TOOMUCH = 9	-- 数量不够删
BAG_RESULT_BAN_FOR_TRADE = 10	-- 交易中不允许操作
BAG_RESULT_SPLIT_FAILURE = 11	-- 物品拆分失败
BAG_RESULT_LACK_USER = 12	-- 数量不够删
BAG_RESULT_BAG_FULL = 13	-- 包裹放不下
BAG_RESULT_MAX_COUNT = 14	-- 超过最大拥有数
BAG_RESULT_SELL_BIND = 15	-- 定物品不允许出售
BAG_RESULT_REPAIR_OK = 16	-- 修理成功
BAG_RESULT_REPAIR_MONEY_LACK = 17	-- 钱不够无法修理
BAG_RESULT_EXTENSION_BAG = 18	-- 包裹不支持扩展
BAG_RESULT_EXTENSION_MAX_SIZE = 19	-- 包裹大小已经最大
BAG_RESULT_EXTENSION_MATERIAL_LACK = 20	-- 包裹扩展材料不足
BAG_RESULT_EXTENSION_TRADE = 21	-- 交易中不允许包裹扩展
BAG_RESULT_USE_ITEM_COUNT_MAX = 22	-- 使用物品数量达到上限
BAG_RESULT_NOT_ITEM = 23	-- 没开出物品
BAG_RESULT_ITEM_USEING = 24	-- 物品使用中
BAG_RESULT_GET_ITEMS = 25	-- 获得物品（元宝卡）
BAG_RESULT_USE_ITEMS = 26	-- 使用物品（装备宝箱）
BAG_RESULT_GET_ITEMS_ORANGE = 27	-- 开启橙色装备
BAG_RESULT_USE_ITEMS_GENERALS = 28	-- 使用物品（将魂使用）
BAG_RESULT_GET_ITEMS_CABX = 29	-- 获得 财神宝箱
BAG_RESULT_GET_ITEMS_CABX_BUFF = 30	-- 获得 财神宝箱的buff 提示
BAG_RESULT_ALREADY_KAIGUANG = 31	-- 设备已经开光
BAG_RESULT_EXCHANGE_SUCCESS = 32	-- 穿上装备成功
-- 强化操作返回
ITEM_STRENG_NOT_POS = 1	-- 强化位置不合法
ITEN_STRENG_NOT_PLAYER = 2	-- 玩家不存在
ITEM_STRENG_NOT_STRENG_FAIL = 3	-- 强化数据异常
ITEM_STRENG_MAX_LV = 4	-- 强化最大等级
ITEM_STRENG_LACK_MATERIAL = 5	-- 强化材料不足
ITEM_STRENG_LACK_MONEY = 6	-- 强化金钱不足
ITEM_STRENG_SUCESS = 7	-- 强化成功
ITEM_STRENG_FAILURE = 8	-- 强化失败
ITEM_STRENG_ONEKEY_STRENG = 9	-- 一键强化
-- 交易操作返回
TRADE_RESULT_TYPE_NOT_TARGET = 1	-- 没有交易对象
TRADE_RESULT_TYPE_TRADEING = 2	-- 已经交易中无法继续处理交易申请
TRADE_RESULT_TYPE_NOT_TRADE = 3	-- 非交易进行中无效操作
TRADE_RESULT_TYPE_BAG_SIZE = 4	-- 包裹空间不足交易失败
TRADE_RESULT_TYPE_UNRECOGNISED = 5	-- 未确认交易物品
TRADE_RESULT_TYPE_TARGET_CANCEL = 6	-- 对方交已取消交易
TRADE_RESULT_TYPE_LACK_MONEY = 7	-- 金钱不足
TRADE_RESULT_TYPE_IS_BIND = 8	-- 绑定物品不允许交易
-- 摊位系统
STALL_OPT_BUY_SUCCESS = 1	-- 购买成功
STALL_OPT_NO_ITEM = 2	-- 物品不存在
STALL_OPT_STALL_NOEXIST = 3	-- 玩家摊位不存在
-- 坐骑操作返回
MOUNT_OPERATE_UP_STAR_LEVEL = 1	-- 坐骑升级升星了
MOUNT_OPERATE_UP_LEVEL_FAIL = 2	-- 坐骑升级爆损了
MOUNT_OPERATE_UP_LEVEL_TUJIN = 3	-- 坐骑升级突进了
-- 好友操作返回
FRIEND_OPT_NOPLAYER = 1	-- 玩家不存在
FRIEND_OPT_PLAYERPOS = 2	-- 获取玩家坐标
FRIEND_OPT_LOGINOFF = 3	-- 玩家不在线
FRIEND_OPT_ADDFRIENDSUCCESS = 4	-- 添加好友成功
FRIEND_OPT_RECEIVE_ZHUFU = 5	-- 收到祝福
FRIEND_OPT_PLAYER_UPGRADE = 6	-- 玩家升级
FRIEND_OPT_MOUNT_UPGRADE = 7	-- 坐骑升阶
FRIEND_OPT_PIFENG_UPGRADE = 8	-- 披风升阶
FRIEND_OPT_WIFE_MAN_NO_DEL = 9	-- 是夫妻，不允许删除
FRIEND_OPT_WIFE_MAN_NO_MOV = 10	-- 是夫妻，不允许移动到黑名单
FRIEND_OPT_MARRY_STATE_NO_DEL = 11	-- 求婚中，不能删除该好友
FRIEND_OPT_MARRY_STATE_NO_MOV = 12	-- 求婚中，不允许移动该好友到黑名单
FRIEND_OPT_ZHUISHA_POS = 13	-- 获取追杀玩家坐标
FRIEND_OPT_IN_FUBEN_MAP = 14	-- 追杀玩家在副本中
FRIEND_OPT_KILLER_IS_ONLINE = 15	-- 仇人在线
-- 聊天操作返回
CHAT_RESULT_NOT_PLAYER = 1	-- 找不到玩家
CHAT_RESULT_IS_GAG = 2	-- 被禁言
CHAT_LEVEL_WHISPER_LEVEL_NO = 3	-- 私聊等级不足
CHAT_LEVEL_WORLD_LEVEL_NO = 4	-- 世界聊天等级不足
-- 绝世红颜操作返回
JSHY_MEIREN_RECOVER = 1	-- 绝世红颜回收
-- 领取补偿礼包操作返回
RECEIVE_GIFT_PACKS_NOT_FIND = 1	-- 找不到这条补偿礼包
RECEIVE_GIFT_PACKS_CHAR_ERROR = 2	-- 这礼包不是你的
RECEIVE_GIFT_PACKS_CHAR_CREATE = 3	-- 礼包指定的发放起始时间在你角色创建时间之前
RECEIVE_GIFT_PACKS_RECEIVED = 4	-- 该礼包你已经领取过了
-- 披风系统
PIFENG_LEVEL_LIMIT = 1	-- 披风系统将于30级开启
PIFENG_UPLEVEL_FAIL = 2	-- 披风升级失败
PIFENG_UPLEVEL_SUCCESS = 3	-- 披风升级成功
PIFENG_CHONGZHU_SUCCESS = 4	-- 披风重铸成功
PIFENG_LITTLE_CRIT = 5	-- 失败触发小暴击
PIFENG_BIG_CRIT = 6	-- 失败触发大暴击
PIFENG_ZW_INLAY_FAIL = 7	-- 战纹无法镶嵌
PIFENG_ZW_UPLEVEL_SUCCESS = 8	-- 战纹升级
PIFENG_ZW_INLAY_SUCCESS = 9	-- 镶嵌成功
PIFENG_ZW_DELETE_SUCCESS = 10	-- 销毁成功
PIFENG_ZW_MODEL_FAIL = 11	-- 战纹模版不合法
PIFENG_ZW_INLAY_POS_FAIL = 12	-- 战纹镶嵌位置不合法
PIFENG_ZW_DELETE_FAIL_MODEL = 13	-- 销毁位置没有模版
PIFENG_ZW_DELETE_FAIL_POS = 14	-- 销毁位置不合法
PIFENG_NOT_FIND = 15	-- 披风不存在
PIFENG_ITEM_NOT_ENOUGH = 16	-- 升级材料不足
PIFENG_MONEY_NOT_ENOUGH = 17	-- 自动购买元宝不足
PIFENG_UPLEVEL_RETURN_BAG_FAIL = 18	-- 退还包裹异常
PIFENG_RETURN_HAVE = 19	-- 披风材料已退还
PIFENG_RETURN_NOT_BELSS = 20	-- 退还祝福值为0
PIFENG_RETURN_MONEY_FAIL = 21	-- 退还需要铜钱不足
-- 兵书系统
BINGSHU_TAOLUE_NO = 1	-- 韬略不足，操作失败
BINGSHU_FAIL = 2	-- 本次研习失败，请再接再厉
BINGSHU_IN_YANXI = 3	-- 研习中无法研习
-- 宝石系统
EXCHANGE_ITEM_HECHENG_SUCCESS = 1	-- 宝石合成成功
EXCHANGE_ITEM_FENJIE_SUCCESS = 2	-- 宝石分解成功
EXCHANGE_ITEM_MOSAIC_SUCCESS = 3	-- 宝石镶嵌成功
EXCHANGE_ITEM_DET_GEM_ITEM_FAIL = 4	-- 赌石原石不够
EXCHANGE_ITEM_DET_GEM_SUCCESS = 5	-- 赌石成功
-- 结婚系统
MARRY_DIVORCE = 1	-- YY于2013年7月22日选择终止你们的婚姻
MARRY_PARTNER_NO_INLINE = 2	-- 配偶不在线
DINNER_PARTNER_NO_INLINE = 3	-- 举行婚宴，配偶不在线
DINNER_HAS_HOLD = 4	-- 您或您的配偶今日已经举办过婚宴
DINNER_NOTICE = 5	-- 您的配偶xx举办了xx婚宴，是否立即前往？
DINNER_LIST_VOID = 6	-- start位置找不到婚宴列表了
MARRY_DIVORCE_HOLD_DINNER = 7	-- 举行婚宴中，禁止离婚
DINNER_HOLD_SUCCESS = 8	-- 成功举办婚宴
MARRY_PARTNER_POS = 9	-- 配偶的位置
MARRY_PARTNER_NO_MAP = 10	-- 配偶不在地图1~5
MARRY_CHANGE_RING = 11	-- 通知配偶戒指更换
MARRY_USEFIREWORK_SUCCESS = 12	-- 使用烟花成功
MARRY_USEROSE_SUCCESS = 13	-- 使用玫瑰成功
MARRY_SELF_HAS_MARRY = 14	-- 自己已经结婚
MARRY_SELF_PROPOSE = 15	-- 正在求婚等待对方同意
MARRY_NO_ONLINE = 16	-- 对方不在线
MARRY_NO_SEX = 17	-- 非异性
MARRY_OTHER_HAS_MARRY = 18	-- 对方已经结婚
MARRY_OTHER_PROPOSE = 19	-- 对方正处在被求婚状态
MARRY_PROPOSE_TO_OTHER = 20	-- 对方正在向别人求婚中
MARRY_NO_FRIEND = 21	-- 不是好友
MARRY_NO_ENOUGH_QINMI = 22	-- 亲密对不够
MARRY_NO_RING = 23	-- 没有选中购买的戒指
MARRY_NO_ENOUGH_SILVER = 24	-- 铜钱不够
MARRY_NO_ENOUGH_GOLD = 25	-- 元宝不够
MARRY_HAS_CANCEL_PROPOSE = 26	-- 求婚者已经取消求婚了
MARRY_NO_PROPOSE = 27	-- 他不是发起求婚的人
MARRY_NO_LOVE = 28	-- 你不是人家求婚的对象
MARRY_SONGHUA_SUCCESS = 29	-- 送花成功
MARRY_TIME_OUT = 30	-- 超时拒绝
MARRY_APPLY_SUCCESS = 31	-- 申请结婚成功
MARRY_NO_OTHER_FRIEND = 32	-- 你不是对方的好友
-- 兵符系统
BINGFU_BINGHUN_NO = 1	-- 兵魂不足，操作失败
BINGFU_START_NO = 2	-- 过关斩将获取的星星总数不足
BINGFU_UPLEVEL_FAIL = 3	-- 激活兵符异常
BINGFU_LEVEL_ERROR = 4	-- 兵符等级异常
BINGFU_STRONG_STAR_ERROR = 5	-- 兵符强化位置异常
BINGFU_LOCK_STAR_ERROR = 6	-- 强化退回异常
-- 护符系统
JUJU_LEVEL_MAX = 1	-- 已达到最大等级
JUJU_CAILIAO_NO = 2	-- 材料不足
JUJU_UP_LEVEL_FAIL = 3	-- 升级失败
JUJU_UP_LEVEL_SUCCESS = 4	-- 升级成功
-- 任务相关枚举
INVALIDREASON_DONT_HAVE_REQ = 0
INVALIDREASON_QUEST_FAILED_LOW_LEVEL = 1	--  等级太低 You are not high enough level for that quest.
INVALIDREASON_QUEST_FAILED_WRONG_RACE = 2	--  这个任务对于你的角色类别是无效的 That quest is not available to your race.
INVALIDREASON_QUEST_ALREADY_DONE = 3	--  任务已经完成 You have completed that quest.
INVALIDREASON_QUEST_ONLY_ONE_TIMED = 4	--  任务只能做一次 You can only be on one timed quest at a time.
INVALIDREASON_QUEST_ALREADY_ON = 5	--  已经在任务中 You are already on that quest.
INVALIDREASON_QUEST_FAILED_EXPANSION = 6	--  物品太少 This quest requires an expansion enabled account.
INVALIDREASON_QUEST_ALREADY_ON2 = 7	--  已经在任务中 ? You are already on that quest.
INVALIDREASON_QUEST_FAILED_MISSING_ITEMS = 8	--  没有完成任务需要的物品 You don't have the required items with you. Check storage.
INVALIDREASON_QUEST_FAILED_NOT_ENOUGH_MONEY = 9	--  没有足够的金钱完成任务 You don't have enough money for that quest.
INVALIDREASON_DAILY_QUESTS_REMAINING = 10	--  你已经完成了每天的25个任务 You have already completed 25 daily quests today.
INVALIDREASON_QUEST_FAILED_CAIS = 11	--  有疲劳时间无法完成任务 You cannot complete quests once you have reached tired time.
INVALIDREASON_DAILY_QUEST_COMPLETED_TODAY = 12	--  已经完成当天的任务 You have completed that daily quest today.
INVALIDREASON_QUEST_FINISH_ALL_RIHUAN = 13	-- 完成所有日环任务了
-- 武将系统
BINGYING_UPLEVEL_ITEM_NOT_ENOUGH = 0	-- 武将天赋提升的时候物品不够
BINGYING_UPLEVEL_DELETE_ITEM_FAIL = 1	-- 武将天赋提升的时候删除物品失败
BINGYING_UPLEVEL_CRIT_TIMES = 2	-- 武将天赋升级出现暴击
-- 购买商品
NPC_BUY_ITEM_NO_EXIST = 0	-- 物品不存在
NPC_BUY_ITEM_UNDER = 1	-- 下架的物品
NPC_BUY_ITEM_NO_OPEN = 2	-- 商品还未到开放时间
NPC_BUY_ITEM_OUT_TIME = 3	-- 商品已过期
NPC_BUY_BAG_OUT_SIZE = 4	-- 包裹放不下了
NPC_BUY_MONEY_NO_ENOUGH = 5	-- 钱不够了
NPC_BUY_MONEY_TRANSFINITE = 6	-- 购买金额过大
-- 牛叉操作类型
NIUX_OPRATE_TYPE_CITY = 1	-- 官府
NIUX_OPRATE_TYPE_CARD = 2	-- 卡牌
-- 牛叉卡牌相关操作返回
OPRATE_RESULT_NO_MAIN_CARD = 1	-- 请放入要升级的武将卡
OPRATE_RESULT_NO_CARD = 2	-- 请放入材料卡后升级
OPRATE_RESULT_NO_COIN = 3	-- 铜钱不足
-- 偷桃系统相关操作返回
TTXT_GET_TAOZI_INDEX = 0	-- 下发获得偷桃桃子序号
TTXT_NOT_MONEY_WAND = 1	-- 偷桃令和元宝不足
TTXT_NOT_CAN_LEVEL = 2	-- 兑换装备等级不对
TTXT_NOT_CAN_YUNTIE = 3	-- 兑换装备陨铁不足
TTXT_NOT_FIND_ITEM = 4	-- 熔炼装备找不到
TTXT_NOT_CAN_ITEM = 5	-- 熔炼装备不符合条件
TTXT_NOT_SMEIT_SUCCESS = 6	-- 熔炼成功
-- 无双积分兑换道具商店
EXCHANGE_SHOP_WSJF_LACK = 0	-- 无双积分不足
EXCHANGE_SHOP_DAILY_COUNT_LACK = 1	-- 今日兑换次数不足
EXCHANGE_SHOP_RESERVE = 2	-- 无双战场提示：已经退出了，不能再进去了
EXCHANGE_SHOP_JJC_LACK = 3	-- 竞技场荣誉不足
-- 兵分天下
BFTX_NOT_BELONG = 0	-- 旗子无归属
BFTX_HAVE_BELONG = 1	-- 旗子有归属
-- 副本
FUBEN_OPRATE_NO_GROUP_STATE = 0	-- 玩家不在组队状态
FUBEN_OPRATE_NOT_TWO_PEOPLE = 1	-- 队伍不是2个人
FUBEN_OPRATE_NO_ENERGY = 2	-- 体力不足
FUBEN_OPRATE_NO_MONEY = 3	-- 元宝不足
FUBEN_OPRATE_TEAM_NO_LEVEL = 4	-- 队友等级不足
FUBEN_OPRATE_TEAM_NO_ENERGY = 5	-- 队友体力不足
FUBEN_OPRATE_NO_GROUP = 6	-- 队伍已经解散
FUBEN_OPRATE_SEND_TEAM_FRIEND = 7	-- 邀请队友进入组队副本
FUBEN_OPRATE_TEAM_REFUSE_ENETR = 8	-- 队友拒绝进入组队副本
FUBEN_OPRATE_TEAM_ON_FUBEN_MAP = 9	-- 队友在副本地图中
FUBEN_OPRATE_TEAM_HAVE_FLAGS = 10	-- 队友已经发起邀请了
FUBEN_OPRATE_REFRESH_BOSS = 11	-- 副本刷出boss
-- boss挖宝
BOSS_WABAO_TOO_FAR = 0	-- 距离太远
-- 占卜
ZHANBU_NOT_MONEY = 0	-- 所需元宝不足
ZHANBU_SUCCESS = 1	-- 添加成功
ZHANBU_RESERVE = 2	-- 预留
-- 关注
GUANZHU_SUCCESS = 0	-- 关注成功
-- 装备合成
ITEM_BLEND_SUCCESS = 0	-- 装备合成成功
ITEM_BLEND_FAIL = 1	-- 装备合成失败
-- 摇钱树
MONEY_TREE_SUCCESS = 0	-- 摇钱树领取成功
-- 竞技场
SPORTS_OPRATE_LEVEL_FAIL = 0	-- 等级不足
SPORTS_OPRATE_IN_MAP = 1	-- 地图中无法挑战
SPORTS_OPRATE_TOP_ERROR = 2	-- 挑战名次错误
SPORTS_OPRATE_TARGET_SELF = 3	-- 无法挑战自己
SPORTS_OPRATE_TARGET_ERROR = 4	-- 挑战名次GUID不对应
SPORTS_OPRATE_COUNT_EMPTY = 5	-- 挑战次数不足
SPORTS_OPRATE_CD_FULL = 6	-- 挑战CD满
SPORTS_OPEATE_GUWU_FAIL = 7	-- 鼓舞失败
-- 武将
RECRUIT_GENERALS_SUCCESS = 0	-- 招募成功
SWALLOW_GENERALS_OVER_LEVEL = 1	-- 吞食武将超过玩家等级，吞食失败
RECRUIT_GENERALS_MONEY_LACK = 2	-- 招募武将，钱不足
SWALLOW_GENERALS_SUCCESS = 3	-- 吞食武将成功
OPERATE_GENERALS_ENTRY_REPEAT = 4	-- 该武将模版已存在，不能出战
RECRUIT_GENERALS_FULL = 5	-- 招募武将已满
-- 种瓜系统
WATER_MELON_RP_BREAK = 0	-- 人品爆发
WATER_MELON_ZA_SUCCESS = 1	-- 砸瓜成功
-- 传送
TELEPORT_OPRATE_CSBX_BUFF1 = 0	-- 您拥有财神宝箱，无法进入副本
TELEPORT_OPRATE_CSBX_BUFF2 = 1	-- 您拥有财神宝箱，无法进入主城
TELEPORT_OPRATE_CSBX_BUFF3 = 2	-- 您拥有财神宝箱，无法进行传送
TELEPORT_OPRATE_SPOUSE_IN_FUBEN_MAP = 3	-- 配偶在副本中
TELEPORT_OPRATE_SPOUSE_LOGINOFF = 4	-- 配偶不在线
TELEPORT_OPRATE_SPOUSE_NOPLAYER = 5	-- 配偶不存在
-- 酒馆系统
JIUGUAN_SILVER_NO_ENOUGH = 0	-- 酒馆抽取铜钱不足
JIUGUAN_GOLD_NO_ENOUGH = 1	-- 酒馆抽取元宝不足
JIUGUAN_GET_SUCCESS = 2	-- 抽取成功
-- 武将装备系统
WUJIANG_EQUIP_ENHENCE_SUCCESS = 0	-- 武将装备强化成功
WUJIANG_EQUIP_ENHENCE_FAIL = 1	-- 武将装备强化失败
WUJIANG_EQUIP_ENHENCE_LEVEL_LIMIT = 2	-- 武将装备强化等级超过限制
WUJIANG_EQUIP_ENHENCE_SILVER_NO_ENOUGH = 3	-- 武将装备强化铜钱不足
WUJIANG_EQUIP_ENHENCE_BAOJI = 4	-- 武将装备强化出现暴击
WUJIANG_EQUIP_SELL_FAIL = 5	-- 武将装备出售失败（请先卸下）
WUJIANG_EQUIP_ENHENCE_CAILIAO_NO_ENOUGH = 6	-- 武将装备强化材料不足(还需消耗相同装备)
WUJIANG_EQUIP_SELL_SUCCESS = 7	-- 武将装备出售成功
WUJIANG_EQUIP_XILIAN_CANNOTFIND = 8	-- 装备洗练 找不到这个武将装备
WUJIANG_EQUIP_XILIAN_CAILIAO_NOTENOUGH = 9	-- 装备洗练 熔炉石不足
WUJIANG_EQUIP_XILIAN_YUANBAO_NOTENOUGH = 10	-- 装备洗练 购买熔炉石元宝不足
WUJIANG_EQUIP_XILIAN_SUCCESS = 11	-- 装备洗练 成功
-- 武将系统
WUJIANG_SYS_CANNT_FIND_WUJIANG = 0	-- 找不到指定武将
WUJIANG_SYS_WUJIANG_SLOT_NO_ENOUGH = 1	-- 武将槽不够放
WUJIANG_SYS_WUJIANG_CONFIG_ERROR = 2	-- 武将相关配置表错误
WUJIANG_SYS_WUJIANG_MAX_LEVEL = 3	-- 武将已达到最大等级的最大经验
WUJIANG_SYS_WUJIANG_SHANGZHEN_FAIL = 4	-- 武将上阵失败
WUJIANG_SYS_WUJIANG_FENJIE_FAIL = 5	-- 武将分解失败
WUJIANG_SYS_WUJIANG_FLLOW_FAIL = 6	-- 武将跟随失败
WUJIANG_SYS_CANNT_FIND_JIANGHUN = 7	-- 找不到指定将魂
WUJIANG_SYS_WUJIANG_MAX_JIESHU = 8	-- 武将已达到最大阶数
WUJIANG_SYS_SILVER_NO_ENOUGH = 9	-- 武将升阶铜钱不足
WUJIANG_SYS_JIANGHUN_NO_ENOUGH = 10	-- 将魂数量不足
WUJIANG_SYS_SHENGJIE_SUCCESS = 11	-- 武将升阶成功
WUJIANG_SYS_ADD_WUJIANG_FAIL = 12	-- 添加武将失败(武将已存在)
WUJIANG_SYS_CANNT_EQUIP = 13	-- 找不到指定装备
WUJIANG_SYS_ZHUSHOU_FAIL = 14	-- 驻守武将失败
WUJIANG_SYS_HECHENG_SUCCESS = 15	-- 将魂合成成功
WUJIANG_SYS_TUNSHI_FAIL = 16	-- 武将吞食失败(武将槽武将/武将卡/将魂未找到)
WUJIANG_SYS_TUNSHI_SUCCESS = 17	-- 武将吞食成功
WUJIANG_SYS_ZHUSHOU_SUCCESS = 18	-- 驻守武将成功
WUJIANG_SYS_ZHENFA_HAS_ACTIVATED = 19	-- 该阵法已激活过
WUJIANG_SYS_CONSUM_NO_ENOUGH = 20	-- 阵法激活材料不足
WUJIANG_SYS_ZHENFA_ACTIVATE_SUCCESS = 21	-- 阵法激活成功
WUJIANG_SYS_ZHENFA_NO_ACTIVATE = 22	-- 该阵法未激活
WUJIANG_SYS_ZHENFA_CHANGE_SUCCESS = 23	-- 阵法更换成功
WUJIANG_SYS_TOTAL_FORCE_LIMIT = 24	-- 武将总战斗力超过了玩家战斗力
WUJIANG_SYS_SHANGZHEN_SUCCESS = 25	-- 武将上阵成功
WUJIANG_SYS_XIAZHEN_SUCCESS = 26	-- 武将下阵成功
WUJIANG_SYS_DRAG_SUCCESS = 27	-- 武将布阵成功
WUJIANG_SYS_XILIAN_LACK_CAILIAO = 28	-- 武将洗练天命符不足
WUJIANG_SYS_XILIAN_ATTR_ERROR = 29	-- 武将洗练没有可以减值的属性 就是没有可以洗练的属性了
WUJIANG_SYS_XILIAN_SUCCESS = 30	-- 武将洗练成功
WUJIANG_SYS_XILIAN_NOT_XILIAN = 31	-- 武将洗练后操作 还没有洗练不能做确定或者取消操作
WUJIANG_SYS_XILIAN_AFTER_RESULT = 32	-- 武将洗练后操作成功
-- 屋舍系统
WUSHE_SYS_PLAYER_FIGHTING_NOW = 0	-- 玩家当前正在攻打中
WUSHE_SYS_WUSHE_BE_FIGHTING = 1	-- 屋舍正处于被攻打中
WUSHE_SYS_JUNLING_NO_ENOUGH = 2	-- 玩家军令不足
WUSHE_SYS_THE_OWNER_IS_YOU = 3	-- 该屋舍的主人就是你自己啊
WUSHE_SYS_HASNT_SZ_WUJIANG = 4	-- 没有上阵武将
WUSHE_SYS_OWNER_IS_HERE = 5	-- 屋舍主人在这里，需先将其打败
WUSHE_SYS_SLG_FIGHT_WIN = 6	-- SLG战斗胜利
WUSHE_SYS_SLG_FIGHT_LOSE = 7	-- SLG战斗失败
WUSHE_SYS_VIP_LEVEL_NO_ENOUGH = 8	-- 屋舍一键收益VIP等级不足
WUSHE_SYS_NO_PRODUCTION = 9	-- 当前没有任何收益
-- 跨服
KUAFU_OPERATE_CONN_DISCONN = 0	-- 游戏服与世界服的链接断开了
KUAFU_OPERATE_HASNOT_REGISTER = 1	-- 本服还没有向世界服注册成功
KUAFU_OPERATE_HAS_SIGN_KUAFU = 2	-- 玩家已经报名了跨服战，不可重复报名
KUAFU_OPERATE_ZBTX_NOT_VIP4 = 3	-- 争霸天下报名需要vip4以上
KUAFU_OPERATE_ZBTX_QIZI_WINDOWS = 4	-- 旗子第一次被打后的错误提示，用于客户端弹框提示
KUAFU_OPERATE_ZBTX_HAS_OTHER_FACTION_PLAYER = 5	-- 城内存在其他阵营的玩家
KUAFU_OPERATE_ZBTX_CAIJI_WINDOWS = 6	-- 宝物被采集时给本阵营玩家的提示，用于弹框
KUAFU_OPERATE_ZBTX_CYJ_WINDOWS = 7	-- 使用穿云箭，给本阵营的玩家弹框
KUAFU_OPERATE_ZBTX_BOSS_KILL_TIP = 8	-- boss被杀后提示阵营玩家	
KUAFU_OPERATE_ZBTX_COMMIT_NO_BAOWU = 9	-- 玩家提交宝物的时候身上没有宝物
KUAFU_OPERATE_ZBTX_BEKILLED_LOSE_BAOWU = 10	-- 在争霸天下玩家被杀后提示玩家宝物被击落	
KUAFU_OPERATE_ZBTX_CAIJI_TIMEOUT = 11	-- 非踩宝时间
KUAFU_OPERATE_1V1_RANK = 12	-- 用于下发玩家1v1排行
KUAFU_OPERATE_CANNOT_CHANGE_MAP = 13	-- 跨服战过程中限制玩家传送至屋舍
-- 装备开光
KAIGUANG_NOT_MONEY = 0	-- 开光元宝不足
KAIGUANG_SUCCEED = 1	-- 开光成功
-- 七龙珠
QILONGZHU_OPERATE_OWNER = 0	-- 七龙珠拥有者
-- 我的屋舍
MYHOUSE_CONSUM_NO_ENOUGH = 0	-- 屋舍升级材料不足
MYHOUSE_MAX_LEVEL_LIMIT = 1	-- 屋舍已达到最高等级
MYHOUSE_WABAO_IS_NOT_END = 2	-- 挖宝还未结束
MYHOUSE_WABAO_AWARD_FAIL = 3	-- 未开始挖宝或者挖宝还没结束
MYHOUSE_AWARD_TIME_IS_NOT_END = 4	-- 屋舍收益时间未到
MYHOUSE_AWARD_NOTHING = 5	-- 当前没有任何收益可以领取
MYHOUSE_WABAO_AWARD_SUCCESS = 6	-- 挖宝领取奖励成功
MYHOUSE_WUSHE_AWARD_SUCCESS = 7	-- 屋舍领取收益成功
-- 排行榜
RANK_LIST_OPERATE_SUCCEED = 0	-- 成功
RANK_LIST_OPERATE_TYPE_ERROR = 1	-- 查询类型错误
RANK_LIST_OPERATE_OUT_OF_RANGE = 2	-- 查询范围超出界限
-- 八卦阵
BAGUAZHEN_OPERATE_MEX_LEVEL = 0	-- 满级无法升级
BAGUAZHEN_OPERATE_MONEY_NOT_ENOUGH = 1	-- 金钱不足
BAGUAZHEN_OPERATE_MATERIAL_NOT_ENOUGH = 2	-- 材料不足
BAGUAZHEN_OPERATE_ERROR = 3	-- 异常操作
BAGUAZHEN_OPERATE_GIVING_ITEM_ERROR = 4	-- 物品配置不合法
-- slg竞技场
SLGJJC_OPERATE_INGOT_NOT_ENOUGH = 0	-- slg竞技场清除冷却或者购买次数元宝不足
SLGJJC_OPERATE_NOT_IN_COOLING = 1	-- slg竞技场不在冷却时间中
SLGJJC_OPERATE_CLREAR_CD = 2	-- slg竞技场清除冷却成功
SLGJJC_OPERATE_BUY_TIMES = 3	-- slg竞技场购买次数成功
SLGJJC_OPERATE_REWARD_NORANK = 4	-- slg竞技场半小时积分收益—玩家没有排行
SLGJJC_OPERATE_REWARD_NOTIME = 5	-- slg竞技场半小时积分收益—没有到领取时间
SLGJJC_OPERATE_REWARD_SUCCESS = 6	-- slg竞技场半小时积分收益—领取成功
SLGJJC_OPERATE_CHALLENGE_DATA_ERROR = 7	-- slg竞技场挑战，挑战排名异常
SLGJJC_OPERATE_CHALLENGE_TARGET_ERROR = 8	-- slg竞技场挑战，挑战排名异常
SLGJJC_OPERATE_CHALLENGE_IN_COOLING = 9	-- slg竞技场冷却时间中
SLGJJC_OPERATE_CHALLENGE_SELF = 10	-- slg竞技场挑战自己
SLGJJC_OPERATE_CHALLENGE_RESULT = 11	-- slg竞技场挑战结果
SLGJJC_OPERATE_EXCHANGE_ITEM_ERROR = 12	-- 积分兑换-商店不存在此物品
SLGJJC_OPERATE_EXCHANGE_LACKJIFEN = 13	-- 积分兑换-积分不足
SLGJJC_OPERATE_EXCHANGE_SUCCESS = 14	-- 积分兑换-成功
OPRATE_RESULT_SLG_INSTANCE_MAPID_MAX_COUNT = 0	-- 已达到每日闯关次数上限
OPRATE_RESULT_SLG_INSTANCE_NOT_TOKEN = 1	-- 军令不够
OPRATE_RESULT_SLG_INSTANCE_TENTIMES_REWARD = 2	-- 十连闯奖励下发
OPRATE_RESULT_SLG_INSTANCE_CHAPTER_REWARD_ALREADY_GET = 3	-- 章节奖励已经领过了
OPRATE_RESULT_SLG_INSTANCE_CHAPTER_REWARD_SUCC = 4	-- 章节满星奖励下发
OPRATE_RESULT_SLG_INSTANCE_CITY_REWARD = 5	-- 通关奖励下发
-- 战国技能策
ZGJNC_OPRATE_TUPO_FAIL = 0	-- 战国技能策突破失败
ZGJNC_OPRATE_TUPO_SUCCESS = 1	-- 战国技能策突破成功
ZGJNC_OPRATE_LINGWU_SUCCESS = 2	-- 战国技能策领悟成功
-- 钓鱼
FISHING_OPRATE_CONFIG_ERROR = 0	-- 钓鱼配置异常
FISHING_OPRATE_ITEM_NOT = 1	-- 材料不足
FISHING_OPRATE_MONEY_NOT = 2	-- 金钱不足
FISHING_OPRATE_SUCCESS = 3	-- 钓鱼成功
-- 山寨
SHANZHAI_OPRATE_ATTACK_SELF = 0	-- 攻击自己
SHANZHAI_OPRATE_ATTACK_IN_PROTECTION = 1	-- 在保护时间内
SHANZHAI_OPRATE_ATTACK_RESULT = 2	-- 攻击山寨结果
SHANZHAI_OPRATE_BAG_MONEY_CANOT_SELL = 3	-- 货币不能卖
SHANZHAI_OPRATE_BAG_SELL_SUCCESS = 4	-- 出售成功
SHANZHAI_OPRATE_BAG_PUTINTOBAG_SUCCESS = 5	-- 放入背包成功
SHANZHAI_OPRATE_ATTACK_LACKTOKEN = 6	-- 攻击军令不足
-- 机关兽
PETS_OPERTE_NAME_TOO_LONG = 0	-- 名字太长了
PETS_OPERTE_NAME_NULL = 1	-- 名字是空的
PETS_OPERTE_NAME_ILLEGAL = 2	-- 名字是空的
PETS_OPERTE_NAME_REPEAT = 3	-- 名字重复了
PETS_OPERTE_INDEX_ERROR = 4	-- 索引传错了
PETS_OPERTE_INDEX_DELETE_SUCCESS = 5	-- 拆解成功
PETS_OPERTE_INDEX_XILIAN_SUCCESS = 6	-- 洗练成功
PETS_OPERTE_INDEX_MONEY_RECOVER_SUCCESS = 7	-- 元宝恢复成功
PETS_OPERTE_INDEX_MAKE_SUCCESS = 8	-- 制造成功
PETS_OPERTE_UNIT_HP_NOT_ENOUGH = 9	-- 生命恢复药品不足
PETS_OPERTE_UNIT_MP_NOT_ENOUGH = 10	-- 生命恢复药品不足
-- 托管
HOSTING_OPERTE_IS_SELF = 0	-- 无法对自己操作
HOSTING_OPERTE_LEVEL_NOT = 1	-- 等级不足
HOSTING_OPERTE_IS_HOSTING = 2	-- 托管中
HOSTING_OPERTE_IS_HOSTING_APPLY = 3	-- 托管申请
HOSTING_OPERTE_FRIEND_NOT = 4	-- 好友不存在
HOSTING_OPERTE_HAS_NOT_24H = 5	-- 还没到24小时
HOSTING_OPERTE_FRIEND_OUTLINE = 6	-- 好友不在线
HOSTING_OPERTE_FRIEND_ERR = 7	-- 托管好友错误
HOSTING_OPERTE_NOT_HOSTING = 8	-- 不在托管中
HOSTING_OPERTE_FRIEND_ONLINE = 9	-- 好友在线
HOSTING_OPERTE_LOGIN_HOSTING = 10	-- 托管登录中
HOSTING_OPERTE_FRIEND_APPLY = 11	-- 申请发送
HOSTING_OPERTE_LOGIN = 12	-- 登录
HOSTING_OPERTE_SUCCESS = 13	-- 托管申请成功
HOSTING_OPERTE_CANCEL = 14	-- 取消托管
HOSTING_OPERTE_REFUSED = 15	-- 拒绝托管
HOSTING_OPERTE_NOT_DUE_TO = 16	-- 托管未到期
HOSTING_OPERTE_FRIEND_HOSTING_LOGIN = 17	-- 对方托管登录中，无法操作
HOSTING_OPERTE_FRIEND_NOT_HAS_YOU = 18	-- 对方好友列表没有你
-- 兵魂
BINGHUN_OPERTE_TYPE_ERR = 0	-- 操作类型错误
BINGHUN_OPERTE_IS_JIHUO = 1	-- 已经激活
BINGHUN_OPERTE_CONDITIONS_ERR = 2	-- 条件不满足
-- 矿洞挖矿
MINING_OPRATE_CONFIG_ERROR = 0	-- 挖矿配置异常
MINING_OPRATE_ITEM_NOT = 1	-- 材料不足
MINING_OPRATE_MONEY_NOT = 2	-- 金钱不足
MINING_OPRATE_SUCCESS = 3	-- 挖矿成功
-- 圣物
SHENGWU_OPERTE_TYPE_ERR = 0	-- 操作类型错误
SHENGWU_OPERTE_ITEM_ERR = 1	-- 条件不满足
SHENGWU_OPERTE_MAX_LEVEL = 2	-- 已满级
-- 星空图
XINGKONGTU_OPERTE_TYPE_TIMES_NOT = 0	-- 观星次数不足
XINGKONGTU_OPERTE_ITEM_NOT = 1	-- 物品不足
XINGKONGTU_OPERTE_MONEY_NOT = 2	-- 金钱不足
XINGKONGTU_OPERTE_CONFIG_ERR = 3	-- 配置表异常
XINGKONGTU_OPERTE_LINE = 4	-- 下发路线
XINGKONGTU_OPERTE_MONEY_AWARD = 5	-- 上次奖励没领取		
-- slg跨服竞技场
SLG_KUAFU_JJC_INGOT_NOT_ENOUGH = 0	-- slg跨服竞技场清除冷却或者购买次数元宝不足
SLG_KUAFU_JJC_NOT_IN_COOLING = 1	-- slg跨服竞技场不在冷却时间中
SLG_KUAFU_JJC_CLREAR_CD = 2	-- slg跨服竞技场清除冷却成功
SLG_KUAFU_JJC_BUY_TIMES = 3	-- slg跨服竞技场购买次数成功
SLG_KUAFU_JJC_REWARD_NORANK = 4	-- slg跨服竞技场半小时积分收益—玩家没有排行
SLG_KUAFU_JJC_REWARD_NOTIME = 5	-- slg跨服竞技场半小时积分收益—没有到领取时间
SLG_KUAFU_JJC_REWARD_SUCCESS = 6	-- slg跨服竞技场半小时积分收益—领取成功
SLG_KUAFU_JJC_CHALLENGE_DATA_ERROR = 7	-- slg跨服竞技场挑战，挑战排名异常
SLG_KUAFU_JJC_CHALLENGE_TARGET_ERROR = 8	-- slg跨服竞技场挑战，挑战排名异常
SLG_KUAFU_JJC_CHALLENGE_IN_COOLING = 9	-- slg跨服竞技场冷却时间中
SLG_KUAFU_JJC_CHALLENGE_SELF = 10	-- slg跨服竞技场挑战自己
SLG_KUAFU_JJC_CHALLENGE_RESULT = 11	-- slg跨服竞技场挑战结果
SLG_KUAFU_JJC_EXCHANGE_ITEM_ERROR = 12	-- 跨服积分兑换-商店不存在此物品
SLG_KUAFU_JJC_EXCHANGE_LACKJIFEN = 13	-- 跨服积分兑换-积分不足
SLG_KUAFU_JJC_EXCHANGE_SUCCESS = 14	-- 跨服积分兑换-成功
-- 放恶狗
PUT_DOG_OPRATE_PLAYER_IN_FUBEN_MAP = 0	-- 玩家在活动地图中
PUT_DOG_OPRATE_PLAYER_LOGINOFF = 1	-- 玩家不在线
PUT_DOG_OPRATE_PLAYER_NOPLAYER = 2	-- 玩家不存在
PUT_DOG_OPRATE_PLAYER_HAS_BUFF = 3	-- 玩家有打狗棒buff
-- _OPRATE_RESULT_H
