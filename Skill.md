# Spell

This represents all usable actions a given [Character](./Character.md) can take. Aside from simple movement which is the [Controllers](./Controller.md) job.

cast to any specified location that is between min and max range distance from this character.

Once cast, the prefab is spawned at this location. This prefab inherits the damage and effects. 

## Extends
 - MoveSkill - anything that moves the caster. (maybe calls a different skill at the end of its durration)
 - ProjSkill - summons a specific "projectile" module object
 - TargetedSkill - activate any Skill as a specific user.
 - BuffSkill - gives an effect to this caster.
 - SimpleSkill - create an aoe burst at a given location.
 - SummonSkill - summons anything non simple, (in world objects, charcters, etc)

 #TODO: flesh this out ^ . make sure you can create AOE DOT spells like healing circle or poison circle. Maybe Targeted DOT as well? fireballs raining on you.
 #I guess a difference between effects and skills are if you want to see the icon on your "statuses"

## Using
 - 

## Properties
 - skillID - PRE ASSIGNED
 - skillName
 - description - something maybe when hovering to show high level idea of the skill. Also your Damage numbers (use escape codes for these)
 - [skillType](./SkillTypes.md)
 - levelReq - min level required to use this skill !! TODO make sure targeted casting still works (change levelReq of casted skill to 0?)
 - targetEnemies -- BOOLEAN default true-- TODO make sure these makes sense
 - targetAllies -- BOOLEAN default true
 - Cooldown
 - Delay
 - color -- TODO -- a very basic color to represent circles/particles that this skill produces
 - selfCast -- boolean - this is the standard for telling the spell where its cast.

### Private
 - Caster [Character](./Character.md) -- who has/will cast this spell (no damage scales from this character)
 - OriginalCaster -- original cant be overwritten and is passed to every child skill(if applicable). So targeted skills can always trace back who gets xp. / whos team theyre on

## Storage
 - All skills are IMMUTABLE - only original structures are stored on the drive
 - EVERY equipped skill is instanced and saved in RAM. So it doesnt have to read disc each cast, and it can calculate damage once from its equip slot
    - This includes skills being cast from other skills. Recursive load



### References
 - [Skillbook](./Skillbook.md)
 - [Stats](./Stats.md)
 - [Character](./Character.md)
 - [EXAMPLE_combat](./EXAMPLE_combat.md)
 - [Effect](./Effect.md)
 - [QuestReward](./QuestReward.md)
 - [README](./README.md)
 - [Controller](./Controller.md)
 - [SkillTypes](./SkillTypes.md)
 - [CombatSystem](./CombatSystem.md)
