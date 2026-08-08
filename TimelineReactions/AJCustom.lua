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
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorRequiem3_Hotbar_Troubadour",
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
				name = "Troub",
				timeRange = true,
				timelineIndex = 7,
				timerEndOffset = -10,
				timerStartOffset = -14.5,
				uuid = "5a7b579f-afe2-f9ea-a137-5725457b3739",
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
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorRequiem3_Hotbar_Troubadour",
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
				name = "Troub",
				timeRange = true,
				timelineIndex = 26,
				timerEndOffset = -10,
				timerStartOffset = -14.5,
				uuid = "348e4034-db6f-9d9a-a19b-0cbc7628efc2",
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
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "if not AJLOG then function AJLOG(m) d(m) pcall(function() local f=io.open(\"D:/FFXIV/ajrx_reactions.log\",\"a\") if f then f:write(m..string.char(10)) f:close() end end) end end\nif data.brdp1od then return end\nlocal t = TensorCore.mGetTarget()\nlocal hp = t and t.hp and t.hp.percent\nif data.brdp1off == nil then data.brdp1off = true AJLOG(\"[AJRX-BRD] BRD-P1-15% OFF ARMED hp<=15 cur=\"..tostring(hp)) end\nif not (hp and hp <= 15) then return end\ndata.brdp1od = true\nACR_TensorRequiem3_CD = false\nACR_TensorRequiem3_ApexArrow = false\nACR_TensorRequiem3_Sidewinder = false\nACR_TensorRequiem3_DoTs = false\nACR_TensorRequiem3_IronJaws = false\nACR_TensorRequiem3_Songs = true\nAJLOG(\"[AJRX-BRD] BRD-P1-15% CDs-OFF FIRED t=\"..tostring(Now())..\" hp=\"..tostring(hp)..\" nowCD=\"..tostring(ACR_TensorRequiem3_CD))\nSendTextCommand(\"/e [AJ-BRD] >>>>> BRD-P1-15% CDs OFF <se.9>\")\nself.used = true",
							endIfUsed = true,
							gVar = "ACR_TensorRequiem3_CD",
							uuid = "brd102000-0000-4b00-8000-000000000102",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				enabled = false,
				eventType = 12,
				loop = true,
				mechanicTime = 207.87965305988,
				name = "BRD P1 15% OFF",
				timeRange = true,
				timelineIndex = 39,
				timerEndOffset = -11,
				timerStartOffset = -38,
				uuid = "brd101000-0000-4b00-8000-000000000101",
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
							actionLua = "if not AJLOG then function AJLOG(m) d(m) pcall(function() local f=io.open(\"D:/FFXIV/ajrx_reactions.log\",\"a\") if f then f:write(m..string.char(10)) f:close() end end) end end\nACR_TensorRequiem3_CD = true\nACR_TensorRequiem3_ApexArrow = true\nACR_TensorRequiem3_Sidewinder = true\nACR_TensorRequiem3_DoTs = true\nACR_TensorRequiem3_IronJaws = true\nAJLOG(\"[AJRX-BRD] BRD-P1>P2 CDs-ON FIRED t=\"..tostring(Now())..\" nowCD=\"..tostring(ACR_TensorRequiem3_CD))\nSendTextCommand(\"/e [AJ-BRD] >>>>> BRD-P1>P2 CDs ON <se.10>\")\nself.used = true",
							endIfUsed = true,
							uuid = "brd104000-0000-4b00-8000-000000000104",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				enabled = false,
				mechanicTime = 207.87965305988,
				name = "BRD P1>P2 ON",
				timeRange = true,
				timelineIndex = 39,
				timerEndOffset = -7,
				timerStartOffset = -9.3999996185303,
				uuid = "brd103000-0000-4b00-8000-000000000103",
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
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorRequiem3_Hotbar_Troubadour",
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
				name = "Troub",
				timeRange = true,
				timelineIndex = 41,
				timerEndOffset = -10,
				timerStartOffset = -14.5,
				uuid = "ebebff2c-4b95-de6b-adbf-eb651a514d63",
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
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorRequiem3_Hotbar_Troubadour",
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
				name = "Troub",
				timeRange = true,
				timelineIndex = 66,
				timerEndOffset = -10,
				timerStartOffset = -14.5,
				uuid = "c83f9fc2-6cbe-d4ce-aaa5-f16845e6ec23",
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
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "if not AJLOG then function AJLOG(m) d(m) pcall(function() local f=io.open(\"D:/FFXIV/ajrx_reactions.log\",\"a\") if f then f:write(m..string.char(10)) f:close() end end) end end\nif data.brdp2od then return end\nlocal t = TensorCore.mGetTarget()\nlocal hp = t and t.hp and t.hp.percent\nif data.brdp2off == nil then data.brdp2off = true AJLOG(\"[AJRX-BRD] BRD-P2-1% OFF ARMED hp<=1 cur=\"..tostring(hp)) end\nif not (hp and hp <= 1) then return end\ndata.brdp2od = true\nACR_TensorRequiem3_CD = false\nACR_TensorRequiem3_ApexArrow = false\nACR_TensorRequiem3_Sidewinder = false\nACR_TensorRequiem3_DoTs = false\nACR_TensorRequiem3_IronJaws = false\nACR_TensorRequiem3_Songs = true\nAJLOG(\"[AJRX-BRD] BRD-P2-1% CDs-OFF FIRED t=\"..tostring(Now())..\" hp=\"..tostring(hp)..\" nowCD=\"..tostring(ACR_TensorRequiem3_CD))\nSendTextCommand(\"/e [AJ-BRD] >>>>> BRD-P2-1% CDs OFF <se.13>\")\nself.used = true",
							endIfUsed = true,
							gVar = "ACR_TensorRequiem3_CD",
							uuid = "brd202000-0000-4b00-8000-000000000202",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				enabled = false,
				eventType = 12,
				loop = true,
				mechanicTime = 377.30637120621,
				name = "BRD P2 1% OFF",
				timeRange = true,
				timelineIndex = 73,
				timerEndOffset = 4,
				timerStartOffset = -25,
				uuid = "brd201000-0000-4b00-8000-000000000201",
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
							actionLua = "if not AJLOG then function AJLOG(m) d(m) pcall(function() local f=io.open(\"D:/FFXIV/ajrx_reactions.log\",\"a\") if f then f:write(m..string.char(10)) f:close() end end) end end\nACR_TensorRequiem3_CD = true\nACR_TensorRequiem3_ApexArrow = true\nACR_TensorRequiem3_Sidewinder = true\nACR_TensorRequiem3_DoTs = true\nACR_TensorRequiem3_IronJaws = true\nAJLOG(\"[AJRX-BRD] BRD-P2>P3 CDs-ON FIRED t=\"..tostring(Now())..\" nowCD=\"..tostring(ACR_TensorRequiem3_CD))\nSendTextCommand(\"/e [AJ-BRD] >>>>> BRD-P2>P3 CDs ON <se.14>\")\nself.used = true",
							endIfUsed = true,
							gVar = "ACR_TensorRequiem3_CD",
							uuid = "brd204000-0000-4b00-8000-000000000204",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				enabled = false,
				mechanicTime = 377.30637120621,
				name = "BRD P2>P3 ON",
				timeRange = true,
				timelineIndex = 73,
				timerEndOffset = 7.5,
				timerStartOffset = 5.1999998092651,
				uuid = "brd203000-0000-4b00-8000-000000000203",
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
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorRequiem3_Hotbar_Troubadour",
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
				name = "Troub",
				timeRange = true,
				timelineIndex = 98,
				timerEndOffset = -11.5,
				timerStartOffset = -14.5,
				uuid = "4f940247-a578-a545-931b-356660b9608c",
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
							actionLua = "if not AJLOG then function AJLOG(m) d(m) pcall(function() local f=io.open(\"D:/FFXIV/ajrx_reactions.log\",\"a\") if f then f:write(m..string.char(10)) f:close() end end) end end\nif data.wp3done then return end\nlocal a = ActionList:Get(1, 3559)\nif a == nil then return end\nif data.wp3arm == nil then data.wp3arm = true AJLOG(\"[AJRX-BRD] P2>P3 WM-FORCE ARMED cdrem=\"..tostring(a.cdmax - a.cd)) end\nif (a.cdmax - a.cd) >= 0.5 then return end\nlocal ok = false\npcall(function() ok = a:Cast() end)\nif not ok then return end\ndata.wp3done = true\nAJLOG(\"[AJRX-BRD] P2>P3 WM-FORCE LANDED t=\"..tostring(Now()))\nSendTextCommand(\"/e [AJ-BRD] >>>>> P2>P3 Wanderers FORCED <se.5>\")\nself.used = true",
							endIfUsed = true,
							uuid = "brd812000-0000-4b00-8000-000000000812",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				enabled = false,
				eventType = 12,
				loop = true,
				mechanicTime = 518.31461099411,
				name = "BRD P2>P3 WM force",
				timeRange = true,
				timelineIndex = 98,
				timerEndOffset = -16,
				timerStartOffset = -46,
				uuid = "brd811000-0000-4b00-8000-000000000811",
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
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorRequiem3_Hotbar_Troubadour",
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
				name = "Troub",
				timeRange = true,
				timelineIndex = 128,
				timerEndOffset = 1,
				timerStartOffset = -3,
				uuid = "70d1b97f-0572-388f-a74e-2477fc7beb99",
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
							actionLua = "if not AJLOG then function AJLOG(m) d(m) pcall(function() local f=io.open(\"D:/FFXIV/ajrx_reactions.log\",\"a\") if f then f:write(m..string.char(10)) f:close() end end) end end\nif data.brdp3od then return end\nlocal t = TensorCore.mGetTarget()\nlocal hp = t and t.hp and t.hp.percent\nif data.brdp3off == nil then data.brdp3off = true AJLOG(\"[AJRX-BRD] BRD-P3-1% OFF ARMED hp<=1 cur=\"..tostring(hp)) end\nif not (hp and hp <= 1) then return end\ndata.brdp3od = true\nACR_TensorRequiem3_CD = false\nACR_TensorRequiem3_ApexArrow = false\nACR_TensorRequiem3_Sidewinder = false\nACR_TensorRequiem3_DoTs = false\nACR_TensorRequiem3_IronJaws = false\nACR_TensorRequiem3_Songs = true\nAJLOG(\"[AJRX-BRD] BRD-P3-1% CDs-OFF FIRED t=\"..tostring(Now())..\" hp=\"..tostring(hp)..\" nowCD=\"..tostring(ACR_TensorRequiem3_CD))\nSendTextCommand(\"/e [AJ-BRD] >>>>> BRD-P3-1% CDs OFF <se.15>\")\nself.used = true",
							endIfUsed = true,
							gVar = "ACR_TensorRequiem3_CD",
							uuid = "brd302000-0000-4b00-8000-000000000302",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				enabled = false,
				eventType = 12,
				loop = true,
				mechanicTime = 710.74107074838,
				name = "BRD P3 1% OFF",
				timeRange = true,
				timelineIndex = 146,
				timerEndOffset = 40,
				uuid = "brd301000-0000-4b00-8000-000000000301",
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
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "if not AJLOG then function AJLOG(m) d(m) pcall(function() local f=io.open(\"D:/FFXIV/ajrx_reactions.log\",\"a\") if f then f:write(m..string.char(10)) f:close() end end) end end\nif data.wp4done then return end\nlocal a = ActionList:Get(1, 3559)\nif a == nil then return end\nif data.wp4arm == nil then data.wp4arm = true AJLOG(\"[AJRX-BRD] P3>P4 WM-FORCE ARMED cdrem=\"..tostring(a.cdmax - a.cd)) end\nif (a.cdmax - a.cd) >= 0.5 then return end\nlocal ok = false\npcall(function() ok = a:Cast() end)\nif not ok then return end\ndata.wp4done = true\nAJLOG(\"[AJRX-BRD] P3>P4 WM-FORCE LANDED t=\"..tostring(Now()))\nSendTextCommand(\"/e [AJ-BRD] >>>>> P3>P4 Wanderers FORCED <se.6>\")\nself.used = true",
							endIfUsed = true,
							uuid = "brd822000-0000-4b00-8000-000000000822",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				enabled = false,
				eventType = 12,
				loop = true,
				mechanicTime = 710.74107074838,
				name = "BRD P3>P4 WM force",
				timeRange = true,
				timelineIndex = 146,
				timerEndOffset = 26,
				timerStartOffset = 10,
				uuid = "brd821000-0000-4b00-8000-000000000821",
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
							actionLua = "if not AJLOG then function AJLOG(m) d(m) pcall(function() local f=io.open(\"D:/FFXIV/ajrx_reactions.log\",\"a\") if f then f:write(m..string.char(10)) f:close() end end) end end\nACR_TensorRequiem3_CD = true\nACR_TensorRequiem3_ApexArrow = true\nACR_TensorRequiem3_Sidewinder = true\nACR_TensorRequiem3_DoTs = true\nACR_TensorRequiem3_IronJaws = true\nAJLOG(\"[AJRX-BRD] BRD-P3>P4 CDs-ON FIRED t=\"..tostring(Now())..\" nowCD=\"..tostring(ACR_TensorRequiem3_CD))\nSendTextCommand(\"/e [AJ-BRD] >>>>> BRD-P3>P4 CDs ON <se.16>\")\nself.used = true",
							endIfUsed = true,
							gVar = "ACR_TensorRequiem3_CD",
							uuid = "brd304000-0000-4b00-8000-000000000304",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				enabled = false,
				mechanicTime = 801.88345429349,
				name = "BRD P3>P4 ON",
				timeRange = true,
				timelineIndex = 150,
				timerEndOffset = 1,
				timerStartOffset = -1.7999999523163,
				uuid = "brd303000-0000-4b00-8000-000000000303",
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
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorRequiem3_Hotbar_Troubadour",
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
				name = "Troub",
				timeRange = true,
				timelineIndex = 154,
				timerEndOffset = -10,
				timerStartOffset = -14.5,
				uuid = "c39049bb-87f6-09a2-a987-f0fc900938ac",
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
							gVar = "ACR_TensorRequiem3_CD",
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
							gVar = "ACR_TensorRequiem3_CD",
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
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "Lua",
							actionLua = "if not AJLOG then function AJLOG(m) d(m) pcall(function() local f=io.open(\"D:/FFXIV/ajrx_reactions.log\",\"a\") if f then f:write(m..string.char(10)) f:close() end end) end end\nif data.brdp4od then return end\nlocal t = TensorCore.mGetTarget()\nlocal hp = t and t.hp and t.hp.percent\nif data.brdp4off == nil then data.brdp4off = true AJLOG(\"[AJRX-BRD] BRD-P4-25% OFF ARMED hp<=25 cur=\"..tostring(hp)) end\nif not (hp and hp <= 25) then return end\ndata.brdp4od = true\nACR_TensorRequiem3_CD = false\nACR_TensorRequiem3_ApexArrow = false\nACR_TensorRequiem3_Sidewinder = false\nACR_TensorRequiem3_DoTs = false\nACR_TensorRequiem3_IronJaws = false\nACR_TensorRequiem3_Songs = true\nAJLOG(\"[AJRX-BRD] BRD-P4-25% CDs-OFF FIRED t=\"..tostring(Now())..\" hp=\"..tostring(hp)..\" nowCD=\"..tostring(ACR_TensorRequiem3_CD))\nSendTextCommand(\"/e [AJ-BRD] >>>>> BRD-P4-25% CDs OFF <se.11>\")\nself.used = true",
							endIfUsed = true,
							gVar = "ACR_TensorRequiem3_CD",
							uuid = "brd402000-0000-4b00-8000-000000000402",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				enabled = false,
				eventType = 12,
				loop = true,
				mechanicTime = 934.65552902023,
				name = "BRD P4 25% OFF",
				timeRange = true,
				timelineIndex = 170,
				timerEndOffset = -1,
				timerStartOffset = -28,
				uuid = "brd401000-0000-4b00-8000-000000000401",
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
							actionLua = "if not AJLOG then function AJLOG(m) d(m) pcall(function() local f=io.open(\"D:/FFXIV/ajrx_reactions.log\",\"a\") if f then f:write(m..string.char(10)) f:close() end end) end end\nACR_TensorRequiem3_CD = true\nACR_TensorRequiem3_ApexArrow = true\nACR_TensorRequiem3_Sidewinder = true\nACR_TensorRequiem3_DoTs = true\nACR_TensorRequiem3_IronJaws = true\nAJLOG(\"[AJRX-BRD] BRD-P4>P5 CDs-ON FIRED t=\"..tostring(Now())..\" nowCD=\"..tostring(ACR_TensorRequiem3_CD))\nSendTextCommand(\"/e [AJ-BRD] >>>>> BRD-P4>P5 CDs ON <se.12>\")\nself.used = true",
							endIfUsed = true,
							gVar = "ACR_TensorRequiem3_CD",
							uuid = "brd404000-0000-4b00-8000-000000000404",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				enabled = false,
				mechanicTime = 934.65552902023,
				name = "BRD P4>P5 ON",
				timeRange = true,
				timelineIndex = 170,
				timerEndOffset = 3,
				timerStartOffset = 1,
				uuid = "brd403000-0000-4b00-8000-000000000403",
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
							actionLua = "if not AJLOG then function AJLOG(m) d(m) pcall(function() local f=io.open(\"D:/FFXIV/ajrx_reactions.log\",\"a\") if f then f:write(m..string.char(10)) f:close() end end) end end\nif data.sb5done then return end\nif HasBuff(Player.id, 2216) or HasBuff(Player.id, 2217) or HasBuff(Player.id, 2218) then return end\nlocal ids = {3559, 114, 116}\nlocal pick = nil\nlocal nm = 0\nfor i=1,3 do\nlocal a = ActionList:Get(1, ids[i])\nif a ~= nil and (a.cdmax - a.cd) < 0.5 then pick = a nm = ids[i] break end\nend\nif data.sb5arm == nil then data.sb5arm = true AJLOG(\"[AJRX-BRD] P4>P5 SONG-BRIDGE ARMED ready=\"..tostring(nm)) end\nif pick == nil then return end\nlocal ok = false\npcall(function() ok = pick:Cast() end)\nif not ok then return end\ndata.sb5done = true\nAJLOG(\"[AJRX-BRD] P4>P5 SONG-BRIDGE LANDED id=\"..tostring(nm)..\" t=\"..tostring(Now()))\nSendTextCommand(\"/e [AJ-BRD] >>>>> P4>P5 song bridged <se.7>\")\nself.used = true",
							endIfUsed = true,
							uuid = "brd832000-0000-4b00-8000-000000000832",
							version = 2.1,
						},
					},
				},
				conditions = 
				{
				},
				enabled = false,
				eventType = 12,
				loop = true,
				mechanicTime = 934.65552902023,
				name = "BRD P4>P5 song bridge",
				timeRange = true,
				timelineIndex = 170,
				timerEndOffset = 40,
				timerStartOffset = 16,
				uuid = "brd831000-0000-4b00-8000-000000000831",
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
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorRequiem3_Hotbar_Troubadour",
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
				name = "Troub",
				timeRange = true,
				timelineIndex = 178,
				timerEndOffset = -10,
				timerStartOffset = -14.5,
				uuid = "6546b08f-0bf5-6e0c-bedf-7ac4be9bdb64",
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
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorRequiem3_Hotbar_Troubadour",
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
				name = "Troub",
				timeRange = true,
				timelineIndex = 209,
				timerEndOffset = -10,
				timerStartOffset = -14.5,
				uuid = "ba8f9342-38e3-8b96-8ca6-d8c19528a0dd",
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
		
		{
			data = 
			{
				actions = 
				{
					
					{
						data = 
						{
							aType = "ACR",
							gVar = "ACR_TensorRequiem3_Hotbar_Troubadour",
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
				name = "Troub",
				timeRange = true,
				timelineIndex = 226,
				timerEndOffset = -10,
				timerStartOffset = -14.5,
				uuid = "e84c644b-2c8a-fccc-8124-de8d4824b0bf",
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