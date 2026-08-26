# Equipment

Equipment is an [Item](./Item.md) that can be equipped to a character. This can change their [StatsManager](./StatsManager.md). This can also change their appearance

Equipping an Equip may also give you a skill. This skill is put in your [Skillbook](./Skillbook.md)

Equip damage is set by the [Skill](./Skill.md). Skills have MANY effect damages to choose from, so making the same skill with slightly different damage values isnt an issue

look at [Items](./Item.md) to see why the properties are split up for storage.

## Properties
 - `equipped` - determines if this is equipped. Make sure to update the equipSystem though
 - reforge level -- this modifies the stats dynamically. also the skillMultiplier.

## Immutable Properties (stored in the [lookupTable](./ItemLookup.md))
 - gearType - type of gear this can be (TODO: what gear types are there)
 - addSkills: Array of skill IDs
 - [Stats](./Stats.md)
 - skillMultiplier -- BIG sword vs little sword -> just point them to the same generic phys damage skill with a different skillMultiplier



### References
 - [Skillbook](./Skillbook.md)
 - [Stats](./Stats.md)
 - [ItemLookup](./ItemLookup.md)
 - [Model](./Model.md)
 - [Reforge](./Reforge.md)
 - [Item](./Item.md)
 - [Database](./Database.md)
