local function ChooseTranslationTable(tbl)
    return tbl[locale] or tbl[1]
end

local STRINGS =
{
	NAME = 
	{
		"Heap of Foods - Warly Spices",
		zh  = "更多料理 - 沃利香料 (Heap of Foods - Warly Spices)",
		zht = "食物堆積 - 瓦利香料 (Heap of Foods - Warly Spices)",
		pt  = "Amontoado de Comidas - Temperos do Warly (Heap of Foods - Warly Spices)",
		pl  = "Stos jedzenia - Przyprawy Warly'ego (Heap of Foods - Warly Spices)",
		es  = "Montón de Alimentos - Especias de Warly (Heap of Foods - Warly Spices)",
	},
	
	DESCRIPTION =
	{
[[
󰀄 Adds new Warly Spices for the Heap of Foods Mod!

󰀏 This Mod requires that Heap of Foods is enabled. It does nothing on its own. Check Workshop Page for more details.

󰀌 Mod Version: 2.5-A
󰀧 Update: Chicken Week
]],
		zh  =
[[
󰀄 为《更多料理 (Heap of Foods)》模组新增沃利的专属香料！

󰀏 此模组需要启用《更多料理 (Heap of Foods)》。它本身没有任何功能。请查看工作坊页面获取更多信息。

󰀌 Mod 版本： 2.5-A
󰀧 更新内容： 鸡肉周
]],
		zht =
[[
󰀄 為《食物堆積 (Heap of Foods)》模組新增瓦利香料！

󰀏 此模組需要啟用《食物堆積 (Heap of Foods)》。它本身沒有任何功能。請查看工作坊頁面以獲取更多資訊。

󰀌 Mod 版本： 2.5-A
󰀧 更新內容： 雞肉週
]],
		pt  =
[[
󰀄 Adiciona novos Temperos do Warly para o Mod Amontoado de Comidas!

󰀏 Este Mod requer que o Mod Amontoado de Comidas esteja ativado. Ele não faz nada sozinho. Confira a página da Oficina para mais detalhes.

󰀌 Versão do Mod: 2.5-A
󰀧 Atualização: Semana da Galinha
]],
		pl  =
[[
󰀄 Dodaje nowe Przyprawy Warly’ego do modu Stos jedzenia!

󰀏 Ten mod wymaga włączenia Stosu jedzenia. Sam w sobie nic nie robi. Sprawdź stronę warsztatu po więcej informacji.

󰀌 Wersja Moda: 2.5-A
󰀧 Aktualizacja: Tydzień Kurczaka
]],
		es  =
[[
󰀄 ¡Agrega nuevas Especias de Warly para el Mod Montón de Alimentos!

󰀏 Este Mod requiere que Montón de Alimentos esté habilitado. No hace nada por sí solo. Consulta la página del Workshop para más detalles.

󰀌 Versión del Mod: 2.5-A
󰀧 Actualización: Semana del Pollo
]],	
	},
}

name                        = ChooseTranslationTable(STRINGS.NAME)
version                     = "2.5-A"

description                 = ChooseTranslationTable(STRINGS.DESCRIPTION)

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
		["Heap-of-Foods-Workshop-Main"] = false,
		["Heap-of-Foods-Beta"] = false, -- In case someone rename the beta folder.
		["Heap-of-Foods-Beta-main"] = false,
		workshop = "workshop-2334209327",
	},
}