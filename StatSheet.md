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


## HOW TO DO THE CALCUATIONS

 - Bigger issue than I thought. Essentially an async system using a mix of multiplication and addition doesnt reverse perfectly. After effects run out or armor gets removed, the base stats would change.
- Additionally, when caching these stat modifications for calculation, they need to be IDed or something since these are all started and ended at arbitrary times.

IDEAS::

Interface for anything that can modify a characters stats.

each stat modification gets tracked on a list by the [StatSheet](./StatSheet.md)
 - when the stat is added, the stats get added as normal (IF its a multiplier, do the math to convert the properties of the [StatModifier](./StatModifier.md) to addition. (100 base, 0.1* = -90))

 ^^ this theory SUCKS because, why check if removed every pass. Let the Effect call remove stat.

// TODO HEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEELP, what am I doing.

just need the interface so I can create a generic list:
 - stat is added:
    - call add to statsheet (this(as an interface), StatModifier)
    - the statsheet converts all modifiers to be additive
    - the statsheet adds the modifer to a list keyed by the interface (list items with the same parent interface get added together (they will end at the same time though.))
 - stat is removed:
    - call remove from statsheet (this as the interface)
    - that StatModifier is reverted (subtracted) and removed from the list.


// ok wow thats insane how long that took

### References
 - [TODO](./TODO.md)
 - [Equipment](./Equipment.md)
 - [StatsManager](./StatsManager.md)
