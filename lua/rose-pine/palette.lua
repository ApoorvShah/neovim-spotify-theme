local options = require("rose-pine.config").options
local variants = {
	spt = {
		_nc = "#0f0f0f", -- Adjusted for a darker background
		base = "#121212", -- Adjusted to a dark gray for the main background
		surface = "#1e1e1e", -- Adjusted to a slightly lighter shade for surface elements
		overlay = "#282828", -- Adjusted for a darker overlay
		muted = "#636363", -- Adjusted for a muted text color
		subtle = "#7d7d7d", -- Adjusted for a subtle element color
		text = "#ffffff", -- Adjusted to white for text
		love = "#ff6d8a", -- Adjusted for a pinkish love color
		gold = "#f6c177", -- Kept as gold
		rose = "#ebbcba", -- Kept as rose
		pine = "#31748f", -- Kept as pine
		foam = "#9ccfd8", -- Kept as foam
		iris = "#c4a7e7", -- Kept as iris
		highlight_low = "#161616", -- Adjusted for a darker low-level highlight
		highlight_med = "#2e2e2e", -- Adjusted for a darker medium-level highlight
		highlight_high = "#424242", -- Adjusted for a darker high-level highlight
		none = "NONE",
	},
	moon = {
		_nc = "#1f1d30",
		base = "#232136",
		surface = "#2a273f",
		overlay = "#393552",
		muted = "#6e6a86",
		subtle = "#908caa",
		text = "#e0def4",
		love = "#eb6f92",
		gold = "#f6c177",
		rose = "#ea9a97",
		pine = "#3e8fb0",
		foam = "#9ccfd8",
		iris = "#c4a7e7",
		highlight_low = "#2a283e",
		highlight_med = "#44415a",
		highlight_high = "#56526e",
		none = "NONE",
	},
	dawn = {
		_nc = "#f8f0e7",
		base = "#faf4ed",
		surface = "#fffaf3",
		overlay = "#f2e9e1",
		muted = "#9893a5",
		subtle = "#797593",
		text = "#575279",
		love = "#b4637a",
		gold = "#ea9d34",
		rose = "#d7827e",
		pine = "#286983",
		foam = "#56949f",
		iris = "#907aa9",
		highlight_low = "#f4ede8",
		highlight_med = "#dfdad9",
		highlight_high = "#cecacd",
		none = "NONE",
	},
}

if variants[options.variant] ~= nil then
	return variants[options.variant]
end

return vim.o.background == "light" and variants.dawn or variants[options.dark_variant or "spt"]
