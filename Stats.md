# Stats

This holds all the general stats for a given [Character](./Character.md).
Some of these properties you can 'spec' into using Attribute points which are given based on Level

## Properties

You can spec into these stats using attribute points:
 - `Constitution` - Max health
 - `Strength` - increase in physical damage, 
 - `Dexterity` - small increase in speed as well as a small increase in damage
 - `Intelligence` - increase in any magic type damage. Can also affect [Dialogue](./Dialogue.md)
 - `Evasion` - polynomial decrease to each points effect? 50% evade at 50 points?
 - `Speed` - affects [Controller](./Controller.md) speed value. `weight` can also lower this depending on `strength`

You cannot spec into these stats:
 - `XP` - total XP determines `Level` which determines `AttributePoints`
 - `Armor` - % resist [Skill](./Skill.md) damage
 - `weight` - total weight of your gear. Higher carryweight slows you down
 - `moral`? - a [MoralScale](./MoralScale.md) property

# TODO: separate "external stats"
# anything that can be added/removed easily should be separated.
# Equippable and buffs need a structure to hold them in. NO XP


### References
 - [SkillTypes](./SkillTypes.md)
 - [Equipment](./Equipment.md)
