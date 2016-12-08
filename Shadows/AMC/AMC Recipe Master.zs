import minetweaker.item.IItemStack;
import mods.calculator.flawless;
import mods.foundry.Melting;
import mods.foundry.Casting;

var SSteel 	=	<ore:ingotSoulforgedSteel>; 
var ESteel 	=	<ore:ingotElectricalSteel>; 
var EAlloy 	=	<ore:ingotEnergeticAlloy>; 
var VAlloy 	=	<ore:ingotVibrantAlloy>;
var RAlloy 	=	<ore:ingotRedstoneAlloy>; 
var CIron 	=	<ore:ingotConductiveIron>; 
var PuIron 	=	<ore:ingotPulsatingIron>; 
var DSteel 	=	<ore:ingotDarkSteel>; 
var Soul 	=	<ore:ingotSoularium>; 
var Brz 	=	<ore:ingotBronze>; 
var Elec 	=	<ore:ingotElectrum>; 
var Inv 	=	<ore:ingotInvar>; 
var Steel 	=	<ore:ingotSteel>; 
var Cupro 	=	<ore:ingotConstantan>; 
var Signa 	=	<ore:ingotSignalum>; 
var End 	=	<ore:ingotEnderium>; 
var Lumi 	=	<ore:ingotLumium>; 
var Many 	=	<ore:ingotManyullyn>; 
var Knight 	=	<ore:ingotKnightslime>; 
var PIron 	=	<ore:ingotPigiron>; 
var AluB	=	<ore:ingotAlubrass>;
var Gold	=	<ore:ingotGold>;
var Iron	=	<ore:ingotIron>;
var Silv	=	<ore:ingotSilver>;
var Lead	=	<ore:ingotLead>;
var Tin	    =	<ore:ingotTin>;
var Cop	    =	<ore:ingotCopper>;
var Drac	=	<ore:ingotDraconium>;
var Adam	=	<ore:ingotAdamantium>;
var Nick	=	<ore:ingotNickel>;
var Plat	=	<ore:ingotPlatinum>;
var Alum	=	<ore:ingotAluminium>;
var Coba	=	<ore:ingotCobalt>;
var Arda	=	<ore:ingotArdite>;
var Cert    =   <ore:crystalCertusQuartz>;
var WC      =   <draconicevolution:wyvern_core>;
var WEC     =   <draconicevolution:wyvern_energy_core>;
var DC      =   <draconicevolution:draconium_capacitor:2>.withTag({Energy: 1073741823});
var DCR     =   DC.transformReplace(DC);
#Thats a lot of variables k now lets do some real recipes kthxbai
var ItemRemovalArray = [<actuallyadditions:blockAtomicReconstructor>, <appliedenergistics2:charger>, <appliedenergistics2:inscriber>, <appliedenergistics2:quartz_growth_accelerator>, <bloodmagic:BlockAltar>, <bloodmagic:BlockSoulForge>, <calculator:AtomicMultiplier>, <calculator:HealthProcessor>, <calculator:PowerCube>, <cyberware:engineeringTable>, <cyberware:scanner>, <cyberware:surgery>, <draconicevolution:fusion_crafting_core>, <enderio:blockAlloySmelter>, <bigreactors:reactorCasing>, <enderio:blockEnchanter>, <enderio:blockPowerMonitor>, <enderio:blockPoweredSpawner>, <enderio:blockSoulBinder>, <enderio:blockStirlingGenerator>, <enderio:blockTransceiver>, <immersiveengineering:metalDecoration0:4>, <immersiveengineering:metalDecoration0:5>, <projecte:item.pe_philosophers_stone>, <refinedstorage:controller>, <rftoolsdim:dimension_builder>, <projecte:collector_mk1>, <immersiveengineering:material:9>, <immersiveengineering:material:8>] as IItemStack[];
for a, item in ItemRemovalArray {
recipes.remove(item);
}
recipes.addShaped(<actuallyadditions:blockAtomicReconstructor>, [[CIron, <ore:dustCharcoal>, CIron], [<ore:dustRedstone>, <environmentaltech:lens_item>, <ore:dustRedstone>], [CIron, <ore:dustCharcoal>, CIron]]);

recipes.addShaped(<appliedenergistics2:charger>, [[Signa, Cert, Signa], [Signa, null, null], [Signa, Cert, Signa]]);

recipes.addShaped(<appliedenergistics2:inscriber>, [[Signa, <minecraft:piston>, Signa], [Elec, null, Signa], [Signa, <minecraft:piston>, Signa]]);

