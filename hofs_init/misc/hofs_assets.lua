-- Common Dependencies.
local _G 			= GLOBAL
local require 		= _G.require

-- Assets.
Assets =
{
	Asset("ANIM", "anim/kyno_spices.zip"),

	Asset("IMAGE", "images/inventoryimages/hofs_inventoryimages.tex"),
	Asset("ATLAS", "images/inventoryimages/hofs_inventoryimages.xml"),
	Asset("ATLAS_BUILD", "images/inventoryimages/hofs_inventoryimages.xml", 256),
}

-- Mod Icons.
local HOF_ICONS_SPICES =
{
	"spice_cold",
	"spice_cold_over",
	"spice_cure",
	"spice_cure_over",
	"spice_fed",
	"spice_fed_over",
	"spice_fire",
	"spice_fire_over",
	"spice_mind",
	"spice_mind_over",
}

-- Dirty fix for icons not appearing on Mini Signs.
for k, v in pairs(HOF_ICONS_SPICES) do
	if _G.TheNet:GetIsMasterSimulation() then
		local icon_atlas = MODROOT.."images/inventoryimages/hofs_inventoryimages.xml"
		
		for _, icon in pairs({v}) do 
			local icon_name = icon 
		
			AddPrefabPostInit(icon_name, function(inst)
				inst.components.inventoryitem.imagename = icon_name
				inst.components.inventoryitem.atlasname = icon_atlas
			end)
		end
	end
	
	RegisterInventoryItemAtlas("images/inventoryimages/hofs_inventoryimages.xml", v..".tex")
end