﻿local S, C, L, DB = unpack(select(2, ...))

if GetLocale() ~= "zhCN" then  return end
-- 控制台
--标语
L["恢复默认标语"] = "|cffDDA0DDSun|r|cff44CCFFUI|r\n|cffFF0000确认恢复默认设置|r\n"
L["欢迎标语"] = "欢迎使用|cffDDA0DDSun|r|cff44CCFFUI|r\n\n请点击确定按钮加载默认配置\n"
L["警告"] = "|cffFFD700开启此功能会导致战斗中内存暴涨,请量力开启.|r"
--总
L["恢复默认设置"] = "恢复默认设置"
L["解锁框体"] = "解锁框体"
L["锁定框体"] = "锁定框体"
L["应用(重载界面)"] = "应用(重载界面)"
-- 动作条
L["动作条"] = "动作条"
L["请选择主动作条布局"] = "请选择主动作条布局"
L["bar1布局"] = "bar1布局"
L["bar2布局"] = "bar2布局"
L["bar3布局"] = "bar3布局"
L["bar4布局"] = "bar4布局"
L["bar5布局"] = "bar5布局"
L["12x1布局"] = "12x1布局"
L["6x2布局"] = "6x2布局"
L["4方块布局"] = "4方块布局"
L["不要4方块布局"] = "不要4方块布局"
L["动作条皮肤风格"] = "动作条皮肤风格"
L["请选择动作条皮肤风格"] = "请选择动作条皮肤风格"
L["阴影风格"] = "阴影风格"
L["框框风格"] = "框框风格"
L["隐藏快捷键显示"] = "隐藏快捷键显示"
L["隐藏宏名称显示"] = "隐藏宏名称显示"
L["冷却闪光"] = "冷却闪光"
L["动作条按钮大小"] = "动作条按钮大小"
L["动作条间距大小"] = "动作条间距大小"
L["动作条字体大小"] = "动作条字体大小"
L["宏名字字体大小"] = "宏名字字体大小"
L["主动作条缩放大小"] = "主动作条缩放大小"
L["特殊按钮缩放大小"] = "特殊按钮缩放大小"
L["宠物条缩放大小"] = "宠物条缩放大小"
L["姿态栏缩放大小"] = "姿态栏缩放大小"
L["图腾栏缩放大小"] = "图腾栏缩放大小"
--姓名板
L["姓名板"] = "姓名板"
L["姓名板字体大小"] = "姓名板字体大小"
L["姓名板血条高度"] = "姓名板血条高度"
L["姓名板血条宽度"] = "姓名板血条宽度"
L["姓名板施法条图标大小"] = "姓名板施法条图标大小"
L["姓名板施法条高度"] = "姓名板施法条高度"
L["姓名板施法条宽度"] = "姓名板施法条宽度"
L["冷却闪光图标大小"] = "冷却闪光图标大小"
--鼠标提示
L["鼠标提示"] = "鼠标提示"
L["提示框体跟随鼠标"] = "提示框体跟随鼠标"
L["进入战斗自动隐藏"] = "进入战斗自动隐藏"
L["字体大小"] = "字体大小"
L["隐藏头衔"] = "隐藏头衔"
L["主天赋"] = "主天赋:|cffffffff "
L["副天赋"] = "副天赋:|cffffffff "
L["成就点数"] = "|cFFF1C502成就点数:  |cFFFFFFFF"
L["正在查询成就"] = "正在查询成就.."
L["已装备物品等级"] = "已装备物品等级: "
L["释放者"] = "释放者:"
L["法术ID"] = "法术ID"
--增益效果
L["增益效果"] = "增益效果"
L["图标大小"] = "图标大小："
L["BUFF增长方向"] = "BUFF增长方向："
L["从右向左"] = "从右向左"
L["从左向右"] = "从左向右"
L["DEBUFF增长方向"] = "DEBUFF增长方向："
--仇恨监视
L["仇恨监视"] = "仇恨监视"
L["仇恨条宽度"] = "仇恨条宽度："
L["仇恨条姓名长度"] = "仇恨条姓名长度："
L["显示仇恨人数"] = "显示仇恨人数(不包括Tank)："
--reminder
L["缺失提醒"] = "缺失提醒"
L["显示团队增益缺失提醒"] = "显示团队增益缺失提醒"
L["只在队伍中显示"] = "只在队伍中显示"
L["团队增益图标大小"] = "团队增益图标大小："
L["团队增益图标排列方式"] = "团队增益图标排列方式："
L["横排"] = "横排"
L["竖排"] = "竖排"
L["显示职业增益缺失提醒"] = "显示职业增益缺失提醒"
L["开启声音警报"] = "开启声音警报"
L["职业增益图标大小"] = "职业增益图标大小："
L["职业增益图标间距"] = "职业增益图标间距："
--界面皮肤
L["界面皮肤"] = "界面皮肤"
L["启用DBM皮肤"] = "启用DBM皮肤"
--头像
L["头像框体"] = "头像框体"
L["开启boss框体"] = "开启boss框体"
L["血条职业颜色"] = "血条职业颜色"
L["蓝条颜色"] = "蓝条颜色"
L["蓝条职业颜色"] = "蓝条职业颜色"
L["是否开启头像"] = "是否开启头像"
L["是否只显示你释放的debuff"] = "是否只显示你释放的debuff"
L["头像字体大小"] = "头像字体大小："
L["法力条高度"] = "法力条高度："
L["头像缩放大小"] = "头像缩放大小："
L["玩家施法条宽度"] = "玩家施法条宽度："
L["玩家施法条高度"] = "玩家施法条高度："
L["目标施法条宽度"] = "目标施法条宽度："
L["目标施法条高度"] = "目标施法条高度："
L["焦点施法条宽度"] = "焦点施法条宽度："
L["焦点施法条高度"] = "焦点施法条高度："
L["宠物施法条宽度"] = "宠物施法条宽度："
L["宠物施法条高度"] = "宠物施法条高度："
L["施法条图标大小"] = "施法条图标大小："
--mini
L["小东西设置"] = "小东西设置"
L["启用出售垃圾"] = "启用出售垃圾"
L["启用自动修理"] = "启用自动修理"
L["启用聊天信息过滤"] = "启用聊天信息过滤"
L["启用系统红字屏蔽"] = "启用系统红字屏蔽"
L["启用打断通报"] = "启用打断通报"
L["PVP冷却计时"] = "PVP冷却计时"
L["启用团队工具"] = "启用团队工具"
L["需要团长或者助理权限"] = "需要团长或者助理权限"
L["启用自动邀请"] = "启用自动邀请"
L["自动邀请关键字"] = "自动邀请关键字："
L["启用自动离开有进度的随机副本或团队"] = "启用自动离开有进度的随机副本或团队"
L["UI缩放"] = "UI缩放"
L["UI缩放大小"] = "UI缩放大小："
L["应用"] = "应用"
L["启用插件UI缩放设定"] = "启用插件UI缩放设定"
L["自动设定UI缩放"] = "自动设定UI缩放"
L["需要开启插件UI缩放设定"] = "需要开启插件UI缩放设定"
L["锁定UI缩放"] = "锁定UI缩放"
L["内置CD"] = "内置CD"
L["启动内置CD"] = "启动内置CD"
L["内置CD字体大小"] = "内置CD字体大小："
L["框体宽度"] = "框体宽度："
L["框体高度"] = "框体高度："
L["计时条增长方向"] = "计时条增长方向："
L["向下"] = "向下"
L["向上"] = "向上"
--other
L["内存占用"] = "|cffFFD700内存占用：|r"
L["处理器占用"] = "|cffFFD700处理器占用：|r"
L["插件管理"] = "|cffDDA0DD插件管理|r"
L["SunUI插件管理"] = "|cffDDA0DDSun|r|cff44CCFFUI|r插件管理"
L["第"] = "第 "
L["页/共"] = " 页 / 共 "
L["页"] = " 页"
--打断
L["我已打断: =>"] = "我已断法: =>"
L["<=的 "] = "<=的 "
--背包
L["背包"] = "背包"
L["搜索"] = "搜索"
L["整理背包"] = "整理背包"
--move
L["玩家施法条"] = "玩家施法条"
L["目标施法条"] = "目标施法条"
L["焦点施法条"] = "焦点施法条"
L["宠物施法条"] = "宠物施法条"
L["内置CD监视"] = "内置CD监视"
L["仇恨监视"] = "仇恨监视"
L["缺少药剂buff提示"] = "缺少药剂buff提示"
L["连击点"] = "连击点"
L["暗影魔计时条"] = "暗影魔计时条"
L["小地图"] = "小地图"
L["鼠标左键拖动我!"] = "鼠标左键拖动我!"
L["药水"] = "合剂"
L["冷却闪光"] = "冷却闪光"
--minimap
L["角色信息"] = "角色信息"
L["法术书"] = "法术书"
L["天赋"] = "天赋"
L["成就"] = "成就"
L["任务日志"] = "任务日志"
L["社交"] = "社交"
L["公会"] = "公会"
L["地城查找器"] = "地城查找器"
L["团队查找器"] = "团队查找器"
L["帮助"] = "帮助"
L["行事历"] = "行事历"
L["地城手册"] = "地城手册"
L["就位确认"] = "就位确认"
L["角色检查"] = "角色检查"
L["转化为团队"] = "转化为团队"
L["转化为小队"] = "转化为小队"
--声望条
L["经验值"] = "经验值:"
L["剩余"] = '剩余: %s'
L["休息"] = '|cffb3e1ff休息: %s (%d%%)'
L["阵营"] = '阵营: %s'
L["状态"] = '状态: |c'
L["声望"] = '声望: %s/%s (%d%%)'
L["仇恨"] = "仇恨"
L["敌对"] = "敌对"
L["不友好"] = "不友好"
L["中立"] = "中立"
L["友好"] = "友好"
L["尊敬"] = "尊敬"
L["崇敬"] = "崇敬"
L["崇拜"] = "崇拜"