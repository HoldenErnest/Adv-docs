# Item

An Item is just information. This structure ONLY HOLDS info that can be changed.

## Extends
 - [Equipment](./Equipment.md)
 - [Consumable](./Consumable.md)

## Uses
 - [ItemLookup.md](./ItemLookup.md)

## Properties
 - item_id
 - itemName - Item "nickname" maybe. This value can be changed
 - amount
 - dropChance - different enemies can have different drop chances for these.

## Immutable Properties (stored in the [lookupTable](./ItemLookup.md))
 - defaultName
 - desc
 - icon
 - consumeEffect



### References
 - [ItemLookup](./ItemLookup.md)
 - [Inventory](./Inventory.md)
 - [README](./README.md)
 - [Equipment](./Equipment.md)
