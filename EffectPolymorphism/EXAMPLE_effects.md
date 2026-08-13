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






#TODO:

- is stacking just for damage effects? --- YES
- how should evasion affect duration effects. Just true damage? --- YES, things like CC are fine. it would add too much complexity otherwise
- how are multi effects processed as one effect rather than multiple (I dont want 2 icons for the effect) --- if an icon is specified for the multiEffect, show 1 combined new effect. otherwise show both individually

- how is damage passed down from skills. Flat from the parent/super skill? all the way down? -- Damage is stored in Effects - effects can be easily coppied with different values using the `altID`
- PERCENT damage? ---