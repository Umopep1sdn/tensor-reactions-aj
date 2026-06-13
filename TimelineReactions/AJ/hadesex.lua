-- AJ Hades EX (The Dying Gasp) timeline reactions — CURRENT TensorReactions format.
-- timelineName = "hadesex" binds this to the Hades EX timeline.
--
-- TEST mechanic: "Proteans" — anchored to Ravenous Assault (cast id 18342 / 0x47A6,
-- ~40.9s per cactbot). Event-driven (OnEntityCast) so it fires exactly when Hades
-- casts it, robust to timeline index/sync drift. On cast it draws 8 line telegraphs
-- radiating from Hades (protean visual) + a marker on him, for 6s.
--
-- If "proteans" is actually a different cast, it's a 1-line change: swap eventSpellID
-- to that cast's decimal id (cactbot lists hex; e.g. Shadow Spread 0x47A9 = 18345).
-- [7]/mechanicTime 40.9 are best-guess from the cactbot ordinal; the wide timeRange +
-- the spell-id condition mean it still fires on the real cast. Confirm placement in the
-- GUI timeline list and tell me if it landed on the wrong mechanic so I can fix [N].

local tbl =
{
	[7] =
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
local boss = (eventArgs and eventArgs.entityID and TensorCore.mGetEntity(eventArgs.entityID)) or TensorCore.mGetTarget()
if boss and boss.pos then
    local lines = TensorCore.getStaticDrawer(0xA0FF3030, 1.2)
    for i = 0, 7 do
        local h = i * (math.pi / 4)
        lines:addTimedRect(6000, boss.pos.x, boss.pos.y, boss.pos.z, 28, 4, h, 0, false)
    end
    TensorCore.getStaticDrawer(0xC0FFCC00, 0.8):addTimedCircleOnEnt(6000, boss.id, 2, 0, false, true)
    d("[AJ] Proteans draw fired (Ravenous Assault)")
end
self.used = true]],
							conditions =
							{

								{
									"c0a17e57-0000-4000-8000-000000000001",
									true,
								},
							},
							endIfUsed = true,
							uuid = "a0a17e57-0000-4000-8000-000000000001",
							version = 2.1,
						},
					},
				},
				conditions =
				{

					{
						data =
						{
							category = "Event",
							dequeueIfLuaFalse = true,
							eventArgType = 2,
							eventSpellID = 18342,
							name = "Is Ravenous Assault",
							uuid = "c0a17e57-0000-4000-8000-000000000001",
							version = 3,
						},
					},
				},
				eventType = 3,
				loop = false,
				mechanicTime = 40.9,
				name = "[AJ] Proteans (Ravenous Assault)",
				timeRange = true,
				timelineIndex = 7,
				timerStartOffset = -200,
				timerEndOffset = 600,
				uuid = "b0a17e57-0000-4000-8000-000000000001",
				version = 2,
			},
		},
	},
	inheritedProfiles =
	{
	},
	timelineName = "hadesex",
	version = "1.0.0",
}

return tbl
