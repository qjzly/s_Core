﻿local _, _, _, DB = unpack(select(2, ...))
--全局设置
local MediaPath = "Interface\\Addons\\s_core\\media\\"
local Media = "Interface\\Addons\\s_core\\media\\"
dummy = function() return end
DB.MyClass = select(2, UnitClass("player"))
DB.PlayerName, _ = UnitName("player")
DB.MyClassColor = RAID_CLASS_COLORS[DB.MyClass]
DB.Font = ChatFrame1:GetFont()
DB.Solid = Media.."solid"
DB.Button = Media.."Button"
DB.GlowTex = Media.."glowTex"
DB.Statusbar = Media.."Statusbar7"
DB.barinset = 10
DB.bfont = MediaPath.."ROADWAY.ttf"
DB.backdrop = { 
    bgFile = "Interface\\Tooltips\\UI-Tooltip-Background", 
    edgeFile = "",
    tile = false,
    tileSize = 0, 
    edgeSize = 0, 
    insets = { 
      left = -DB.barinset, 
      right = -DB.barinset, 
      top = -DB.barinset, 
      bottom = -DB.barinset,
    },
  }

-- 聊天设置
DB.AutoApply = true									--聊天设置锁定		
DB.def_position = {"BOTTOMLEFT",UIParent,"BOTTOMLEFT",20,30} -- Chat Frame position
DB.chat_height = 230
DB.chat_width = 440
DB.fontsize = 18                          --other variables
DB.eb_point = {"BOTTOM", -200, 180}		-- Editbox position
DB.eb_width = 400						-- Editbox width
DB.tscol = "64C2F5"						-- Timestamp coloring
DB.TimeStampsCopy = true					-- 时间戳

--Loot 
  DB.bartex =		MediaPath.."statusbar7"		
  DB.bordertex =	MediaPath.."icon_clean"	
  DB.closebtex =	MediaPath.."black-close"
  DB.edgetex = 	"Interface\\Tooltips\\UI-Tooltip-Border"
  DB.loottex =		"Interface\\QuestFrame\\UI-QuestLogTitleHighlight"
  DB.iconsize = 28 					-- 图标大小
  DB.roll_iconsize = 33 				-- roll点框体大小
  DB.position = {"TOP", 0, -300}  	-- roll点框体位置
  DB.suppress_loot_spam = false			-- suppress group loot spam in chat window if detailed loot info enabled
  DB.bar_width = 250					-- bar宽度
  DB.bar_height = 25					-- bar高度
 
--仇恨条
DB.OpenThreat = true
DB.ArrowT = Media.."ArrowT"
DB.Arrow = Media.."Arrow"


--背包
DB.bgFile = "Interface\\Tooltips\\UI-Tooltip-Background"
DB.edgeFile = Media.."glowTex5"
DB.bagScale = 1.1 		

--动作条

DB.bars = {
    bar1 = {     
	    uselayout2x6    = false,
      userplaced      = true, --want to place the bar somewhere else?
      locked          = true, --frame locked
      testmode        = false,
    },
    bar2 = {
      uselayout2x6    = false,
      showonmouseover = false,
      userplaced      = true, --want to place the bar somewhere else?
      locked          = true, --frame locked
      testmode        = false,
    },
    bar3 = {
      uselayout2x6    = false,
      showonmouseover = false,
      userplaced      = true, --want to place the bar somewhere else?
      locked          = true, --frame locked
      testmode        = false,
    },
    bar4 = {
      showonmouseover = false,
      userplaced      = true, --want to place the bar somewhere else?
      locked          = true, --frame locked
      testmode        = false,
    },
    bar5 = {
      showonmouseover = false,
      userplaced      = true, --want to place the bar somewhere else?
      locked          = true, --frame locked
      testmode        = false,
    },

    stancebar = {
      showonmouseover = false,
      userplaced      = true, --want to place the bar somewhere else?
      locked          = true, --frame locked
      testmode        = false,
      disable         = false,
    },
    petbar = {
      showonmouseover = false,
      userplaced      = true, --want to place the bar somewhere else?
      locked          = true, --frame locked
      testmode        = false,
      disable         = false,
    },

    extrabar = {
      userplaced      = true,
      locked          = true,
      testmode        = false,
      disable         = false,
    },
    micromenu = {
      showonmouseover = true,
      userplaced      = true, --want to place the bar somewhere else?
      locked          = true, --frame locked
      testmode        = false,
      disable         = true,
    },
    bags = {
      showonmouseover = true,
      userplaced      = true, --want to place the bar somewhere else?
      locked          = true, --frame locked
      testmode        = false,
      disable         = true,
    },
    totembar = {
      userplaced      = true, --want to place the bar somewhere else?
      locked          = true, --frame locked 
      testmode        = false,
      disable         = false,
    },
    vehicleexit = {
      userplaced      =true, --want to place the bar somewhere else?
      locked          = true, --frame locked
      testmode        = false,
    },
  }
 
