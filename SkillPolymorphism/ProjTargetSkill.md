# Projectile Targeting Skill

Shoot a projectile at a location to determine targets who cast this subskill


## Properties
 - subSkill
 - targetPrediction -- if cast on a Character, should it try to predict movement

### Private Properties
 - cast location
        ORIGINAL-- cast to clamped mouse
        SUBSKILL-- if Skill.castOnOriginal is set, cast FROM the CASTER TO the Original CASTER. Otherwise, the other way around