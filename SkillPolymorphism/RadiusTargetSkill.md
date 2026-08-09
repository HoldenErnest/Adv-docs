# Radius Target Skill

Cast a skill TARGETED on everyone within a radius around a position.

for simplicity sake, this does not target the caster.


## Properties
 - Chained Skill
 - maxTargets -- how many targets can this one spell hit? (its targeting is randomized. This allows things like thunderstorm 1 strike at a time)
 - radius
 - cast interval
 - cast location
        ORIGINAL-- if Skill.castOnOriginal is set, cast on the Caster. Otherwise cast to clamped mouse
        SUBSKILL-- if Skill.castOnOriginal is set, cast on original caster. Otherwise its cast on caster