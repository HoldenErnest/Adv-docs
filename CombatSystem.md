# CombatSystem


## Goals in combat:
 - Simplistic: Easy to pick up and use
 - Expansive: Many options/combos to choose from to fit playstyles. These should be easy to implement as well
 - Depth: with the right skills and understanding, a skilled player can defeat higher levels than them



### Simplistic
 - The only actions a [Character](./Character.md) can take are [Skills](./Skill.md) (and movement I guess)
 - generally Low TTK. (I dont want characters with huge spells to do almost no damage (obviously unless theyre against great resist and health))

### Expansive
 - New Skills can be created with just a JSON object and an icon image/sounds


### Depth
 - Blocking (immune Buff)
 - Counter (reflect Buff) *(Any damage passed ALSO passes the Character that dealt the damage (for this and also Name of who dealt the killing blow))
 - Dodging (any movement skill)
 - Damage reduction based on equipped skill types


### EXAMPLES / Structure

check out the SkillPolymorphism directory, to see all the examples and Skill setups


### References
 - [Character](./Character.md)
 - [README](./README.md)
 - [Skill](./Skill.md)