recipes.addShaped(<appliedenergistics2:quartz_growth_accelerator>, [[RAlloy, Cert, RAlloy], [<appliedenergistics2:quartz_glass>, <forestry:hardenedMachine>, <appliedenergistics2:quartz_glass>], [RAlloy, Cert, RAlloy]]);

recipes.addShaped(<bloodmagic:BlockAltar>, [[<ore:blockMossy>, null, <ore:blockMossy>], [<ore:blockMossy>, <enderio:blockTank>, <ore:blockMossy>], [Soul, <bloodmagic:ItemMonsterSoul>, Soul]]); 

recipes.addShaped(<bloodmagic:BlockSoulForge>, [[Silv, null, Silv], [<ore:blockMossy>, Lumi, <ore:blockMossy>], [<ore:blockMossy>, <atlcraft:atlcraft_biglight1_bonfire_mossstone>, <ore:blockMossy>]]);

recipes.addShaped(<calculator:AtomicMultiplier>, [[<ore:blockEnderium>, <actuallyadditions:itemMisc:19>, <ore:blockEnderium>], [<calculator:FabricationChamber>, <quantumflux:quibitCluster:5>, <calculator:FabricationChamber>], [Knight, <calculator:FlawlessAssembly>, Knight]]);

recipes.addShaped(<rftoolsdim:dimension_builder>, [[<appliedenergistics2:material:9>, <rftoolscontrol:cpu_core_1000>, <appliedenergistics2:material:9>], [<calculator:ElectricDiamond>, <foundry:componentBlock:2>, <calculator:ElectricDiamond>], [Plat, Plat, Plat]]);

recipes.addShaped(<calculator:HealthProcessor>, [[End, <mysticalagriculture:supremium_apple>, End], [Many, <calculator:ProcessingChamber>, Many], [End, <gendustry:EnvProcessor>, End]]);

recipes.addShaped(<calculator:PowerCube>, [[<ore:stone>, <ore:stone>, <ore:stone>], [<ore:stone>, <ore:blockRedstone>, <ore:stone>], [<ore:stone>, <ore:stone>, <ore:stone>]]);

recipes.addShaped(<cyberware:engineeringTable>, [[null, <minecraft:piston>, ESteel], [ESteel, ESteel, ESteel], [ESteel, <rftoolsdim:dimlet_workbench>, ESteel]]);

recipes.addShaped(<cyberware:scanner>, [[ESteel, <cyberware:cybereyes>, ESteel], [ESteel, <actuallyadditions:itemCrystal:2>, ESteel], [ESteel, ESteel, ESteel]]);

recipes.addShaped(<cyberware:surgery>, [[ESteel, <rftoolscontrol:cpu_core_2000>, ESteel], [ESteel, <forestry:solderingIron>, ESteel], [DSteel, <rftools:powercell>, DSteel]]);

recipes.addShaped(<draconicevolution:fusion_crafting_core>, [[<enderio:blockReinforcedObsidian>, <calculator:EndDiamond>, <enderio:blockReinforcedObsidian>], [<calculator:EndDiamond>, <draconicevolution:draconic_core>, <calculator:EndDiamond>], [<enderio:blockReinforcedObsidian>, <calculator:EndDiamond>, <enderio:blockReinforcedObsidian>]]);

recipes.addShaped(<enderio:blockAlloySmelter>, [[Brz, <foundry:alloyFurnace>, Brz], [<minecraft:furnace>, <enderio:itemMachinePart>, <minecraft:furnace>], [Brz, <foundry:bronzeCauldron>, Brz]]);

recipes.addShaped(<bigreactors:reactorCasing> * 20, [[<ore:blockSteel>, <ore:blockGraphite>, <ore:blockSteel>], [<ore:blockGraphite>, <enderio:itemMachinePart>, <ore:blockGraphite>], [<ore:blockSteel>, <ore:blockGraphite>, <ore:blockSteel>]]);

recipes.addShaped(<enderio:blockEnchanter>, [[<minecraft:enchanted_book>, <eplus:advanced_table>, <minecraft:enchanted_book>], [DSteel, DSteel, DSteel], [null, DSteel, null]]);

recipes.addShaped(<enderio:blockPowerMonitor>, [[DSteel, <rftools:rf_monitor>, DSteel], [ESteel, <enderio:itemMachinePart>, ESteel], [ESteel, CIron, ESteel]]);

game.setLocalization("item.earth.name", "Core of the Earth");
recipes.addShaped(<biomesoplenty:earth>, [[<morebees:nether_starFragment>, <bloodmagic:ItemSoulGem:4>.onlyWithTag({souls: 16384.0, demonWillType: "VENGEFUL"}), <morebees:nether_starFragment>], [<betterwithmods:aesthetic:2>, <actuallyadditions:itemMisc:19>, <betterwithmods:aesthetic:2>], [<draconicevolution:draconic_block>, <calculator:FlawlessCalculator>, <draconicevolution:draconic_block>]]);
Casting.addRecipe(<projecte:item.pe_philosophers_stone>, <liquid:vapor_of_levity> * 6000, <foundry:mold:23>, <biomesoplenty:earth>, 30);

