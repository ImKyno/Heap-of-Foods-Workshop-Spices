name                        = "Heap of Foods - Warly Spices"
version                     = "1.4-A"

description                 = 
[[
󰀄 Adds new Warly Spices for the Heap of Foods Mod!

󰀏 This Mod requires that Heap of Foods is enabled. It does nothing on its own. Check Workshop Page for more details.

󰀌 Mod Version: 1.4-A
󰀧 Update: Seaside Summer (Part II)
]]

author                      = "Kyno"
api_version                 = 10
priority                    = 1 -- Above 0 = Override other mods. | Below 0 = Overriden by other mods.

dst_compatible              = true
all_clients_require_mod     = true
client_only_mod             = false

server_filter_tags          = {"Heap of Foods - Spices", "HOF Spices", "Cooking", "Entertainment", "Kyno"}

icon                        = "ModiconHOFS.tex"
icon_atlas                  = "ModiconHOFS.xml"

mod_dependencies = 
{
	{
		["Heap-of-Foods-Workshop"] = false,
		["Heap-of-Foods-Beta"] = false, -- In case someone rename the beta folder.
		["Heap-of-Foods-Beta-main"] = false,
		workshop = "workshop-2334209327",
	},
}

-- Brazilian Portuguese
if locale == "pt" then
	name                   = "Amontoado de Comidas - Temperos do Warly"

	description            = 
[[
󰀄 Adiciona novos Temperos do Warly para o Mod Amontoado de Comidas! 

󰀏 Este Mod requer que o Mod principal esteja ativo. Este Mod não faz nada por si só. Cheque a página da Oficina para mais detalhes.

󰀌 Versão do Mod: 1.4-A
󰀧 Atualização: Verão à Beira-mar (Parte II)
]]
end

-- Simplified Chinese.
if locale == "zh" or locale == "zhr" then
	name                   = "Heap of Foods - Warly Spices"

	description            = 
[[
󰀄 Adds new Warly Spices for the Heap of Foods Mod!

󰀏 This Mod requires that Heap of Foods is enabled. It does nothing on its own.  Check Workshop Page for more details.

󰀌 Mod版本: 1.4-A
󰀧 Update: Seaside Summer (Part II)
]]
end