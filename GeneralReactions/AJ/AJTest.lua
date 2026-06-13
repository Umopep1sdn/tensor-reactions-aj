-- AJTest — draw-proof general reactions profile (CURRENT TensorReactions format).
-- Inherit this into your current general profile (or select it directly).
--
-- One OnUpdate reaction (eventType=12) that, throttled to every 4s, draws around YOU:
--   * center 3y circle (translucent white)
--   * 4 cardinal rings 10y out:  N = white(-Z),  E = red(+X),  S = green(+Z),  W = blue(-X)
-- Walk around at the SSS dummy (Kholusia, outside Eulmore) and confirm which ring is
-- actually North vs the in-game compass — that proves the world-coordinate mapping.
-- Console prints "[AJ] proof..." each redraw. Disable the profile when done.
--
-- Format mirrors real current profiles (Paradox / megaminx): data-wrapped reaction →
-- data-wrapped action (aType="Lua"), colors as 0xAARRGGBB. Draw calls are from the
-- authoritative Argus defs (TensorCore.getStaticDrawer + ShapeDrawer:addTimedCircle).

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
						actionLua = "if Argus == nil then self.used = true return end\nif data.ajtLast == nil or TimeSince(data.ajtLast) > 4000 then\n    data.ajtLast = Now()\n    local me = TensorCore.mGetPlayer()\n    if me and me.pos then\n        local dur = 4500\n        TensorCore.getStaticDrawer(0x80FFFFFF, 0.5):addTimedCircle(dur, me.pos.x, me.pos.y, me.pos.z, 3, 0, false, true)\n        TensorCore.getStaticDrawer(0xC0FFFFFF, 0.8):addTimedCircle(dur, me.pos.x, me.pos.y, me.pos.z - 10, 1.5, 0, false, true)\n        TensorCore.getStaticDrawer(0xC0FF0000, 0.8):addTimedCircle(dur, me.pos.x + 10, me.pos.y, me.pos.z, 1.5, 0, false, true)\n        TensorCore.getStaticDrawer(0xC000FF00, 0.8):addTimedCircle(dur, me.pos.x, me.pos.y, me.pos.z + 10, 1.5, 0, false, true)\n        TensorCore.getStaticDrawer(0xC00000FF, 0.8):addTimedCircle(dur, me.pos.x - 10, me.pos.y, me.pos.z, 1.5, 0, false, true)\n        d(\"[AJ] proof: center + N=white(-Z) E=red(+X) S=green(+Z) W=blue(-X)\")\n    end\nend\nself.used = true",
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
			name = "[AJ] Draw Proof (OnUpdate)",
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