flawless.addRecipe(<draconicevolution:draconic_block>, <projecte:item.pe_matter>, <bloodmagic:BlockDemonCrystal:4>, <calculator:AtomicMultiplier>, <projecte:condenser_mk1>);

recipes.addShaped(<enderio:blockPoweredSpawner>, [[End, <actuallyadditions:itemMisc:20>, End], [End, <soulshardstow:BlockCage>, End], [<enderio:itemMaterial:6>, <enderio:itemFrankenSkull:5>, <enderio:itemMaterial:6>]]);

recipes.addShaped(<enderio:blockSoulBinder>, [[<mysticalagriculture:soulium_ingot>, <soulshardstow:ItemMaterials>, <mysticalagriculture:soulium_ingot>], [<ore:itemSkull>, <enderio:itemMachinePart>, <ore:itemSkull>], [<mysticalagriculture:soulium_ingot>, <soulshardstow:ItemMaterials>, <mysticalagriculture:soulium_ingot>]]);

recipes.addShaped(<enderio:blockStirlingGenerator>, [[<ore:bricksStone>, <ore:bricksStone>, <ore:bricksStone>], [Inv, <calculator:PowerCube>, Inv], [<ore:gearCopper>, <minecraft:piston>, <ore:gearCopper>]]);

recipes.addShaped(<enderio:blockTransceiver>, [[End, <enderio:itemFrankenSkull:4>, End], [<ore:blockGlassHardened>, <ore:itemEnderCrystal>, <ore:blockGlassHardened>], [End, <enderio:itemBasicCapacitor:2>, End]]);

recipes.addShaped(<immersiveengineering:metalDecoration0:4> * 4, [[Inv, <immersiveengineering:material:8>, Inv], [Brz, Brz, Brz], [Inv, <immersiveengineering:material:8>, Inv]]);

recipes.addShaped(<immersiveengineering:metalDecoration0:5> * 4, [[DSteel, <immersiveengineering:material:9>, DSteel], [<minecraft:sticky_piston>, Coba, <minecraft:sticky_piston>], [DSteel, <immersiveengineering:material:9>, DSteel]]);

recipes.addShaped(<refinedstorage:controller>, [[Signa, <ore:gemEmerald>, Signa], [<ore:itemSilicon>, <enderio:itemMachinePart>, <ore:itemSilicon>], [Signa, <ore:itemSilicon>, Signa]]);

recipes.addShaped(<draconicevolution:draconium_capacitor:2>.withTag({Energy: 1073741823}), [[<projecte:matter_block:1>, <draconicevolution:chaotic_core>, <projecte:matter_block:1>], [<actuallyadditions:itemMisc:19>, <draconicevolution:draconium_capacitor:1>.onlyWithTag({Energy: 256000000}), <actuallyadditions:itemMisc:19>], [<projecte:matter_block:1>, <actuallyadditions:itemMisc:19>, <projecte:matter_block:1>]]);

recipes.addShaped(<appliedenergistics2:creative_energy_cell>, [[<appliedenergistics2:dense_energy_cell>.onlyWithTag({internalMaxPower: 1600000.0, internalCurrentPower: 1600000.0}), <appliedenergistics2:dense_energy_cell>.onlyWithTag({internalMaxPower: 1600000.0, internalCurrentPower: 1600000.0}), <appliedenergistics2:dense_energy_cell>.onlyWithTag({internalMaxPower: 1600000.0, internalCurrentPower: 1600000.0})], [<appliedenergistics2:dense_energy_cell>.onlyWithTag({internalMaxPower: 1600000.0, internalCurrentPower: 1600000.0}), DCR, <appliedenergistics2:dense_energy_cell>.onlyWithTag({internalMaxPower: 1600000.0, internalCurrentPower: 1600000.0})], [<appliedenergistics2:dense_energy_cell>.onlyWithTag({internalMaxPower: 1600000.0, internalCurrentPower: 1600000.0}), <appliedenergistics2:dense_energy_cell>.onlyWithTag({internalMaxPower: 1600000.0, internalCurrentPower: 1600000.0}), <appliedenergistics2:dense_energy_cell>.onlyWithTag({internalMaxPower: 1600000.0, internalCurrentPower: 1600000.0})]]);

