# Movement Skill

Changes casters velocity towards a given point (overrides controller)

!! It should be noted that the caster moves in 1 given direction for the duration. (no turning around if the caster passes the target point)


## Properties
 - speed -- (-, move away), (0, freeze position), (+, move towards)
 - target position -- if nothing passed in, defaults to mouse position (targeted skills pass in a target)



## Examples Basics
 - Dash -- 1speed, target mouse
 - teleport -- 99speed, target mouse


## TODO Should these be Effects instead? -- probably

## Examples with Targeted Skill
 - Fear -- -1speed, target pos of the initial caster is passed in.
 - Freeze -- 0speed, 000
 - Charm -- 0.5speed, target initial caster

## Examples with Aura Skill
 - Mass Fear -- -1speed, target initial caster
 - Mass Charm -- 0.5speed, target intial caster





 ###### TODO:::: REMOVE THIS whole thing

 movement impairments should be an effect instead of a skill.

 it affects a character, and has a duration