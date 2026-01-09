# DamageTypes

When an attack is made from a [Skill](./Skill.md) on a character the damage needs to be calculated.

Outgoing damage is calculated by the character using the [Skill](./Skill.md) before being sent to the hit character.
Incoming damage is calculated by the recievers resistences. incoming damage is also varied by 10%

## Types
 - Physical - resisted by the characters armor
 - Magical - Magic damage cannot be resisted
 - Necrotic or Faith - These damage types are opposites of eachother and are resisted by a characters `goodness` [Stat](./Stats.md)
    - 0% goodness:
        - 0% necro damage taken
        - 0% faith healing taken
    - 50% goodness(default):
        - 150% necro damage taken
        - 100% faith healing taken
    - 100% goodness:
        - 200% necro damage taken
        - 200% faith healing taken

 - CC - no damage. 

### Examples
A Sword with a base damage of 4:

The sender character has 100 strength so outgoing damage is ?40? physical damage
The reciever character has 25% resist. With a 10% varriance of that 30 damage, the final damage done will be between 27-33


### References
 - [Stats](./Stats.md)
