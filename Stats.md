# Stats

This holds all the general stats for a given [Character](./Character.md).
Some of these properties you can 'spec' into using Attribute points which are given based on Level

## Properties

You can spec into these stats using attribute points:
 - `Constitution` - Max health
 - `Strength` - increase in physical damage, 
 - `Dexterity` - small increase in speed as well as a small increase in damage
 - `Intelligence` - increase in magic damage. Can also affect [Dialogue](./Dialogue.md)
 - `Evasion`
 - `Speed` - affects [Controller](./Controller.md) speed value. `weight` can also lower this depending on `strength`

You cannot spec into these stats:
 - `XP` - total XP determines `Level` which determines `AttributePoints`
 - `Armor` - % resist [Skill](./Skill.md) damage
 - `ccResist` - % chance this will MISS. As psych doesnt do damage.
 - `weight` - total weight of your gear. Higher carryweight slows you down
 - `goodness`? - How "Good" is this character. from 0.00-1.00
    - This value changes when killing others with high or low goodness.



### References
 - [DamageTypes](./DamageTypes.md)
 - [Equipment](./Equipment.md)