recipes.addShaped(<calculator:CreativePowerCube>, [[<draconicevolution:draconium_block:1>, <draconicevolution:draconium_block:1>, <draconicevolution:draconium_block:1>], [<draconicevolution:draconium_block:1>, DCR, <draconicevolution:draconium_block:1>], [<draconicevolution:draconium_block:1>, <draconicevolution:draconium_block:1>, <draconicevolution:draconium_block:1>]]);

recipes.addShapeless(<refinedstorage:wireless_grid:1>, [<refinedstorage:wireless_grid>.onlyWithTag({Energy: 3200}), DCR]);

recipes.addShapeless(<simplyjetpacks:itemJetpack>.withTag({sjData: {Energy: 20000}, RARITY: 5}), [<simplyjetpacks:itemJetpack:9>.onlyWithTag({sjData: {Energy: 20000000}}), DCR]);

recipes.addShapeless(<tconstruct:materials:50>, [<tconstruct:materials:16>, <tconstruct:materials:17>, <tconstruct:materials:14>, <tconstruct:materials:19>, DCR]);

recipes.addShapeless(<bloodmagic:ItemSacrificialDagger:1>.withTag({sacrifice: 0 as byte}), [<bloodmagic:ItemSacrificialDagger>.withTag({sacrifice: 0 as byte}), DCR]);

recipes.addShapeless(<refinedstorage:fluid_storage:4>.withTag({Storage: {Fluids: [], Stored: 0, Protocol: 1}}), [<refinedstorage:fluid_storage:3>.withTag({Storage: {Fluids: [], Stored: 0, Protocol: 1}}), DCR]);

recipes.addShapeless(<refinedstorage:storage:4>.withTag({Storage: {Items: [], Stored: 0, Protocol: 1}}), [<refinedstorage:storage:3>.withTag({Storage: {Items: [], Stored: 0, Protocol: 1}}), DCR]);

recipes.addShapeless(<appliedenergistics2:creative_storage_cell>, [<refinedstorage:storage:4>.withTag({Storage: {Items: [], Stored: 0, Protocol: 1}})]);

recipes.addShaped(<refinedstorage:controller:1>, [[<refinedstorage:controller>, <refinedstorage:controller>, <refinedstorage:controller>], [<refinedstorage:controller>, DCR, <refinedstorage:controller>], [<refinedstorage:controller>, <refinedstorage:controller>, <refinedstorage:controller>]]);

recipes.remove(<substratum:plate:18>);
recipes.remove(<substratum:plate:14>);
recipes.remove(<substratum:plate:12>);
recipes.remove(<substratum:plate>);
recipes.remove(<substratum:plate:5>);
recipes.remove(<substratum:plate:11>);
recipes.remove(<foundry:componentBlock:3>);
recipes.addShaped(<foundry:componentBlock:3>, [[<ore:plateCopper>, <foundry:component:2>, <ore:plateCopper>], [<foundry:component:2>, null, <foundry:component:2>], [<ore:plateCopper>, <foundry:component:2>, <ore:plateCopper>]]);

recipes.addShaped(<immersiveengineering:material:8>, [[<ore:plateIron>, null, <ore:plateIron>], [null, <ore:plateBronze>, null], [<ore:plateIron>, null, <ore:plateIron>]]);
recipes.addShaped(<immersiveengineering:material:9>, [[<ore:plateSteel>, null, <ore:plateSteel>], [null, <ore:plateBronze>, null], [<ore:plateSteel>, null, <ore:plateSteel>]]);

recipes.remove(<chancecubes:chance_Cube>);
var PI = [<substratum:ingot:11>, <substratum:blockMetal1:11>, <substratum:nugget:12>, <substratum:dust:14>, <substratum:ore:6>, <substratum:slab2:5>, <substratum:stairsPlatinum>, <substratum:gear:14>, <substratum:plate:13>, <substratum:rod:13>] as IItemStack[];
var lp = <liquid:liquidplatinum>;

for p, item in PI {
Melting.removeRecipe(item);
}
Melting.addRecipe(lp * 108, PI[0], 3600, 140);
Melting.addRecipe(lp * 972, PI[1], 3600, 140);
Melting.addRecipe(lp * 12, PI[2], 3600, 140);
Melting.addRecipe(lp * 324, PI[5], 3600, 140);
Melting.addRecipe(lp * 729, PI[6], 3600, 140);
Melting.addRecipe(lp * 432, PI[7], 3600, 140);
Melting.addRecipe(lp * 108, PI[8], 3600, 140);
Melting.addRecipe(lp * 54, PI[9], 3600, 140);
furnace.remove(<substratum:ingot:11>);
furnace.addRecipe(<substratum:ingot:11>, <ore:dustPlatinum>);




