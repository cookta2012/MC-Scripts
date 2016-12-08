/* Document Author: Shadows_of_Fire
   Document Edited: 5/31/2016
   Document Modpack: Magic Theory 2
*/

/* Dependencies
Mods; Attained Drops, Extra Utilities, Forestry, Reliquary
*/

recipes.remove(<attainedDrops:blockConcentrateDrop>);
recipes.remove(<attainedDrops:plantSeed>);
mods.thaumcraft.Infusion.addRecipe("ASPECTS", <GardenCore:garden_soil>, [<AgriCraft:seedDandelion>, <AgriCraft:seedPoppy>, <AgriCraft:seedOrchid>, <AgriCraft:seedAllium>, <AgriCraft:seedTulipRed>, <AgriCraft:seedTulipOrange>, <AgriCraft:seedTulipWhite>, <AgriCraft:seedTulipPink>, <AgriCraft:seedDaisy>], "messis 32, sano 16, victus 8, potentia 16, meto 24", <attainedDrops:blockMobDirt> * 16, 2);