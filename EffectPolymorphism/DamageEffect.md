# Damage Effect

Simple Damge / DOT on a character

## Properties
 - damage - (base damage) this is increased by the Effect.effectMultiplier
 - type -- [DamageType](./../SkillTypes)
 - stackTags
 - maxStacks
 - stackMultiplier -- stack damage increase
 - backMultiplier: 1.0 -- used for backstabs (determine from victims rotation + caster character relative position)

### Private Properties
 - stacks

### Effect Stacking!
 - everytime the EXACT SAME effect(id or altID) is applied, refresh the duration. -- this has nothing to do with stacking unless the effect has the same tags as stackTags
 - if an effect has a 0 maxStack, it cannot stack.
 - stacking occurs when this effect has a stack tag to which an incoming effect has the same normal tag
 - !! before effects deal their first damage, they check to see if they can stack with any other active effects. (this leads to things like maxStack:1 if theyre poisoned, this instant fire damage does 1.5x more damage.)
 - the `stackMultiplier` is how much more/less damage does this effect do from BASE -0.5, 0.5 == + linear -50% or +50% each stack (be careful this doesnt go into the negatives)