--旧版动作条美化
 DB.textures = {
    normal            = "Interface\\AddOns\\s_Core\\Media\\ActionBar\\gloss",
    flash             = "Interface\\AddOns\\s_Core\\Media\\ActionBar\\flash",
    hover             = "Interface\\AddOns\\s_Core\\Media\\ActionBar\\hover",
    pushed            = "Interface\\AddOns\\s_Core\\Media\\ActionBar\\gloss",
    checked           = "Interface\\AddOns\\s_Core\\Media\\ActionBar\\checked",
    equipped          = "Interface\\AddOns\\s_Core\\Media\\ActionBar\\gloss",
    buttonback        = "Interface\\AddOns\\s_Core\\Media\\ActionBar\\button_background",
    buttonbackflat    = "Interface\\AddOns\\s_Core\\Media\\ActionBar\\button_background_flat",
    outer_shadow      = "Interface\\AddOns\\s_Core\\Media\\ActionBar\\outer_shadow",
  }
  DB.afont = ChatFrame1:GetFont()
  DB.background = {
    showbg            = false,  --show an background image?
    showshadow        = true,   --show an outer shadow?
    useflatbackground = false,  --true uses plain flat color instead
    backgroundcolor   = { r = 0.3, g = 0.3, b = 0.3, a = 0.7},
    shadowcolor       = { r = 0, g = 0, b = 0, a = 0.9},
    classcolored      = false,
    inset             = 5, 
  }
  
  DB.color = {
    normal            = { r = 0.37, g = 0.3, b = 0.3, },
    equipped          = { r = 0.1, g = 0.5, b = 0.1, },
    classcolored      = false,
  }
  
  DB.hotkeys = {
    show            = true,
    fontsize        = 12,
    pos1             = { a1 = "TOPRIGHT", x = 0, y = 0 }, 
    pos2             = { a1 = "TOPLEFT", x = 0, y = 0 }, --important! two points are needed to make the hotkeyname be inside of the button
  }
  
  DB.macroname = {
    show            = true,
    fontsize        = 10,
    pos1             = { a1 = "BOTTOMLEFT", x = 0, y = 0 }, 
    pos2             = { a1 = "BOTTOMRIGHT", x = 0, y = 0 }, --important! two points are needed to make the macroname be inside of the button
  }
  
  DB.itemcount = {
    show            = true,
    fontsize        = 12,
    pos1             = { a1 = "BOTTOMRIGHT", x = 0, y = 0 }, 
  }
  
  DB.cooldown = {
    spacing         = 0,
  }



	

--施法条
DB.bar_texture = Media.."Statusbar7" --"Interface\\AddOns\\S_core\\media\\sppower"  --bar原材质

---mini功能
DB.combatpointOpen = true --盗贼连击点显示
DB.caelNamePlatesOpen = true  --开启姓名板美化
DB.Ratings = true  --装备属性转换

--暗影魔計時
DB.ShadowPetOpen = true


--对大脚,魔盒say good bye
local Launch = CreateFrame("Frame")
Launch:RegisterEvent("PLAYER_ENTERING_WORLD")
Launch:SetScript("OnEvent", function(self, event)
	for i = 1, GetNumAddOns() do
		if IsAddOnLoaded(i) then
			for _, v in pairs({GetAddOnInfo(i)}) do
				if v and type(v) == 'string' and (v:lower():find("BigFoot") or v:lower():find("Duowan") or v:lower():find("163UI") or v:lower():find("FishUI")) then
					print("侦测到您正在使用大脚或者魔盒,为了让您用的舒适所以插件自我关闭掉.如想使用本插件请完全删除大脚或者魔盒")
					return end
				end
			end
		end
	self:UnregisterEvent("PLAYER_ENTERING_WORLD" )
end)