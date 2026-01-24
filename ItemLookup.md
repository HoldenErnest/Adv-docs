# ItemLookup

basically just a big lookup table for an items information given its `itemID`

Look at the [Database](./Database.md). YES its stored here.

REASON:
 - this data is seperated from [Item](./Item.md). Anything that can change is put in Item, anything that ALWAYS stays the same will be in this lookup. This will make saving easy as well as not have so much load on passing Items around.


### Data Structure:

Unsure how this data structure will look ATM
 - Since it has ItemIDs it should ALWAYS SORT on init and use binary searches


## Examples:

JSON:
```
{items: [
    {itemID: 1, defaultName: "Stick of greed", desc: "its a useless stick..", icon:"greed_stick.png"},
    {itemID: 2, defaultName: "Apple", desc: "yum", icon:"apple.png", consumeEffect: "heal"},
    {itemID: 3, defaultName: "Fire Axe", desc: "molten axe of Bill", icon:"fire_axe.png", }
]}
```



### References
 - [Item](./Item.md)
 - [Consumable](./Consumable.md)
 - [Equipment](./Equipment.md)
