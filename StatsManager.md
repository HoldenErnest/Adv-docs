# Stats

This controls all the general stats for a given [Character](./Character.md).
Some of these properties you can 'spec' into using Attribute points which are given based on Level

## Properties
 - currentStats -- [Stats](./Stats.md) These are ALL the current stats for a given character
    - This changes by "external forces" passing in [Stats](./Stats.md) of their own, which increases or decreases this.


## Used by
- [EquipSystem](./EquipSystem.md)
- [Effect](./Effect.md) -- These are not as important since they are temporary
- [LevelStat](./LevelStat.md)
- [SkillBook](./Skillbook.md) -- ONLY when skills are moved in and out of hotbar (the resists change based on [SkillType](./SkillTypes.md) in hotbar)



### References
 - [Reforge](./Reforge.md)
 - [Equipment](./Equipment.md)
 - [SkillTypes](./SkillTypes.md)
