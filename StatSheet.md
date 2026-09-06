# Stat Sheet

This is a structure to hold any stat that can affect a given Character.

Not to be confused with [StatModifier](./StatModifier.md) which modifies these stats

## Properties

 - `Memory` - how many skills can you have on your hotbar at once. Up to probably 9 -- these are gained through main story events probably
 
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

In general, 'weight', 'armor', and 'resists' are the only things that [LevelStat](./LevelStat.md) cant increase



### References
 - [TODO](./TODO.md)
 - [Equipment](./Equipment.md)
 - [StatsManager](./StatsManager.md)
