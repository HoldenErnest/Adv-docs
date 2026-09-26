# Stat Modifier

This is the object that gets passed around to modify Characters [StatSheets](./StatSheet.md)

equips have these as well as effects can give these. (These are all added up in the [StatsManager](./StateManager.md))

All of these must be FLOATS since they potentially can be used as multipliers

## Properties
 - `multiplies` - does this multiply? add by default ------- TODO!!!!!!!!!!!!!!!!!!!!!! should there be a "set" property as well?

 - `Constitution` - increase Max health
 - `Strength` - increase in physical damage (also slows less when wearing heavy gear)
 - `Intelligence` - increase in any magic type damage. Can also affect [Dialogue](./Dialogue.md)
 - `Agility` - +evasion and speed
 - `Technique` - slight cooldown reduction
 - `evasion` - evasion increase. 
 - `speed` - affects [Controller](./Controller.md) speed value. `weight` can also lower this depending on `strength`
 - `Armor` - % physical resist [Skill](./Skill.md) damage
 - `gas_resist`
 - `liquid_resist`
 - `solid_resist`
 - `weight` - total weight of your gear. Higher carryweight slows you down(%)
 - `reflect` - how much damage is reflected back when you get hit (does not reflect damage with damage type "true")

# TODO: check this over agian

## "Static" Stats (stats that show exactly what theyre increasing by)

    - resists:
        - the thing with resists is that for the most part you should only passivly resist 1 or two types of damage. The other couple still damage. As well as true damage
        - Highest any 1 equip should give is 20% and this should be very rare. passive max around 100% resist.
        - effects can add and multiply these resist values. Maybe max of 1.5x
    
    - weight:
        - `overweight` : how much extra weight youre carrying over what you can max. (by default you get 20 points before youre overweight. 20 + 2*str )
        - 0 weight to 200 weight. (~50 per armor piece, then maybe 20 for a sword or something)
        strength reduces weight by 2 each point. (if you have the heaviest armor you will be overweight by ~80 still even at max level) (20 + 100) reduced
        - most good midgame armors should be about 30-50 weight. meaning for mobility you will probably want 5-10 points in str.
        - overweight speed change is -2% per point. up to a max of -90%.. This is applied AFTER all your other speed modifiers
    
    - reflect:
        - reflect can really be any value as it just scales with opponents damage. for the most part reflect is only going to be set at 100 or 0.