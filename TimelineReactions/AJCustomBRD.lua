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