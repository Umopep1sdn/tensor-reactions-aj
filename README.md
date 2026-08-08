# tensor-reactions-aj

Custom **FFXIV TensorReactions** (Minion) profiles — positional **arrows/draws** and **ACR holds** for ultimates/savages, starting with **DMU** (the Kefka ultimate).

## Install (auto-updating)
In-game: **AnyoneCore → Third Party Reactions → Sources → Add**, paste this repo's URL:
```
https://github.com/Umopep1sdn/tensor-reactions-aj
```
AnyoneCore verifies the repo, copies the `GeneralReactions/` and `TimelineReactions/` folders into your TensorReactions install, and rechecks for updates every ~10 minutes. Then inherit/select the profiles in the Reactions UI.

## Layout
- `TimelineReactions/AJCustom.lua` - the MCH DMU timeline profile (Tactician/Dismantle hotbar toggles, WF and pot holds, HP-gated cooldown toggle-offs via TensorMagnum3 gVars). Select `AJCustom` as the DMU timeline profile on MCH.
- `TimelineReactions/AJCustomBRD.lua` - the BRD DMU timeline profile (Troubadour toggles, TensorRequiem3 CD gates, song bridges; still work in progress). Select `AJCustomBRD` on BRD.
- Both inherit the store modules `anyone\dmu\modules\core`, `draws`, and `optimization`, so keep the stock Anyone DMU store installed.
- `GeneralReactions/AJ/` — general (event-based) profiles. `AJTest.lua` = a draw-proof test (center circle + N/E/S/W cardinal rings around you on OnUpdate; confirm coordinate accuracy at the SSS dummy).
- `TimelineReactions/AJ/` — timeline profiles (DMU phases, added incrementally).

Only `GeneralReactions/` and `TimelineReactions/` are copied by AnyoneCore; everything else is ignored.
