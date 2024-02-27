local var    = require( "variables" )
local config = {}

function config.SetSamples( samples )

	if samples == var.samples.vanilla then

		print( "---------- Ultra+: Switching to Vanilla RTXDI samples" )

		SetOption( "RayTracing/ReferenceScreenshot", "SampleNumber", "5" )
		SetOption( "Editor/ReSTIRGI", "SpatialNumSamples", "2" )
		SetOption( "Editor/ReSTIRGI", "SpatialNumDisocclusionBoostSamples", "2" )
		SetOption( "Editor/RTXDI", "NumInitialSamples", "8" )
		SetOption( "Editor/RTXDI", "NumEnvMapSamples", "8" )
		SetOption( "Editor/RTXDI", "SpatialNumSamples", "1" )
		SetOption( "Editor/RTXDI", "SpatialNumDisocclusionBoostSamples", "8" )

	elseif samples == var.samples.performance then

		print( "---------- Ultra+: Switching to Performance RTXDI samples" )

		SetOption( "RayTracing/ReferenceScreenshot", "SampleNumber", "16" )
		SetOption( "Editor/ReSTIRGI", "SpatialNumSamples", "4" )
		SetOption( "Editor/ReSTIRGI", "SpatialNumDisocclusionBoostSamples", "32" )
		SetOption( "Editor/RTXDI", "NumInitialSamples", "16" )
		SetOption( "Editor/RTXDI", "NumEnvMapSamples", "0" )
		SetOption( "Editor/RTXDI", "SpatialNumSamples", "0" )

		if var.settings.mode == var.mode.pt20 or var.settings.mode == var.mode.rt_pt then

			SetOption( "Editor/RTXDI", "SpatialNumDisocclusionBoostSamples", "32" )

		else
			SetOption( "Editor/RTXDI", "SpatialNumDisocclusionBoostSamples", "4" )

		end

	elseif samples == var.samples.balanced then

		print( "---------- Ultra+: Switching to Balanced RTXDI samples" )

		SetOption( "RayTracing/ReferenceScreenshot", "SampleNumber", "16" )
		SetOption( "Editor/ReSTIRGI", "SpatialNumSamples", "4" )
		SetOption( "Editor/ReSTIRGI", "SpatialNumDisocclusionBoostSamples", "32" )
		SetOption( "Editor/RTXDI", "NumInitialSamples", "20" )
		SetOption( "Editor/RTXDI", "SpatialNumSamples", "1" )
		SetOption( "Editor/RTXDI", "NumEnvMapSamples", "0" )

		if var.settings.mode == var.mode.pt20 or var.settings.mode == var.mode.rt_pt then

			SetOption( "Editor/RTXDI", "SpatialNumDisocclusionBoostSamples", "32" )

		else
			SetOption( "Editor/RTXDI", "SpatialNumDisocclusionBoostSamples", "8" )

		end

	elseif samples == var.samples.quality then

		print( "---------- Ultra+: Switching to Quality RTXDI samples" )

		SetOption( "RayTracing/ReferenceScreenshot", "SampleNumber", "24" )
		SetOption( "Editor/ReSTIRGI", "SpatialNumSamples", "4" )
		SetOption( "Editor/ReSTIRGI", "SpatialNumDisocclusionBoostSamples", "32" )
		SetOption( "Editor/RTXDI", "NumInitialSamples", "24" )
		SetOption( "Editor/RTXDI", "NumEnvMapSamples", "0" )
		SetOption( "Editor/RTXDI", "SpatialNumSamples", "2" )

		if var.settings.mode == var.mode.pt20 or var.settings.mode == var.mode.rt_pt then

			SetOption( "Editor/RTXDI", "SpatialNumDisocclusionBoostSamples", "32" )

		else
			SetOption( "Editor/RTXDI", "SpatialNumDisocclusionBoostSamples", "16" )

		end
	end
end

return config
