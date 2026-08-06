# Health Stat

This is where ALL damage is calculated


Keeps track of the health for a [Character](./Character.md). Its nested within the [StatsManager](./StatsManager.md) though.

Damage pipeline:
    CharA hit with spell from CharB -> spell damage + type + casterChar are sent to statManager -> sent further to healthStat + the stats from statmanager. With all that info, calculate the damage done to CharA


If current health reaches 0: Send XP/Rewards to Whoever killed this Character. Message in chat?

## Uses
 -

## Properties
 - currentHealth
 - maxHealth -- based off Stats.constitution