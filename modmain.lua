Assets =
{
	Asset("ANIM", "anim/kyno_spices.zip"),
	
	Asset("IMAGE", "images/inventoryimages/hofs_inventoryimages.tex"),
	Asset("ATLAS", "images/inventoryimages/hofs_inventoryimages.xml"),
	Asset("ATLAS_BUILD", "images/inventoryimages/hofs_inventoryimages.xml", 256),
}

PrefabFiles =
{
	"k_newspices",
}

-- Import the new Mod Spices.
require("hof_spicedfoods")

-- Required for Warly crafting.
AddPrefabPostInit("warly", function(inst)
	inst:AddTag("hof_spicemaker")
end)