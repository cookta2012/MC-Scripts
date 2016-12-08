/* Document Author: Shadows_of_Fire
   Document Edited: 6/2/2016
   Document Modpack: Magic Theory 2
*/

/* Dependencies
Mods: Witchery, Thaumcraft, Botania, Thaumic Tinkerer
*/

import mods.thaumcraft.Infusion;

#Flight breaks HEE, so you need to kill the dragon to access flight.  Or on servers at least get there.

print("Flying Nerfs Initialized");

recipes.remove(<witchery:ingredient:8>);	
recipes.addShaped(<witchery:ingredient:8>, [[<Botania:manaResource:15>, <minecraft:stick>, <Botania:manaResource:15>], [null, <minecraft:stick>, null], [<witchery:witchsapling:2>, <witchery:witchsapling:2>, <witchery:witchsapling:2>]]);

Infusion.removeRecipe(<Thaumcraft:HoverHarness>);
Infusion.addRecipe("HOVERHARNESS", <minecraft:leather_chestplate:*>, [<Thaumcraft:ItemShard>, <Thaumcraft:ItemShard>, <Thaumcraft:blockWoodenDevice:6>, <Thaumcraft:blockWoodenDevice:6>, <minecraft:comparator>, <minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>, <Botania:manaResource:15>], "volatus 32, potentia 32, machina 32, iter 32", <Thaumcraft:HoverHarness>, 8);

Infusion.removeRecipe(<ThaumicTinkerer:focusFlight>);
Infusion.addRecipe("FOCUS_FLIGHT", <minecraft:ender_pearl>, [<minecraft:quartz>, <minecraft:quartz>, <minecraft:quartz>, <minecraft:quartz>, <minecraft:feather>, <minecraft:feather>, <Thaumcraft:ItemShard>, <Thaumcraft:ItemShard>, <Botania:manaResource:15>], "motus 20, aer 15, iter 10", <ThaumicTinkerer:focusFlight>, 4);
print("Flying Nerfs Finalized");