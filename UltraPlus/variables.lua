-- variables.lua

local var =
{
	mode =
	{
		VANILLA = "Vanilla",
		PT20 = "PT20",
		PT21 = "PT21",
		RT_PT = "RTPT",
		RT_ONLY = "RTOnly",
		RASTER = "Raster",
	},
	samples =
	{
		VANILLA = "Vanilla",
		PERFORMANCE = "Performance",
		BALANCED = "Balanced",
		QUALITY = "Quality",
	},
	dlss =
	{
		AUTO = "Auto",
		DYNAMIC = "Dynamic",
		DLAA = "DLAA",
		QUALITY = "Quality",
		BALANCED = "Balanced",
		PERFORMANCE = "Performance",
		ULTRA_PERFORMANCE = "Ultra Performance",
	},
	settings =
	{
		mode = "Unknown",
		samples = "Unknown",
		nrdFix = nil,
		particleFix = nil,
		indoors = true,
		rain = true,
	},
}

return var
