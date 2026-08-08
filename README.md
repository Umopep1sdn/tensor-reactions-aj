# tensor-reactions-aj

Custom **FFXIV TensorReactions** (Minion) profiles — positional **arrows/draws** and **ACR holds** for ultimates/savages, starting with **DMU** (the Kefka ultimate).

## Install (auto-updating)
In-game: **AnyoneCore → Third Party Reactions → Sources → Add**, paste this repo's URL:
```
https://github.com/Umopep1sdn/tensor-reactions-aj
```
AnyoneCore verifies the repo, copies the `GeneralReactions/` and `TimelineReactions/` folders into your TensorReactions install, and rechecks for updates every ~10 minutes. Then inherit/select the profiles in the Reactions UI.

## Layout
- `TimelineReactions/AJCustom.lua` - the main DMU timeline profile (MCH/BRD holds, potions, WF holds, HP-gated cooldown toggle-offs). Inherits the store modules `anyone\dmu\modules\core`, `draws`, and `optimization`, so keep the stock Anyone DMU store installed. In the Reactions UI, set the DMU timeline profile to `AJCustom` for MCH/BRD.
- `GeneralReactions/AJ/` — general (event-based) profiles. `AJTest.lua` = a draw-proof test (center circle + N/E/S/W cardinal rings around you on OnUpdate; confirm coordinate accuracy at the SSS dummy).
- `TimelineReactions/AJ/` — timeline profiles (DMU phases, added incrementally).

Only `GeneralReactions/` and `TimelineReactions/` are copied by AnyoneCore; everything else is ignored.
