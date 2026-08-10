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
 - effectName
 - description
 - tags -- UID/string array - what groups does this fall into. Used for stacking other effects 
 - removable:false -- if its something that could be anoying outside of combat, allow it to be removable
 - duration -- how long does this effect last
 - effectMultiplier -- subclasses use this differently. How 
 - procInterval -- usually just procs once(0). But if you wanted damage over time or armor over time or something
 - stackTags
 - maxStacks
 - stackMultiplier -- stack damage increase
 - iconID
 - color -- a very basic color to represent circles/particles that this Effect produces
 - GIFanimation? / png -- something overlapping the character, like ice at their feet

### Private Properties
 - stacks

## Storage
 - All Effects are IMMUTABLE
 - Effects are loaded into RAM when first called.
 - CAUSES
    - all effects get lost on reload - "permanent" effects included

### Effect Stacking!
 - everytime the EXACT SAME effect is applied, refresh the duration. -- this has nothing to do with stacking unless the effect has the same tags as stackTags
 - if an effect has a 0 maxStack, it cannot stack.
 - stacking occurs when this effect has a stack tag to which an incoming effect has the same normal tag
 - !! before effects deal their first damage, they check to see if they can stack with any other active effects. (this leads to things like maxStack:1 if theyre poisoned, this instant fire damage does 1.5x more damage.)
 - the `stackMultiplier` is how much more/less damage does this effect do from BASE -0.5, 0.5 == + linear -50% or +50% each stack (be careful this doesnt go into the negatives)



### References
 - [TODO](./TODO.md)
 - [StatsManager](./StatsManager.md)
