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
local cands = {}
local me = TensorCore.mGetPlayer(); if me then cands[#cands+1] = me end
for _, q in pairs(TensorCore.getEntityByGroup("Party", "Number") or {}) do if q then cands[#cands+1] = q end end
local function find(ids)
    for _, ent in ipairs(cands) do
        for _, id in ipairs(ids) do
            local b = TensorCore.getBuff(ent, id)
            if b then return id, b.duration end
        end
    end
end
local fid, fdur = find(FIRE)
local wid, wdur = find(WATER)
if (fid or wid) and (data.dmuDiagLast == nil or TimeSince(data.dmuDiagLast) > 2500) then
    data.dmuDiagLast = Now()
    d("[DMU DIAG] Entropy(fire) id="..tostring(fid).." dur="..tostring(fdur).." | DynamicFluid(water) id="..tostring(wid).." dur="..tostring(wdur))
    -- 1) map effects + their subresources
    local fx = Argus.getCurrentMapEffects() or {}
    d("[DMU DIAG] mapeffects="..tostring(#fx))
    for i, e in ipairs(fx) do
        local ri = e.resource_info or {}
        local p = ri.position or {}
        d("[DMU DIAG] fx"..i.." type="..tostring(ri.type).." path="..tostring(ri.path).." @"..tostring(p.x)..","..tostring(p.z))
        local subs = ri.subresources
        if type(subs) == "table" then
            for j, s in ipairs(subs) do
                local sri = s.resource_info or {}
                local sp = sri.position or {}
                d("[DMU DIAG]   sub"..j.." type="..tostring(sri.type).." path="..tostring(sri.path).." @"..tostring(sp.x)..","..tostring(sp.z))
            end
        end
    end
    -- 2) active AOEs (crystal donut/spread telegraphs carry positions)
    local gaoe = Argus.getCurrentGroundAOEs and (Argus.getCurrentGroundAOEs(true) or {}) or {}
    for i, a in ipairs(gaoe) do d("[DMU DIAG] gAOE"..i.." name="..tostring(a.aoeName).." id="..tostring(a.aoeID).." @"..tostring(a.x)..","..tostring(a.z)) end
    local daoe = Argus.getCurrentDirectionalAOEs and (Argus.getCurrentDirectionalAOEs() or {}) or {}
    for k, a in pairs(daoe) do d("[DMU DIAG] dAOE name="..tostring(a.aoeName).." id="..tostring(a.aoeID).." @"..tostring(a.x)..","..tostring(a.z).." h="..tostring(a.heading)) end
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
