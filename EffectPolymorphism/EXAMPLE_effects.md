# Example Effects

instant damage
instant health
poison {liquid 5s interval} ## _TODO_ how does evasion interact with duration effects vs instant

`shocked`
multiEffect {6s duration, 2s interval} -> instant 3 wind damage
             + movementEffect {0.5s duration, 0s interval, speed 0}
_NOTE_ for 6 seconds total, freeze for 0.5s every 2 seconds

`shattering`
damageEffect {tags{cold}, stacktags{earth}, damage 5 gas, maxStack:10, duration: 6s, interval: 5s, stackmultiplier: 1.0}
_NOTE_ if all 10 earthstacks are met, this will deal 55 total damage by the end, 5 initially, 50 in a burst at the end of 5 seconds




## Damage passed through effects and spells

!! important -- the whole pipeline has an `effectMultiplier` value, this is MULTIPLIED as it goes down (most things are default 1.0 obviously.) !!
    - this way if there are complex spells or multispells with tweaked damage values, increasing the highest most damage, will increase the damage of the other things too.
TODO: you can calculate damage from caster stats 1 of 2 ways: increase the multiplier by say 0.1 per point, OR AT THE END of the line, the total damage can be increased directly before its applied. Both ways seem good, depends on what I'm feeling I suppose

-- effect from an equip spell
    - {(weapon) big sword: skillMultipler 1.5} -> new skill with the skillID, 

-- effect from a spell:
    - {(anyspell) poison 2 give: effectMultipler 1.5} -> invokes a new effect with the poison ID, then passes in the effectMultiplier from the spell.

-- effect from consumable/(standalone call)
    - effects are always invoked with an `effectMultiplier` value, default 1. 
    - {(consumable) poison 2 vial: effectMultipler 1.5} -> new effect based on the defaults of poison ID, pass in the effect multiplier. damage repeated for duration, every proc interval it damages basedamage*multiplier.






#TODO:

- is stacking just for damage effects? --- YES
- how should evasion affect duration effects. Just true damage? --- YES, things like CC are fine. it would add too much complexity otherwise
- how are multi effects processed as one effect rather than multiple (I dont want 2 icons for the effect) --- if an icon is specified for the multiEffect, show 1 combined new effect. otherwise show both individually

- how is damage passed down from skills. --- `altID` is no longer being used (used to be that this ID was used to initialize defaults from other effects. So you could make new IDs for each new damage (poison 1, vs 2)). --- NOW damage is passed multiplicitively through the damage pipeline via an `effectMultiplier` value. - the key is that non-default damage is scarce, essentially just used for consumables and equipment
- PERCENT damage? ---

base damage has to be scales ON CAST (scaled with int, str, whatnot) -- no it doesnt

how to do subclass parsing??????????????