-- DMU crystal-mechanic DIAGNOSTIC (temporary). Inherit alongside AJTest.
-- Detects Bowels of Agony crystals via the confirmed debuffs (Entropy=fire 1600/5547,
-- Dynamic Fluid=water 1601/5548) and dumps the live map-effect crystals (path+position)
-- + the debuff durations, so the crystal element->position mapping can be captured from
-- ONE pull. Remove after we have the data.

local tbl =
{

	{
		data =
		{
			actions =
			{

				{
					data =
					{
						aType = "Lua",
						actionLua = [[
if Argus == nil then self.used = true return end
local FIRE  = {1600, 5547}   -- Entropy
local WATER = {1601, 5548}   -- Dynamic Fluid
local party = TensorCore.getEntityByGroup("Party", "Number") or {}
local function find(ids)
    for _, p in pairs(party) do
        if p then
            for _, id in ipairs(ids) do
                local b = TensorCore.getBuff(p, id)
                if b then return p, id, b.duration end
            end
        end
    end
end
local fp, fid, fdur = find(FIRE)
local wp, wid, wdur = find(WATER)
if (fp or wp) and (data.dmuDiagLast == nil or TimeSince(data.dmuDiagLast) > 3000) then
    data.dmuDiagLast = Now()
    d("[DMU DIAG] Entropy(fire) id="..tostring(fid).." dur="..tostring(fdur).." | DynamicFluid(water) id="..tostring(wid).." dur="..tostring(wdur))
    local fx = Argus.getCurrentMapEffects()
    d("[DMU DIAG] mapeffects="..tostring(fx and #fx or 0))
    for i, e in ipairs(fx or {}) do
        local ri = e.resource_info
        if ri then
            local px = ri.position and ri.position.x
            local pz = ri.position and ri.position.z
            d("[DMU DIAG] fx"..i.." id="..tostring(ri.id).." type="..tostring(ri.type).." path="..tostring(ri.path).." @"..tostring(px)..","..tostring(pz))
        end
    end
end
self.used = true]],
						endIfUsed = true,
						uuid = "d10a17e5-0001-4000-8000-000000000001",
						version = 2.1,
					},
				},
			},
			conditions =
			{
			},
			eventType = 12,
			name = "[AJ] DMU Crystal Diagnostic",
			uuid = "d10a17e5-0002-4000-8000-000000000002",
			version = 2,
		},
		inheritedIndex = 1,
	},
	inheritedProfiles =
	{
	},
}

return tbl
