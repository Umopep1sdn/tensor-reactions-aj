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
							aType = "ACR",
							gVar = "ACR_TensorMagnum3_Hotbar_Tactician",
							uuid = "166b8026-55dd-182d-bd58-ed8ef01e9ce5",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 42.238586763472,
				name = "Tact",
				timeRange = true,
				timelineIndex = 7,
				timerEndOffset = -10,
				timerStartOffset = -14.5,
				uuid = "6c2926ad-5285-1719-84be-27fcbb8a628f",
				version = 2,
			},
		},
	},
	[15] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorMagnum3_Hotbar_Dismantle",
							uuid = "6ca3fddb-c2a9-ce3b-8fc1-53104e1e1dc3",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 69.911881498834,
				name = "Dismantle",
				timeRange = true,
				timelineIndex = 15,
				timerOffset = -9.8999996185303,
				timerStartOffset = -9.8999996185303,
				uuid = "a053183d-1bf4-969c-903d-1050110c289d",
				version = 2,
			},
		},
	},
	[26] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorMagnum3_Hotbar_Tactician",
							uuid = "166b8026-55dd-182d-bd58-ed8ef01e9ce5",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 132.26514619605,
				name = "Tact",
				timeRange = true,
				timelineIndex = 26,
				timerEndOffset = -10,
				timerStartOffset = -14.5,
				uuid = "bdf3b0f2-1a4e-bbff-954c-dce980d3659a",
				version = 2,
			},
		},
	},
	[39] = 
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
							actionLua = "if not AJLOG then function AJLOG(m) d(m) pcall(function() local f=io.open(\"D:/FFXIV/ajrx_reactions.log\",\"a\") if f then f:write(m..string.char(10)) f:close() end end) end end\nif data.p1od then return end\nlocal t = TensorCore.mGetTarget()\nlocal hp = t and t.hp and t.hp.percent\nif data.p1off == nil then data.p1off = true AJLOG(\"[AJRX] P1-15% OFF ARMED polling hp<=15 curhp=\"..tostring(hp)) end\nif not (hp and hp <= 15) then return end\ndata.p1od = true\nACR_TensorMagnum3_CD = false\nACR_TensorMagnum3_Wildfire = false\nACR_TensorMagnum3_Hypercharge = false\nACR_TensorMagnum3_Reassemble = false\nACR_TensorMagnum3_Drill = false\nACR_TensorMagnum3_AirAnchor = false\nACR_TensorMagnum3_ChainSaw = false\nAJLOG(\"[AJRX] P1-15% CDs-OFF FIRED t=\"..tostring(Now())..\" bosshp=\"..tostring(hp)..\" nowWF=\"..tostring(ACR_TensorMagnum3_Wildfire)..\" nowCD=\"..tostring(ACR_TensorMagnum3_CD))\nSendTextCommand(\"/e [AJ] >>>>> P1-15% CDs OFF FIRED <se.3>\")\nself.used = true",
							endIfUsed = true,
							uuid = "afaf0039-0001-4a00-8000-000000000039",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				eventType = 12,
				loop = true,
				mechanicTime = 207.87965305988,
				name = "P1 15% CDs OFF",
				timeRange = true,
				timelineIndex = 39,
				timerEndOffset = -11,
				timerStartOffset = -38,
				uuid = "afaf0039-0002-4a00-8000-000000000039",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "if not AJLOG then function AJLOG(m) d(m) pcall(function() local f=io.open(\"D:/FFXIV/ajrx_reactions.log\",\"a\") if f then f:write(m..string.char(10)) f:close() end end) end end\nACR_TensorMagnum3_CD = true\nACR_TensorMagnum3_Wildfire = true\nACR_TensorMagnum3_Hypercharge = true\nACR_TensorMagnum3_Reassemble = true\nACR_TensorMagnum3_Drill = true\nACR_TensorMagnum3_AirAnchor = true\nACR_TensorMagnum3_ChainSaw = true\nAJLOG(\"[AJRX] P2-prep CDs-ON FIRED t=\"..tostring(Now())..\" nowWF=\"..tostring(ACR_TensorMagnum3_Wildfire))\nSendTextCommand(\"/e [AJ] >>>>> P2-prep CDs ON FIRED <se.4>\")\nself.used = true",
							endIfUsed = true,
							uuid = "afaf0139-0001-4a00-8000-000000000139",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 207.87965305988,
				name = "P2 prep CDs ON",
				timeRange = true,
				timelineIndex = 39,
				timerEndOffset = -7,
				timerStartOffset = -9.3999996185303,
				uuid = "afaf0139-0002-4a00-8000-000000000139",
				version = 2,
			},
		},
	},
	[41] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorMagnum3_Hotbar_Tactician",
							uuid = "166b8026-55dd-182d-bd58-ed8ef01e9ce5",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 235.34477128997,
				name = "Tact",
				timeRange = true,
				timelineIndex = 41,
				timerEndOffset = -10,
				timerStartOffset = -14.5,
				uuid = "a9a96fed-fef9-b77e-b567-57d35d6f1b05",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorMagnum3_Hotbar_Dismantle",
							uuid = "6ca3fddb-c2a9-ce3b-8fc1-53104e1e1dc3",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 235.34477128997,
				name = "Dismantle",
				timeRange = true,
				timelineIndex = 41,
				timerOffset = -9.8999996185303,
				timerStartOffset = -9.8999996185303,
				uuid = "55e410b4-0e6d-353a-b45c-9aa2f84053f1",
				version = 2,
			},
		},
	},
	[66] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorMagnum3_Hotbar_Tactician",
							uuid = "166b8026-55dd-182d-bd58-ed8ef01e9ce5",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 341.70452758191,
				name = "Tact",
				timeRange = true,
				timelineIndex = 66,
				timerEndOffset = -10,
				timerStartOffset = -14.5,
				uuid = "edcb8379-49bd-b4ea-82e9-836e3976d3a2",
				version = 2,
			},
		},
	},
	[73] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorMagnum3_Hotbar_Dismantle",
							uuid = "6ca3fddb-c2a9-ce3b-8fc1-53104e1e1dc3",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 377.30637120621,
				name = "Dismantle",
				timeRange = true,
				timelineIndex = 73,
				timerOffset = -9.8999996185303,
				timerStartOffset = -9.8999996185303,
				uuid = "3a55add1-92e5-1ed3-96a3-a9bc5ff9390d",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "if not AJLOG then function AJLOG(m) d(m) pcall(function() local f=io.open(\"D:/FFXIV/ajrx_reactions.log\",\"a\") if f then f:write(m..string.char(10)) f:close() end end) end end\nAJLOG(\"[AJRX] P2>P3 WF+POT HOLD FIRED t=\"..tostring(Now())..\" -> holdActionUntil WF(2878)=78s Pot(846)=72s\")\nSendTextCommand(\"/e [AJ] >>>>> P2>P3 WF+POT HOLD FIRED <se.5>\")\nTensorCore.API.TensorMagnum3.holdActionUntil(2878, Now() + 78000)\nTensorCore.API.TensorMagnum3.holdActionUntil(846, Now() + 72000)\nself.used = true",
							endIfUsed = true,
							uuid = "afaf0073-0001-4a00-8000-a1b2c3d40001",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 377.30637120621,
				name = "WF+Pot Hold P2-P3",
				timeRange = true,
				timelineIndex = 73,
				timerEndOffset = -16,
				timerStartOffset = -22,
				uuid = "4a5955f6-9733-291c-90b3-8d1481282aa2",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "if not AJLOG then function AJLOG(m) d(m) pcall(function() local f=io.open(\"D:/FFXIV/ajrx_reactions.log\",\"a\") if f then f:write(m..string.char(10)) f:close() end end) end end\nif data.p2od then return end\nlocal t = TensorCore.mGetTarget()\nlocal hp = t and t.hp and t.hp.percent\nif data.p2off == nil then data.p2off = true AJLOG(\"[AJRX] P2-1% OFF ARMED polling hp<=1 curhp=\"..tostring(hp)) end\nif not (hp and hp <= 1) then return end\ndata.p2od = true\nACR_TensorMagnum3_CD = false\nACR_TensorMagnum3_Wildfire = false\nACR_TensorMagnum3_Hypercharge = false\nACR_TensorMagnum3_Reassemble = false\nACR_TensorMagnum3_Drill = false\nACR_TensorMagnum3_AirAnchor = false\nACR_TensorMagnum3_ChainSaw = false\nAJLOG(\"[AJRX] P2-1% CDs-OFF FIRED t=\"..tostring(Now())..\" bosshp=\"..tostring(hp)..\" nowWF=\"..tostring(ACR_TensorMagnum3_Wildfire))\nSendTextCommand(\"/e [AJ] >>>>> P2-1% CDs OFF FIRED <se.7>\")\nself.used = true",
							endIfUsed = true,
							uuid = "afaf7302-0001-4a00-8000-000000000732",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				eventType = 12,
				loop = true,
				mechanicTime = 377.30637120621,
				name = "P2 1% CDs OFF",
				timeRange = true,
				timelineIndex = 73,
				timerEndOffset = 4,
				timerStartOffset = -25,
				uuid = "afaf7302-0002-4a00-8000-000000000732",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "if not AJLOG then function AJLOG(m) d(m) pcall(function() local f=io.open(\"D:/FFXIV/ajrx_reactions.log\",\"a\") if f then f:write(m..string.char(10)) f:close() end end) end end\nACR_TensorMagnum3_CD = true\nACR_TensorMagnum3_Wildfire = true\nACR_TensorMagnum3_Hypercharge = true\nACR_TensorMagnum3_Reassemble = true\nACR_TensorMagnum3_Drill = true\nACR_TensorMagnum3_AirAnchor = true\nACR_TensorMagnum3_ChainSaw = true\nAJLOG(\"[AJRX] P2>P3 CDs-ON FIRED t=\"..tostring(Now())..\" nowWF=\"..tostring(ACR_TensorMagnum3_Wildfire))\nSendTextCommand(\"/e [AJ] >>>>> P2>P3 CDs ON FIRED <se.8>\")\nself.used = true",
							endIfUsed = true,
							uuid = "afaf7303-0001-4a00-8000-000000000733",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 377.30637120621,
				name = "P2>P3 CDs ON",
				timeRange = true,
				timelineIndex = 73,
				timerEndOffset = 7.5,
				timerStartOffset = 5.1999998092651,
				uuid = "afaf7303-0002-4a00-8000-000000000733",
				version = 2,
			},
		},
	},
	[98] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorMagnum3_Hotbar_Tactician",
							uuid = "166b8026-55dd-182d-bd58-ed8ef01e9ce5",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 518.31461099411,
				name = "Tact",
				timeRange = true,
				timelineIndex = 98,
				timerEndOffset = -11.5,
				timerStartOffset = -14.5,
				uuid = "e1aeaf38-731b-817d-bce1-cd28d8e7ac00",
				version = 2,
			},
		},
	},
	[122] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorMagnum3_Hotbar_Dismantle",
							uuid = "6ca3fddb-c2a9-ce3b-8fc1-53104e1e1dc3",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 608.39401598045,
				name = "Dismantle",
				timeRange = true,
				timelineIndex = 122,
				timerOffset = -9.8999996185303,
				timerStartOffset = -9.8999996185303,
				uuid = "dea8e56d-ced3-157f-9618-ad910af84e9c",
				version = 2,
			},
		},
	},
	[128] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorMagnum3_Hotbar_Tactician",
							uuid = "166b8026-55dd-182d-bd58-ed8ef01e9ce5",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 652.34305216234,
				name = "Tact",
				timeRange = true,
				timelineIndex = 128,
				timerEndOffset = 1,
				timerStartOffset = -3,
				uuid = "5a1c2276-55ff-aa5a-a617-aac4f1647fdf",
				version = 2,
			},
		},
	},
	[146] = 
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
							actionLua = "if not AJLOG then function AJLOG(m) d(m) pcall(function() local f=io.open(\"D:/FFXIV/ajrx_reactions.log\",\"a\") if f then f:write(m..string.char(10)) f:close() end end) end end\nif data.m3p2od then return end\nlocal t = TensorCore.mGetTarget()\nlocal hp = t and t.hp and t.hp.percent\nif data.m3p2off == nil then data.m3p2off = true AJLOG(\"[AJRX] P3-1% OFF ARMED polling hp<=1 curhp=\"..tostring(hp)) end\nif not (hp and hp <= 1) then return end\ndata.m3p2od = true\nACR_TensorMagnum3_CD = false\nACR_TensorMagnum3_Wildfire = false\nACR_TensorMagnum3_Hypercharge = false\nACR_TensorMagnum3_Reassemble = false\nACR_TensorMagnum3_Drill = false\nACR_TensorMagnum3_AirAnchor = false\nACR_TensorMagnum3_ChainSaw = false\nAJLOG(\"[AJRX] P3-1% CDs-OFF FIRED t=\"..tostring(Now())..\" bosshp=\"..tostring(hp)..\" nowWF=\"..tostring(ACR_TensorMagnum3_Wildfire))\nSendTextCommand(\"/e [AJ] >>>>> P3-1% CDs OFF FIRED <se.7>\")\nself.used = true",
							endIfUsed = true,
							uuid = "mch30100-0000-4c00-8000-00000000011",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				eventType = 12,
				loop = true,
				mechanicTime = 710.74107074838,
				name = "P3 1% CDs OFF",
				timeRange = true,
				timelineIndex = 146,
				timerEndOffset = 40,
				uuid = "mch30100-0000-4c00-8000-00000000012",
				version = 2,
			},
		},
	},
	[150] = 
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
							actionLua = "if not AJLOG then function AJLOG(m) d(m) pcall(function() local f=io.open(\"D:/FFXIV/ajrx_reactions.log\",\"a\") if f then f:write(m..string.char(10)) f:close() end end) end end\nACR_TensorMagnum3_Hotbar_Potion = true\nAJLOG(\"[AJRX] P3>P4 POT PRE-POP FIRED t=\"..tostring(Now())..\" -> Hotbar_Potion=\"..tostring(ACR_TensorMagnum3_Hotbar_Potion))\nSendTextCommand(\"/e [AJ] >>>>> P3>P4 POT PRE-POP FIRED <se.6>\")\nself.used = true",
							endIfUsed = true,
							gVar = "ACR_TensorMagnum3_CD",
							uuid = "afaf0150-0001-4a00-8000-000000000150",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 801.88345429349,
				name = "Pot PrePop P3>P4",
				timeRange = true,
				timelineIndex = 150,
				timerStartOffset = -1.7999999523163,
				uuid = "afaf0150-0002-4a00-8000-000000000150",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "if not AJLOG then function AJLOG(m) d(m) pcall(function() local f=io.open(\"D:/FFXIV/ajrx_reactions.log\",\"a\") if f then f:write(m..string.char(10)) f:close() end end) end end\nACR_TensorMagnum3_CD = true\nACR_TensorMagnum3_Wildfire = true\nACR_TensorMagnum3_Hypercharge = true\nACR_TensorMagnum3_Reassemble = true\nACR_TensorMagnum3_Drill = true\nACR_TensorMagnum3_AirAnchor = true\nACR_TensorMagnum3_ChainSaw = true\nAJLOG(\"[AJRX] P3>P4 CDs-ON FIRED t=\"..tostring(Now())..\" nowWF=\"..tostring(ACR_TensorMagnum3_Wildfire))\nSendTextCommand(\"/e [AJ] >>>>> P3>P4 CDs ON FIRED <se.8>\")\nself.used = true",
							endIfUsed = true,
							uuid = "mch30200-0000-4c00-8000-00000000021",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 801.88345429349,
				name = "P3>P4 CDs ON",
				timeRange = true,
				timelineIndex = 150,
				timerEndOffset = 1,
				timerStartOffset = -1.8,
				uuid = "mch30200-0000-4c00-8000-00000000022",
				version = 2,
			},
		},
	},
	[154] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorMagnum3_Hotbar_Tactician",
							uuid = "166b8026-55dd-182d-bd58-ed8ef01e9ce5",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 831.10515604713,
				name = "Tact",
				timeRange = true,
				timelineIndex = 154,
				timerEndOffset = -10,
				timerStartOffset = -14.5,
				uuid = "37953f62-541a-14d3-a4da-6f9e0cd33941",
				version = 2,
			},
		},
	},
	[156] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorMagnum3_Hotbar_Dismantle",
							uuid = "6ca3fddb-c2a9-ce3b-8fc1-53104e1e1dc3",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 841.08843971594,
				name = "Dismantle",
				timeRange = true,
				timelineIndex = 156,
				timerOffset = -9.8999996185303,
				timerStartOffset = -9.8999996185303,
				uuid = "42ebd7ca-d0ae-5068-9bbc-2fe8ea2e45a7",
				version = 2,
			},
		},
	},
	[170] = 
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
							actionLua = "if not AJLOG then function AJLOG(m) d(m) pcall(function() local f=io.open(\"D:/FFXIV/ajrx_reactions.log\",\"a\") if f then f:write(m..string.char(10)) f:close() end end) end end\nif data.p4od then return end\nlocal t = TensorCore.mGetTarget()\nlocal hp = t and t.hp and t.hp.percent\nif data.p4off == nil then data.p4off = true AJLOG(\"[AJRX] P4-25% OFF ARMED polling hp<=25 curhp=\"..tostring(hp)) end\nif not (hp and hp <= 25) then return end\ndata.p4od = true\nACR_TensorMagnum3_CD = false\nACR_TensorMagnum3_Wildfire = false\nACR_TensorMagnum3_Hypercharge = false\nACR_TensorMagnum3_Reassemble = false\nACR_TensorMagnum3_Drill = false\nACR_TensorMagnum3_AirAnchor = false\nACR_TensorMagnum3_ChainSaw = false\nAJLOG(\"[AJRX] P4-25% CDs-OFF FIRED t=\"..tostring(Now())..\" bosshp=\"..tostring(hp)..\" nowWF=\"..tostring(ACR_TensorMagnum3_Wildfire)..\" nowCD=\"..tostring(ACR_TensorMagnum3_CD))\nSendTextCommand(\"/e [AJ] >>>>> P4-25% CDs OFF FIRED <se.11>\")\nself.used = true",
							endIfUsed = true,
							uuid = "afaf1700-0001-4a00-8000-000000000170",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				eventType = 12,
				loop = true,
				mechanicTime = 934.65552902023,
				name = "P4 25% CDs OFF",
				timeRange = true,
				timelineIndex = 170,
				timerEndOffset = -1,
				timerStartOffset = -28,
				uuid = "afaf1700-0002-4a00-8000-000000000170",
				version = 2,
			},
		},
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "if not AJLOG then function AJLOG(m) d(m) pcall(function() local f=io.open(\"D:/FFXIV/ajrx_reactions.log\",\"a\") if f then f:write(m..string.char(10)) f:close() end end) end end\nACR_TensorMagnum3_CD = true\nACR_TensorMagnum3_Wildfire = true\nACR_TensorMagnum3_Hypercharge = true\nACR_TensorMagnum3_Reassemble = true\nACR_TensorMagnum3_Drill = true\nACR_TensorMagnum3_AirAnchor = true\nACR_TensorMagnum3_ChainSaw = true\nAJLOG(\"[AJRX] P5-prep CDs-ON FIRED t=\"..tostring(Now())..\" nowWF=\"..tostring(ACR_TensorMagnum3_Wildfire))\nSendTextCommand(\"/e [AJ] >>>>> P5-prep CDs ON FIRED <se.12>\")\nself.used = true",
							endIfUsed = true,
							uuid = "afaf1701-0001-4a00-8000-000000000171",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 934.65552902023,
				name = "P5 prep CDs ON",
				timeRange = true,
				timelineIndex = 170,
				timerEndOffset = 3,
				timerStartOffset = 1,
				uuid = "afaf1701-0002-4a00-8000-000000000171",
				version = 2,
			},
		},
	},
	[178] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorMagnum3_Hotbar_Tactician",
							uuid = "166b8026-55dd-182d-bd58-ed8ef01e9ce5",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 981.83831871021,
				name = "Tact",
				timeRange = true,
				timelineIndex = 178,
				timerEndOffset = -10,
				timerStartOffset = -14.5,
				uuid = "125836ff-f2e3-461e-9b88-62d4c0eff166",
				version = 2,
			},
		},
	},
	[192] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorMagnum3_Hotbar_Dismantle",
							uuid = "6ca3fddb-c2a9-ce3b-8fc1-53104e1e1dc3",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 1018.6634086512,
				name = "Dismantle",
				timeRange = true,
				timelineIndex = 192,
				timerOffset = -9.8999996185303,
				timerStartOffset = -9.8999996185303,
				uuid = "fec99265-3674-7a56-9ce6-6b44d4ebe3af",
				version = 2,
			},
		},
	},
	[209] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorMagnum3_Hotbar_Tactician",
							uuid = "166b8026-55dd-182d-bd58-ed8ef01e9ce5",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 1063.6903949829,
				name = "Tact",
				timeRange = true,
				timelineIndex = 209,
				timerEndOffset = -10,
				timerStartOffset = -14.5,
				uuid = "cda725ca-c796-6055-88f0-42a4d1490c5a",
				version = 2,
			},
		},
	},
	[221] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorMagnum3_Hotbar_Dismantle",
							uuid = "6ca3fddb-c2a9-ce3b-8fc1-53104e1e1dc3",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 1133.3461474604,
				name = "Dismantle",
				timeRange = true,
				timelineIndex = 221,
				timerOffset = -9.8999996185303,
				timerStartOffset = -9.8999996185303,
				uuid = "db489962-8dae-95fc-a199-60435f50b4f7",
				version = 2,
			},
		},
	},
	[226] = 
	{
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorMagnum3_Hotbar_Tactician",
							uuid = "166b8026-55dd-182d-bd58-ed8ef01e9ce5",
							variableTogglesType = 2,
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				mechanicTime = 1154.7445474604,
				name = "Tact",
				timeRange = true,
				timelineIndex = 226,
				timerEndOffset = -10,
				timerStartOffset = -14.5,
				uuid = "1192e77e-8168-754b-a9f8-b57597161d71",
				version = 2,
			},
		},
	},
	inheritedProfiles = 
	{
		"store\\anyone\\dmu\\modules\\core",
		"store\\anyone\\dmu\\modules\\draws",
		"store\\anyone\\dmu\\modules\\optimization",
	},
	timelineName = "dmu",
	version = "1.5.5",
}



return tbl