# Buff Skill

Begin an effect (either at a location(skillEffect) OR on the Caster)


## Properties
 - Effect ID
 - uniqueTargeting -- uses and passes targeting not necessarly attached to Characters

### Private Properties
 - cast location
        ORIGINAL-- if seperateFromCaster is set, cast at location of clamped mouse (essentially this must be a skillEffect).
                    Otherwise, obviously it affects the CASTER
        SUBSKILL-- if Skill.castOnOriginal is set, cast FROM the CASTER TO the Original CASTER. Otherwise, the other way around