# LevelStat

manages XP of a character. This also controls how stat points are given and stored for this character based on Level.

XP pipeline:
    defeat opp Character (or complete a quest or whatever) -> xp sent to last hit character -> xp goes into stats manager -> further into level stat to increase the players xp/level.


## Uses
 - [StatsManager](./StatsManager.md)

## Properties
 - xp
 - level
 - specStats -- [Stats](StatModifier.md)


### References
 - [Stats](./Stats.md)
 - [StatsManager](./StatsManager.md)
