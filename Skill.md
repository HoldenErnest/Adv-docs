# Spell

This represents all usable actions a given [Character](./Character.md) can take. Aside from simple movement which is the [Controllers](./Controller.md) job.

cast to any specified location that is between min and max range distance from this character.

Once cast, the prefab is spawned at this location. This prefab inherits the damage and effects. 

## Using
 - 

## Properties
 - skillName
 - [skillType](./SkillTypes.md)
 - baseDamage
 - manaCost
 - maxCastRange
 - minCastRange
 - despawnTime
 - attackRadius
 - levelReq - min level required to use this skill
 - [setEffects](./Effect.md) Array
 - Cooldown
 - projectileSpeed - if this is non zero, the skill is a projectile. and will move to max



### References
 - [Skillbook](./Skillbook.md)
 - [Stats](./Stats.md)
 - [Character](./Character.md)
 - [Effect](./Effect.md)
 - [DamageTypes](./DamageTypes.md)
 - [README](./README.md)
 - [Controller](./Controller.md)
