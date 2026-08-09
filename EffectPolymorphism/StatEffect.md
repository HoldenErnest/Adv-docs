# Stat Effect

Change stat effects for a certain period of time (specified by [Effect](./../Effect.md))

statEffects ARE NOT affected by the Effect.effectMultiplier


## Properties
 - statChange -- a [Stat](./../Stats.md) object for determining how much to change by every tick/interval

### Private Properties
 - overallStatChange(Stat) -- keep track of total stat change from base, so when the effect ends you remember how much to change it by