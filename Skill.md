# Spell

This represents all usable actions a given [Character](./Character.md) can take. Aside from simple movement which is the [Controllers](./Controller.md) job.

cast to any specified location that is between min and max range distance from this character.

Once cast, the prefab is spawned at this location. This prefab inherits the damage and effects. 

## Extends
 - MoveSkill - anything that moves the caster. (maybe calls a different skill at the end of its durration)
 - ProjSkill - summons a specific "projectile" module object
 - TargetedSkill - activate any Skill as a specific user.
 - BuffSkill - gives an effect to this caster.
 - SimpleSkill - create an aoe burst at a. given location.
 - SummonSkill - summons anything non simple, (in world objects, charcters, etc)

## Using
 - 

## Properties
 - skillID - PRE ASSIGNED
 - skillName
 - [skillType](./SkillTypes.md)
 - manaCost
 - levelReq - min level required to use this skill !! TODO make sure targeted casting still works (change levelReq of casted skill to 0?)
 - Cooldown
 - EffectAnim? - TODO



### References
 - [Skillbook](./Skillbook.md)
 - [Stats](./Stats.md)
 - [Character](./Character.md)
 - [Effect](./Effect.md)
 - [QuestReward](./QuestReward.md)
 - [README](./README.md)
 - [Controller](./Controller.md)
 - [SkillTypes](./SkillTypes.md)
