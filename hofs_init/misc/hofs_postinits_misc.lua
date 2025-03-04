-- Common Dependencies.
local _G 				= GLOBAL
local require 			= _G.require
local resolvefilepath 	= _G.resolvefilepath
local ACTIONS 			= _G.ACTIONS
local STRINGS			= _G.STRINGS
local SpawnPrefab		= _G.SpawnPrefab
local cooking           = require("cooking")
local VanillaFood       = require("preparedfoods")
local WarlyFood         = require("preparedfoods_warly")

AddComponentPostInit("edible", function(self, inst)
	-- Stuffed Starch spice tweak.
	function self:GetHunger(eater)
		local multiplier = 1
		local spice_source = self.spice
		
		local ignore_spoilage = not self.degrades_with_spoilage or self.hungervalue < 0 or 
		(eater ~= nil and eater.components.eater ~= nil and eater.components.eater.ignoresspoilage)
		
		if not ignore_spoilage and self.inst.components.perishable ~= nil then
			if self.inst.components.perishable:IsStale() then
				multiplier = eater ~= nil and eater.components.eater ~= nil and eater.components.eater.stale_hunger or self.stale_hunger
			elseif self.inst.components.perishable:IsSpoiled() then
				multiplier = eater ~= nil and eater.components.eater ~= nil and eater.components.eater.spoiled_hunger or self.spoiled_hunger
				spice_source = nil
			end
		end
		
		if eater ~= nil and eater.components.foodaffinity ~= nil then
			local affinity_bonus = eater.components.foodaffinity:GetAffinity(self.inst)
			
			if affinity_bonus ~= nil then
				multiplier = multiplier * affinity_bonus
			end
		end
		
		if spice_source and TUNING.SPICE_MULTIPLIERS[spice_source] and TUNING.SPICE_MULTIPLIERS[spice_source].HUNGER then
			multiplier = multiplier + TUNING.SPICE_MULTIPLIERS[spice_source].HUNGER
		end
		
		return multiplier * self.hungervalue
	end
end)

-- Uuugh. Our mod spices have a nasty bug regarding foodaffinity, I don't know how to fix it yet.
-- This is a temporary workaround for it to work with favorite foods.
AddComponentPostInit("foodaffinity", function(self)
	 local spicedfoods = _G.MergeMaps(require("spicedfoods"), require("hof_spicedfoods"))
	
	function self:GetFoodBasePrefab(food)
		local prefab = food.prefab
		return spicedfoods[prefab] and spicedfoods[prefab].basename or prefab
	end
end)

-- For Preservation Powder Spice.
for k, v in pairs(_G.MergeMaps(VanillaFood, WarlyFood)) do
	AddPrefabPostInit(v, function(inst, data)
		if not _G.TheWorld.ismastersim then
			return inst
		end
		
		if inst.components.edible ~= nil then
			inst.components.edible.degrades_with_spoilage = data.degrades_with_spoilage == nil or data.degrades_with_spoilage
		end
	end)
end