# Stats

This is a structure to hold any stat that can affect a given Character.
This structure is passed into a Characters [StatsManager](./StatsManager.md) whenever it is "in use"

## Properties

 - `Constitution` - Max health
 - `Strength` - increase in physical damage, 
 - `Dexterity` - small increase in speed as well as a small increase in damage
 - `Intelligence` - increase in any magic type damage. Can also affect [Dialogue](./Dialogue.md)
 - `Evasion` - polynomial decrease to each points effect? 50% evade at 50 points?
 - `Speed` - affects [Controller](./Controller.md) speed value. `weight` can also lower this depending on `strength`
 - `Armor` - % resist [Skill](./Skill.md) damage
 - `gas_resist`
 - `liquid_resist`
 - `solid_resist`
 - `weight` - total weight of your gear. Higher carryweight slows you down(%?)


In general, 'weight', 'armor', and 'resists' are the only things that [LevelStat](./LevelStat.md) wont increase



### References
 - [Reforge](./Reforge.md)
 - [Equipment](./Equipment.md)
 - [SkillTypes](./SkillTypes.md)
