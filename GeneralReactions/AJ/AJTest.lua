-- AJTest v2 — draw showcase (CURRENT TensorReactions format).
-- Inherit into your general profile (or select it).
--
-- One OnUpdate reaction (eventType=12), throttled + entity-attached = GPU-light:
--   * Arrow from YOU -> your current target (auto-tracks both)
--   * Pinpoint target marker: green inner circle + purple ring around it
--   * Status-reactive: marker turns gold/orange while you are IN COMBAT
--   * Countdown payoff: /countdown 5 -> expanding pulse of rings when it hits 0
-- Colors are 0xAARRGGBB. doNotDetect=true so guide draws don't trip defensives.

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
local me = TensorCore.mGetPlayer()

-- ===== Countdown payoff: expanding ring pulse when a /countdown reaches 0 =====
local cd   = AnyoneCore and AnyoneCore.Data and AnyoneCore.Data.countdownTime
local cdur = AnyoneCore and AnyoneCore.Data and AnyoneCore.Data.countdownDuration
if cd and cdur and me then
    local remaining = cdur * 1000 - TimeSince(cd)
    if remaining <= 0 and not data.ajtCdFired then
        data.ajtCdFired = true
        for i = 1, 6 do
            local col = (i % 2 == 0) and 0xB000E5FF or 0xB0FFFFFF
            TensorCore.getStaticDrawer(col, 1.5):addTimedCircle(1000, me.pos.x, me.pos.y, me.pos.z, 1.5 + i * 2.5, i * 110, false, true)
        end
        d("[AJ] COUNTDOWN GO!")
    end
elseif data.ajtCdFired then
    data.ajtCdFired = nil   -- reset for next countdown
end

-- ===== Target arrow + pinpoint marker (throttled; attached draws track entities) =====
if data.ajtLast == nil or TimeSince(data.ajtLast) > 1800 then
    data.ajtLast = Now()
    local tg = TensorCore.mGetTarget()
    local dur = 2100
    local incombat = (InCombat and InCombat()) or false
    if me then
        TensorCore.getStaticDrawer(0x60FFFFFF, 0.5):addTimedCircleOnEnt(dur, me.id, 1, 0, false, true)
    end
    if me and tg and tg.pos then
        -- arrow from you -> target
        TensorCore.getStaticDrawer(0xE000E5FF, 1.0):addTimedArrowOnEnt(dur, me.id, 2.5, 1.2, 1.5, 2.4, tg.id, 0, false, 0, false)
        -- pinpoint marker: inner circle + outer ring (gold/orange in combat, green/purple otherwise)
        local inner = incombat and 0xC0FFD000 or 0xC000FF00
        local ring  = incombat and 0xC0FF6000 or 0xC0A020F0
        TensorCore.getStaticDrawer(inner, 0.5):addTimedCircleOnEnt(dur, tg.id, 1.2, 0, false, true)
        TensorCore.getStaticDrawer(ring, 1.2):addTimedDonutOnEnt(dur, tg.id, 1.6, 2.4, 0, false, true)
    end
end
self.used = true]],
						endIfUsed = true,
						uuid = "a17e5701-0001-4000-8000-0000000000a1",
						version = 2.1,
					},
				},
			},
			conditions =
			{
			},
			eventType = 12,
			name = "[AJ] Showcase (arrow/target/status/countdown)",
			uuid = "a17e5701-0002-4000-8000-0000000000a2",
			version = 2,
		},
		inheritedIndex = 1,
	},
	inheritedProfiles =
	{
	},
}

return tbl
