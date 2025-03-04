-- Common Dependencies.
local _G               = GLOBAL
local require          = _G.require

-- Mod Dependencies.
local hofs_init_misc =
{
	"hofs_assets",
	"hofs_prefabs",
	"hofs_tuning",
	"hofs_postinits_misc",
}

for _, v in pairs(hofs_init_misc) do
	modimport("hofs_init/misc/"..v)
end