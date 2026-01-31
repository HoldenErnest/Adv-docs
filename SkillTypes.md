# SkillTypes

When an attack is made from a [Skill](./Skill.md) on a character the damage needs to be calculated.

Outgoing damage is calculated by the character using the [Skill](./Skill.md) before being sent to the hit character.
Incoming damage is calculated by the recievers resistences. incoming damage is also varied by 10%

## Types
 - Physical - resisted by the characters armor
 - Magical:
    - Gas
    - Liquid
    - Solid
    - Healing - These damage types are opposites of eachother and are purely based off a Characters `moral` [StatsManager](./StatsManager.md)
        - 0% moral:
            - +10% damage for all skills (maybe)
            - 0% Healing taken
        - 50% moral(default):
            - 100% Healing taken
        - 100% moral:
            - 200% Healing taken


### Examples
A Sword with a base damage of 4:

The sender character has 100 strength so outgoing damage is ?40? physical damage
The reciever character has 25% resist. With a 10% varriance of that 30 damage, the final damage done will be between 27-33



### References
 - [StatsManager](./StatsManager.md)
 - [DamageResist](./DamageResist.md)
 - [Skill](./Skill.md)
