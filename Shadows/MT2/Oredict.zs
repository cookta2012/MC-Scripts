/* Document Author: Shadows_of_Fire
   Document Edited: 5/31/2016
   Document Modpack: Magic Theory 2
*/

/* Dependencies
Mods: Automagy, Biomes O' Plenty, Railcraft, Witchery, Harvestcraft, Applied Energistics
*/

#Changing Redstone to use Redcrystal for any oredict recipes.
val red = <ore:dustRedstone>;
red.remove(<minecraft:redstone>);
red.add(<Automagy:blockRedcrystal>);
#Cobble Entries
<ore:cobblestone>.add(<BiomesOPlenty:cragRock>);
#Various Plate/Gear fixes
<ore:gearSteel>.add(<Railcraft:part.gear:2>);
<ore:gearGoldPlate>.add(<Railcraft:part.gear>);
<ore:plateIron>.add(<Railcraft:part.plate>);
<ore:plateSteel>.add(<Railcraft:part.plate:1>);
<ore:plateTin>.add(<Railcraft:part.plate:2>);
<ore:plateCopper>.add(<Railcraft:part.plate:3>);
#Replace Witchery Garlic
recipes.remove(<witchery:garlicgarland>);
recipes.remove(<witchery:hunterhatgarlicked>);
recipes.remove(<witchery:hunterbootsgarlicked>);
recipes.remove(<witchery:hunterlegsgarlicked>);
recipes.remove(<witchery:huntercoatgarlicked>);
recipes.addShaped(<witchery:garlicgarland>, [[<minecraft:string>, null, <minecraft:string>], [<ore:cropGarlic>, <minecraft:string>, <ore:cropGarlic>], [<ore:cropGarlic>, <ore:cropGarlic>, <ore:cropGarlic>]]);
recipes.addShaped(<witchery:hunterhatgarlicked>, [[null, <ore:cropGarlic>, null], [<ore:cropGarlic>, <witchery:hunterhatsilvered>, <ore:cropGarlic>], [null, <minecraft:string>, null]]);
recipes.addShaped(<witchery:huntercoatgarlicked>, [[null, <ore:cropGarlic>, null], [<ore:cropGarlic>, <witchery:huntercoatsilvered>, <ore:cropGarlic>], [null, <minecraft:string>, null]]);
recipes.addShaped(<witchery:hunterlegsgarlicked>, [[null, <ore:cropGarlic>, null], [<ore:cropGarlic>, <witchery:hunterlegssilvered>, <ore:cropGarlic>], [null, <minecraft:string>, null]]);
recipes.addShaped(<witchery:hunterbootsgarlicked>, [[null, <ore:cropGarlic>, null], [<ore:cropGarlic>, <witchery:hunterbootssilvered>, <ore:cropGarlic>], [null, <minecraft:string>, null]]);
recipes.remove(<witchery:ingredient:162>);
recipes.addShaped(<witchery:ingredient:162>, [[<ore:cropGarlic>, <ore:cropGarlic>, <ore:cropGarlic>], [<ore:cropGarlic>, <ore:stickWood>, <ore:cropGarlic>], [<ore:cropGarlic>, <ore:cropGarlic>, <ore:cropGarlic>]]);
recipes.remove(<witchery:vampirebook>);
recipes.addShaped(<witchery:vampirebook>, [[<minecraft:nether_wart>, <minecraft:nether_star>, <minecraft:nether_wart>], [<minecraft:nether_wart>, <minecraft:book>, <minecraft:nether_wart>], [<minecraft:nether_wart>, <ore:cropGarlic>, <minecraft:nether_wart>]]);
#I thought this was already here.
<ore:craftingCertus>.add(<appliedenergistics2:item.ItemMultiMaterial:0>);
<ore:craftingCertus>.add(<appliedenergistics2:item.ItemMultiMaterial:10>);
<ore:craftingCertus>.add(<appliedenergistics2:item.ItemMultiMaterial:1>);
<ore:craftingFluix>.add(<appliedenergistics2:item.ItemMultiMaterial:7>);
<ore:craftingFluix>.add(<appliedenergistics2:item.ItemMultiMaterial:12>);

#And for now, The Great Unification.
#Priority: Forestry, Railcraft, IE

