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
 - MultiEffect

## Properties
 - effectID - PRE ASSIGNED
 - altID - this is for effects which are essentially the same as other effects. Poison 5 damage, vs poison 20 damage should have the same icon/reset. The idea is if this is SET, default all values to that effects values, then you only have to specify any changes you want (damage) -- higher damage should completely reset any other cooldowns/whatnot. LOWER damage should be ratiod between damage and time remaining for both.
 - effectName
 - description
 - tags -- UID/string array - what groups does this fall into. Used for stacking other effects 
 - removable:false -- if its something that could be anoying outside of combat, allow it to be removable
 - duration -- how long does this effect last
 - effectMultiplier -- subclasses use this differently. How 
 - procInterval -- usually just procs once(0). But if you wanted damage over time or armor over time or something
 - iconID
 - color -- a very basic color to represent circles/particles that this Effect produces
 - GIFanimation? / png -- something overlapping the character, like ice at their feet
 - audio -- audio to play ON EACH PROC

## Storage
 - All Effects are IMMUTABLE
 - Effects are loaded into RAM when first called.
 - CAUSES
    - all effects get lost on reload - "permanent" effects included



### References
 - [TODO](./TODO.md)
 - [StatsManager](./StatsManager.md)
