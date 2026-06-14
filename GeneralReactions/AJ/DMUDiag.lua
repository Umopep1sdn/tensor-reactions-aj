-- DMU Bowels of Agony — crystal call (text alert).
-- Compares Entropy (fire) vs Dynamic Fluid (water) debuff timers; whichever is
-- SHORTER resolves first, so it calls out that element's crystal as on-screen text
-- above you. No positions needed — you find the crystal, this just tells you which.
--   Entropy  = FIRE  (status 1600, also 5547 in later phases)
--   Dynamic Fluid = WATER (status 1601, also 5548)

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
local function dur(ids)
    local best
    for _, ent in ipairs(cands) do
        for _, id in ipairs(ids) do
            local b = TensorCore.getBuff(ent, id)
            if b and b.duration and (best == nil or b.duration < best) then best = b.duration end
        end
    end
    return best
end
local fdur = dur(FIRE)
local wdur = dur(WATER)
if fdur and wdur then
    local key = (fdur < wdur) and "FIRE" or "WATER"
    if data.dmuCrystalCall ~= key then
        data.dmuCrystalCall = key
        local txt = (key == "FIRE") and ">> FIRE CRYSTAL <<" or ">> WATER CRYSTAL <<"
        local col = (key == "FIRE") and 0xFFFF6000 or 0xFF1E90FF
        if me and AnyoneCore and AnyoneCore.addTimedWorldTextOnEnt then
            AnyoneCore.addTimedWorldTextOnEnt(8000, txt, me.id, col, true, 3)
        end
        d("[DMU] Crystal call: "..key.."  (Entropy/fire="..tostring(fdur)..", DynamicFluid/water="..tostring(wdur)..")")
    end
elseif (not fdur) and (not wdur) and data.dmuCrystalCall then
    data.dmuCrystalCall = nil   -- mechanic over; reset for next occurrence
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
			name = "[AJ] DMU Crystal Call",
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
