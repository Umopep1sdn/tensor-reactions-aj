# tensor-reactions-aj

Custom **FFXIV TensorReactions** (Minion) profiles — positional **arrows/draws** and **ACR holds** for ultimates/savages, starting with **DMU** (the Kefka ultimate).

## Install (auto-updating)
In-game: **AnyoneCore → Third Party Reactions → Sources → Add**, paste this repo's URL:
```
https://github.com/Umopep1sdn/tensor-reactions-aj
```
AnyoneCore verifies the repo, copies the `GeneralReactions/` and `TimelineReactions/` folders into your TensorReactions install, and rechecks for updates every ~10 minutes. Then inherit/select the profiles in the Reactions UI.

## Layout
- `GeneralReactions/AJ/` — general (event-based) profiles. `AJTest.lua` = a draw-proof test (center circle + N/E/S/W cardinal rings around you on OnUpdate; confirm coordinate accuracy at the SSS dummy).
- `TimelineReactions/AJ/` — timeline profiles (DMU phases, added incrementally).

Only `GeneralReactions/` and `TimelineReactions/` are copied by AnyoneCore; everything else is ignored.
