# Equipment

Equipment is an [Item](./Item.md) that can be equipped to a character. This can change their [Stats](./Stats.md). This can also change their appearance

Equipping an Equip may also give you a skill. This skill is put in your [Skillbook](./Skillbook.md)

## Properties
 - `equipped` - determines if this is equipped. Make sure to update the equipSystem though

## Immutable Properties (stored in the [lookupTable](./ItemLookup.md))
 - gearType - type of gear this can be (TODO: what gear types are there)
 - addSkills: Array of skillnames


TODO: damage and stats?
 - Damage can not be saved in Skills themselves. skills dont save.
Problem:
 - Skill damage needs to increase when reforging a weapon.
Possible Solutions:
 - Equip reforges can only increase damage multiplier for all skills.

Maybe I need to figure out [ReforgeSystem](ReforgeSystem.md) out first



### References
 - [Skillbook](./Skillbook.md)
 - [Stats](./Stats.md)
 - [ItemLookup](./ItemLookup.md)
 - [Model](./Model.md)
 - [Reforge](./Reforge.md)
 - [Item](./Item.md)
