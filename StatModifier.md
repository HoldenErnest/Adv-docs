# Stat Modifier

This is the object that gets passed around to modify Characters [StatSheets](./StatSheet.md)

equips have these as well as effects can give these. (These are all added up in the [StatsManager](./StateManager.md))

All of these must be FLOATS since they potentially can be used as multipliers

## Properties
 - `multiplies` - does this multiply? add by default

 - `Constitution` - increase Max health
 - `Strength` - increase in physical damage (also slows less when wearing heavy gear)
 - `Intelligence` - increase in any magic type damage. Can also affect [Dialogue](./Dialogue.md)
 - `Evasion` - polynomial decrease to each points effect? 50% evade at 50 points? -- ignored by true damage
 - `Speed` - affects [Controller](./Controller.md) speed value. `weight` can also lower this depending on `strength`
 - `Armor` - % physical resist [Skill](./Skill.md) damage
 - `gas_resist`
 - `liquid_resist`
 - `solid_resist`
 - `weight` - total weight of your gear. Higher carryweight slows you down(%)
 - `reflect` - how much damage is reflected back when you get hit (does not reflect damage with damage type "true")

# TODO: check this over agian