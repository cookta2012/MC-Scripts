import minetweaker.item.IItemStack;
import mods.foundry.Melting;
import mods.foundry.Casting;
import mods.actuallyadditions.AtomicReconstructor;

#Nerf mortar pls
recipes.remove(<substratum:mortar>);

game.setLocalization("item.Woot:dye.plate.name", "Plate Die");
game.setLocalization("item.Woot:dye.casing.name", "Casing Die");
game.setLocalization("item.Woot:dye.skull.name", "Skull Die");
game.setLocalization("item.Woot:dye.connector.name", "Connector Die");
game.setLocalization("item.Woot:dye.shard.name", "Shard Die");
game.setLocalization("item.Woot:dye.mesh.name", "Mesh Die");
game.setLocalization("item.Woot:dye.prism.name", "Prism Die");
/*
#Buff The Wither
recipes.remove(<enderio:blockReinforcedObsidian>);
*/
#BlameQuark
recipes.addShapeless(<minecraft:chest>, [<ore:chestWood>]);

/*
#Dungeon Tactics
<ore:oreIron>.add(<dungeontactics:cluster_iron>);
<ore:oreGold>.add(<dungeontactics:cluster_gold>);
*/
#Immersive Pls
recipes.remove(<immersiveengineering:tool:1>);
recipes.addShaped(<immersiveengineering:tool:1>, [[<ore:stickWood>, <ore:ingotIron>], [null, <ore:stickWood>]]);
recipes.remove(<immersiveengineering:tool:2>);
recipes.addShaped(<immersiveengineering:tool:2>, [[null, <minecraft:compass>, null], [<ore:stickWood>, <ore:ingotCopper>, <ore:stickWood>]]);
/*
#BASE Y THO
<ore:blockCopper>.remove(<base:ore_copper>);
<ore:blockCopper>.add(<base:storage_copper>);
<ore:blockTin>.remove(<base:ore_tin>);
<ore:blockTin>.add(<base:storage_tin>);
<ore:blockLead>.remove(<base:ore_lead>);
<ore:blockLead>.add(<base:storage_lead>);
<ore:blockSilver>.remove(<base:ore_silver>);
<ore:blockSilver>.add(<base:storage_silver>);
<ore:blockElectrum>.add(<base:storage_electrum>);
*/


#Buffs to prosperity
val oP = <ore:oreProsperity>;
oP.add(<mysticalagriculture:prosperity_ore>);
oP.add(<mysticalagriculture:nether_prosperity_ore>);
oP.add(<mysticalagriculture:end_prosperity_ore>);
game.setLocalization("fluid.liquidManasteel", "Liquid Prosperity");
game.setLocalization("Liquid Prosperity.name", "Liquid Prosperity");
Melting.addRecipe(<liquid:liquidmanasteel> * 150, oP, 2300, 140);
Casting.addRecipe(<mysticalagriculture:prosperity_shard>, <liquid:liquidmanasteel> * 10, <foundry:mold:3>);


#Prismarine is not free  I WISH THIS WORKED
AtomicReconstructor.remove(<minecraft:prismarine_shard>);

#Some nonsense with TiC, Foundry, and Levels.
recipes.addShapeless(<tconstruct:ore:1>, [<ore:oreArdite>]);
recipes.addShapeless(<tconstruct:ore>, [<ore:oreCobalt>]);