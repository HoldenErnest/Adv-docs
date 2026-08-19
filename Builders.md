# Builders

(the builder pattern). Instead of clogging up the GameObjects(Character, Item, whatnot) classes. Delegate the creation of an Object to its Builder. That way, things that have complex load sequences (determining ID for other objects)

// TODO: When selecting from the main list, it isnt duplicated, mainly because almost no items EVER change. BUT if they do change any of the dynamic properties, then deep clone the object?


## Using
 - [Database](./Database.md)