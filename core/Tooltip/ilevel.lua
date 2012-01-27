﻿local S, C, L, DB = unpack(select(2, ...))
CreateFrame('Frame', 'Needy', UIParent)

Needy:SetScript('OnEvent', function(self, event, ...) self[event](self, ...) end)
Needy:RegisterEvent('MODIFIER_STATE_CHANGED')

if TinyTip then
    TinyTip.HookOnTooltipSetUnit(GameTooltip, Needy.UPDATE_MOUSEOVER_UNIT)
else
    Needy:RegisterEvent('UPDATE_MOUSEOVER_UNIT')
end

function Needy:INSPECT_ACHIEVEMENT_READY()
    self:UnregisterEvent('INSPECT_ACHIEVEMENT_READY')
    self.line:SetText()

    if GameTooltip:GetUnit() == self.unit then
        local stats, text = {}, ''

        stats.TotalAchievemen = tonumber(GetComparisonAchievementPoints()) or 0
            text = text .. L["成就点数"]  .. stats.TotalAchievemen

        if text ~= '' then
            self.line:SetText(text)
        end
    end

    GameTooltip:Show()

    if not UnitName('mouseover') then
        GameTooltip:FadeOut()
    end

    ClearAchievementComparisonUnit()

    if _G.GearScore then
        _G.GearScore:RegisterEvent('INSPECT_ACHIEVEMENT_READY')
    end

    if Elite then
        Elite:RegisterEvent('INSPECT_ACHIEVEMENT_READY')
    end

    if AchievementFrameComparison then
        AchievementFrameComparison:RegisterEvent('INSPECT_ACHIEVEMENT_READY')
    end

    self:RegisterEvent('UPDATE_MOUSEOVER_UNIT')
end

function Needy:MODIFIER_STATE_CHANGED()
    if arg1 == 'LCTRL' or arg1 == 'RCTRL' then
        if self.line and UnitName('mouseover') == self.unit then
            self:UPDATE_MOUSEOVER_UNIT(true)
        end
    end
end

function Needy:UPDATE_MOUSEOVER_UNIT(refresh)
    if not refresh then
        self.unit, self.line = nil, nil
    end

    if (UnitAffectingCombat('player')) or UnitIsDead('player') or not UnitExists('mouseover')
    or not UnitIsPlayer('mouseover') or not UnitIsConnected('mouseover') or UnitIsDead('mouseover') then
        return
    end

    self.unit = UnitName('mouseover')

    local text = L["正在查询成就"]

    if refresh then
        self.line:SetText(text)
    else
        GameTooltip:AddLine(text)
        self.line = _G['GameTooltipTextLeft' .. GameTooltip:NumLines()]
    end

    GameTooltip:Show()

    if _G.GearScore then
        _G.GearScore:UnregisterEvent('INSPECT_ACHIEVEMENT_READY')
    end

    if Elite then
        Elite:UnregisterEvent('INSPECT_ACHIEVEMENT_READY')
    end

    if AchievementFrameComparison then
        AchievementFrameComparison:UnregisterEvent('INSPECT_ACHIEVEMENT_READY')
    end

    self:UnregisterEvent('UPDATE_MOUSEOVER_UNIT')
    self:RegisterEvent('INSPECT_ACHIEVEMENT_READY')

    SetAchievementComparisonUnit('mouseover')
end


function GetItemScore(iLink) 
   local _, _, itemRarity, itemLevel, _, _, _, _, itemEquip = GetItemInfo(iLink);
   if (IsEquippableItem(iLink)) then 
      if not   (itemLevel > 1) and (itemRarity > 1) then 
      return 0;
      end
   end
   return itemLevel;
end


function GetPlayerScore(unit) 
   local ilvl, ilvlAdd, equipped = 0, 0, 0;
   if (UnitIsPlayer(unit)) then
      local _, targetClass = UnitClass(unit);
      for i = 1, 18 do 
         if (i ~= 4) then
            local iLink = GetInventoryItemLink(unit, i);
            if (iLink) then
               ilvlAdd = GetItemScore(iLink);
               ilvl = ilvl + ilvlAdd;
               equipped = equipped + 1;
            end
         end
      end
   end
   ClearInspectPlayer(); 
   return floor(ilvl / equipped);
end
function ColorGradient(perc, ...)
	if perc >= 1 then
		local r, g, b = select(select('#', ...) - 2, ...)
		return r, g, b
	elseif perc <= 0.92 then
		local r, g, b = ...
		return r, g, b
	end

	local num = select('#', ...) / 3
	local segment, relperc = math.modf(perc*(num-1))
	local r1, g1, b1, r2, g2, b2 = select((segment*3)+1, ...)

	return r1 + (r2-r1)*relperc, g1 + (g2-g1)*relperc, b1 + (b2-b1)*relperc
end
function GetQuality(ItemScore)
	return ColorGradient(ItemScore/413, 0.5, 0.5, 0.5, 1, 0.1, 0.1)
end
function SetUnit() 
   local _, unit = GameTooltip:GetUnit();
   local unitilvl = 0;
   if not (unit) or not (UnitIsPlayer(unit)) or not (CanInspect(unit)) then
      return;
   elseif (UnitIsUnit(unit,"player")) then 
      unitilvl = GetPlayerScore("player");
   elseif not (InspectFrame and InspectFrame:IsShown()) then 
NotifyInspect(unit); unitilvl = GetPlayerScore(unit);
   end

	local Red, Blue, Green = GetQuality(unitilvl) 
	GameTooltip:AddLine("ilevel: "..unitilvl, Red, Green, Blue)

end

GameTooltip:HookScript("OnTooltipSetUnit",SetUnit)