#Copper
recipes.remove(<ore:ingotCopper>);
recipes.addShapeless(<Forestry:ingotCopper>, [<ore:nuggetCopper>, <ore:nuggetCopper>, <ore:nuggetCopper>, <ore:nuggetCopper>, <ore:nuggetCopper>, <ore:nuggetCopper>, <ore:nuggetCopper>, <ore:nuggetCopper>, <ore:nuggetCopper>]);
recipes.remove(<ore:nuggetCopper>);
recipes.addShapeless(<Thaumcraft:ItemNugget:1> * 9, [<ore:ingotCopper>]);
furnace.remove(<ore:ingotCopper>);
furnace.addRecipe(<Forestry:ingotCopper>, <ore:oreCopper>);
furnace.addRecipe(<Forestry:ingotCopper>, <ore:dustCopper>);
recipes.addShapeless(<Forestry:ingotCopper> * 2, [<ore:ingotCopper>, <ore:ingotCopper>]);
recipes.remove(<ore:blockCopper>);
recipes.addShapeless(<Forestry:resourceStorage:1>, [<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>]);
recipes.addShapeless(<Forestry:ingotCopper> * 9, [<ore:blockCopper>]);
furnace.addRecipe(<Forestry:ingotCopper> * 2, <ore:clusterCopper>);

#Tin
recipes.remove(<ore:ingotTin>);
recipes.addShapeless(<Forestry:ingotTin>, [<ore:nuggetTin>, <ore:nuggetTin>, <ore:nuggetTin>, <ore:nuggetTin>, <ore:nuggetTin>, <ore:nuggetTin>, <ore:nuggetTin>, <ore:nuggetTin>, <ore:nuggetTin>]);
recipes.addShapeless(<Forestry:ingotTin> * 9, [<ore:blockTin>]);
recipes.remove(<ore:nuggetTin>);
recipes.addShapeless(<Thaumcraft:ItemNugget:2> * 9, [<ore:ingotTin>]);
furnace.remove(<ore:ingotTin>);
furnace.addRecipe(<Forestry:ingotTin>, <ore:oreTin>);
furnace.addRecipe(<Forestry:ingotTin> * 2, <ore:clusterTin>);
recipes.remove(<ore:blockTin>);
recipes.addShapeless(<Forestry:resourceStorage:2>, [<ore:ingotTin>, <ore:ingotTin>, <ore:ingotTin>, <ore:ingotTin>, <ore:ingotTin>, <ore:ingotTin>, <ore:ingotTin>, <ore:ingotTin>, <ore:ingotTin>]);
recipes.addShapeless(<Forestry:ingotTin> * 2, [<ore:ingotTin>, <ore:ingotTin>]);

#Lead
recipes.remove(<ore:ingotLead>);
recipes.addShapeless(<Railcraft:ingot:3>, [<ore:nuggetLead>, <ore:nuggetLead>, <ore:nuggetLead>, <ore:nuggetLead>, <ore:nuggetLead>, <ore:nuggetLead>, <ore:nuggetLead>, <ore:nuggetLead>, <ore:nuggetLead>]);
recipes.addShapeless(<Railcraft:ingot:3> * 9, [<ore:blockLead>]);
recipes.remove(<ore:blockLead>);
recipes.addShapeless(<Railcraft:cube:11>, [<ore:ingotLead>, <ore:ingotLead>, <ore:ingotLead>, <ore:ingotLead>, <ore:ingotLead>, <ore:ingotLead>, <ore:ingotLead>, <ore:ingotLead>, <ore:ingotLead>]);
recipes.addShapeless(<Railcraft:nugget:4> * 9, [<ore:ingotLead>]);
recipes.addShapeless(<Railcraft:ingot:3> * 2, [<ore:ingotLead>, <ore:ingotLead>]);
furnace.remove(<ore:ingotLead>);
furnace.addRecipe(<Railcraft:ingot:3>, <ore:oreLead>);
furnace.addRecipe(<Railcraft:ingot:3> * 2, <ore:clusterLead>);
furnace.addRecipe(<Railcraft:ingot:3>, <ore:dustLead>);

#Some issue with BOP Amber.
recipes.removeShapeless(<ore:gemAmber>);
recipes.addShapeless(<Thaumcraft:ItemResource:6> * 9, [<ore:blockAmber>]);
