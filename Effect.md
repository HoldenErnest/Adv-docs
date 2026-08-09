# Effect

This controls any "changes" that happens to a [Character](./Character.md)

DOT, InstantDamage, Buffs/Debuffs.

The key to Effects is they usually have a given duration, and an interval to reproc ()

Also come from [Consumables](./Consumable.md)

Ideas: [idea page](https://tvtropes.org/pmwiki/pmwiki.php/Main/StatusEffects)

## Extends
 - statEffect - changes stat points (-50% speed or something)
 - damageEffect - ticks every x seconds to give you a health change. (Regeneration, Poison)
 - movementEffect - OVERRIDES CONTROLLER. - TODO - priority? Dont allow Dashing while under Charm/Fear/Freeze
 - skillEffect - 

## Properties
 - effectID - PRE ASSIGNED
 - effectName
 - description
 - removable:false -- if its something that could be anoying outside of combat, allow it to be removable
 - duration -- how long does this effect last
 - effectMultiplier -- subclasses use this differently. How 
 - procInterval -- usually just procs once(0). But if you wanted damage over time or armor over time or something
 - iconID
 - color -- a very basic color to represent circles/particles that this Effect produces

## Storage
 - All Effects are IMMUTABLE
 - Effects are loaded into RAM when first called.
 - CAUSES
    - all effects get lost on reload - "permanent" effects included



### References
 - [TODO](./TODO.md)
 - [StatsManager](./StatsManager.md)
