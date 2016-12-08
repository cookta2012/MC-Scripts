/* Document Author: Shadows_of_Fire
   Document Edited: 6/2/2016
   Document Modpack: Magic Theory 2
*/

/* Dependencies
Mods: Applied Energistics 2, Blood Magic, ChromatiCraft, Automagy, Thaumcraft, Forestry, Binnie's Mods, Railcraft, Aura Cascade, Blood Arsenal, Thaumic Horizons, Forbidden Magic, Avaritia, Thaumic Tinkerer
External ZS Files: Oredict.zs
*/ 
import mods.appeng.Inscriber;
import mods.thaumcraft.Crucible;
import mods.thaumcraft.Aspects;
import mods.thaumcraft.Arcane;
import mods.thaumcraft.Infusion;

val rds = <ore:dustRedstone>;
val cc = <ore:craftingCertus>;
val ak = <appliedenergistics2:item.ItemMultiMaterial:35>;
val bk = <appliedenergistics2:item.ItemMultiMaterial:36>;
val ck = <appliedenergistics2:item.ItemMultiMaterial:37>;
val dk = <appliedenergistics2:item.ItemMultiMaterial:38>;
val sak = <appliedenergistics2:item.ItemMultiMaterial:32>;
val sbk = <appliedenergistics2:item.ItemMultiMaterial:33>;
val sck = <appliedenergistics2:item.ItemMultiMaterial:34>;
val cf = <ore:craftingFluix>;
val gds = <Forestry:thermionicTubes:6>;

#Without meteors, you need bees for skystone, but it doesnt generate. Problems, Problems.
Crucible.addRecipe("ASPECTS", <appliedenergistics2:tile.BlockSkyStone>, <minecraft:stone>, "machina 8, aer 16, signum 4");	
Aspects.add(<Automagy:blockEntitySignal>, "signum 4");
#Thats the nerf to controllers ^
#Now lets get to a teiring system.
/* Using levels of how strong AE is... I want it to exist but not become the ultimate solution
1. ME Chest, ME Cells 1k + 4k
2. Drives, Cables, 16k ME, Energy Acceptor
3. I/O Busses, Energy Cells
4. ME Controller, Provided you have Skystone
5. Crafting Terminal, Molecular Assembler
6. Interface Terminal, ME Interface, Crafting CPU, 64k ME
7. Security Terminal, Wireless Terminal, Wireless Access Point
8. P2P, Quantum Ring
9. Spatial IO
*/
#Recipe Removal for rewrite.

recipes.remove(<appliedenergistics2:tile.BlockSkyCompass>);
recipes.remove(<appliedenergistics2:tile.BlockInscriber>);
recipes.remove(<appliedenergistics2:tile.BlockWireless>);
recipes.remove(<appliedenergistics2:tile.BlockCharger>);
recipes.remove(<appliedenergistics2:tile.BlockSecurity>);
recipes.remove(<appliedenergistics2:tile.BlockQuantumRing>);
recipes.remove(<appliedenergistics2:tile.BlockQuantumLinkChamber>);
recipes.remove(<appliedenergistics2:tile.BlockSpatialPylon>);
recipes.remove(<appliedenergistics2:tile.BlockSpatialIOPort>);
recipes.remove(<appliedenergistics2:tile.BlockController>);
recipes.remove(<appliedenergistics2:tile.BlockDrive>);
recipes.remove(<appliedenergistics2:tile.BlockChest>);
recipes.removeShaped(<appliedenergistics2:tile.BlockInterface>);
recipes.remove(<appliedenergistics2:tile.BlockCellWorkbench>);
recipes.remove(<appliedenergistics2:tile.BlockIOPort>);
recipes.remove(<appliedenergistics2:tile.BlockEnergyAcceptor>);
#recipes.remove(<appliedenergistics2:tile.BlockQuartzGrowthAccelerator>);
recipes.remove(<appliedenergistics2:tile.BlockEnergyCell>);
recipes.remove(<appliedenergistics2:tile.BlockDenseEnergyCell>);
recipes.remove(<appliedenergistics2:tile.BlockCraftingUnit:*>);
recipes.remove(<appliedenergistics2:tile.BlockInterface>);
recipes.remove(<appliedenergistics2:tile.BlockMolecularAssembler>);
recipes.remove(<appliedenergistics2:item.ItemMultiMaterial:28>);
recipes.remove(<appliedenergistics2:item.ItemMultiMaterial:44>);
recipes.remove(<appliedenergistics2:item.ItemMultiMaterial:25>);
recipes.remove(<appliedenergistics2:item.ItemMultiMaterial:34>);
recipes.remove(<appliedenergistics2:item.ItemMultiMaterial:33>);
recipes.remove(<appliedenergistics2:item.ItemMultiMaterial:37>);
recipes.remove(<appliedenergistics2:item.ItemMultiMaterial:35>);
recipes.remove(<appliedenergistics2:item.ItemMultiMaterial:32>);
recipes.remove(<appliedenergistics2:item.ItemMultiMaterial:36>);
recipes.remove(<appliedenergistics2:item.ItemMultiMaterial:38>);
recipes.remove(<appliedenergistics2:item.ItemMultiMaterial:42>);
recipes.remove(<appliedenergistics2:item.ItemMultiMaterial:43>);
furnace.remove(<appliedenergistics2:item.ItemMultiMaterial:5>);
recipes.remove(<appliedenergistics2:item.ItemMultiPart:360>);
recipes.remove(<appliedenergistics2:item.ItemMultiPart:260>);
#recipes.remove(<appliedenergistics2:item.ItemMultiPart:320>);
recipes.remove(<appliedenergistics2:item.ItemMultiPart:240>);
recipes.remove(<appliedenergistics2:item.ItemMultiPart:440>);
recipes.remove(<appliedenergistics2:item.ItemMultiPart:480>);
recipes.remove(<appliedenergistics2:item.ItemMultiPart:280>);
recipes.remove(<appliedenergistics2:item.ItemMultiPart:460>);
recipes.remove(<appliedenergistics2:item.ItemMultiPart:340>);
#recipes.remove(<appliedenergistics2:item.ItemMultiPart:220>);
#recipes.remove(<appliedenergistics2:item.ItemMultiPart:400>);
recipes.remove(<appliedenergistics2:item.ItemMultiPart:380>);
recipes.remove(<appliedenergistics2:item.ToolWirelessTerminal>);
recipes.remove(<appliedenergistics2:item.ToolMemoryCard>);
recipes.remove(<appliedenergistics2:item.ToolBiometricCard>);
recipes.remove(<appliedenergistics2:item.ItemMultiPart:16>);
recipes.remove(<appliedenergistics2:item.ToolNetworkTool>);

#Repeat Tier List.
#Tier 1 - ME Chest, ME Cells 1k + 4k
recipes.addShaped(<appliedenergistics2:tile.BlockChest>, [[<ore:blockGlass>, <ore:itemIlluminatedPanel>, <ore:blockGlass>], [<Forestry:chipsets>, <appliedenergistics2:item.ItemMultiPart:140>, <Forestry:chipsets>], [<ore:ingotBronze>, <ore:craftingCertus>, <ore:ingotBronze>]]);
recipes.addShaped(ak, [[rds, cc, rds], [cc, <Forestry:chipsets:2>, cc], [rds, cc, rds]]);
recipes.addShaped(bk, [[<Automagy:blockRedcrystalAmp>, <Forestry:chipsets:1>, <Automagy:blockRedcrystalAmp>], [ak, <appliedenergistics2:tile.BlockQuartzGlass>, ak], [<Automagy:blockRedcrystalAmp>, ak, <Automagy:blockRedcrystalAmp>]]);
recipes.addShapeless(<appliedenergistics2:item.ToolNetworkTool>, [<appliedenergistics2:item.ToolCertusQuartzWrench>, <ore:itemIlluminatedPanel>, <Forestry:chipsets:2>, <ore:chestWood>]);
#Tier 2 - Drives, Cables, 16k ME, Energy Acceptor, REQ: Charger, REQ: Terminal, REQ: Cell Workbench
#Tier 2 - Items from other mods - Integrated Circuit Board | Reciever Circuit | 
recipes.addShaped(<appliedenergistics2:tile.BlockCharger>, [[<Automagy:blockRedcrystalDim>, <Forestry:chipsets:3>, <Automagy:blockRedcrystalDim>], [<ore:ingotIron>, <Thaumcraft:blockStoneDevice:5>, <ore:ingotIron>], [<ore:ingotIron>, <witchery:ingredient:11>, <ore:ingotIron>]]);
recipes.addShaped(<appliedenergistics2:tile.BlockDrive>, [[<Railcraft:part.circuit>, <appliedenergistics2:item.ItemMultiPart:16>, <Railcraft:part.circuit>], [<Genetics:misc:9>, <StorageDrawers:controller>, <Genetics:misc:9>], [<Railcraft:part.circuit>, <appliedenergistics2:item.ItemMultiPart:16>, <Railcraft:part.circuit>]]);
recipes.addShapeless(<appliedenergistics2:item.ItemMultiPart:16> * 4, [<appliedenergistics2:item.ItemMultiPart:140>, cf, cf, <AWWayofTime:bloodMagicBaseItems:2>]);
recipes.addShaped(ck, [[gds, <Forestry:chipsets:2>, gds], [bk, <appliedenergistics2:tile.BlockQuartzGlass>, bk], [gds, bk, gds]]);
recipes.addShaped(<appliedenergistics2:tile.BlockEnergyAcceptor>, [[<Forestry:thermionicTubes:5>, <witchery:ingredient:29>, <Forestry:thermionicTubes:5>], [<appliedenergistics2:item.ItemMultiPart:16>, <ImmersiveEngineering:metalDevice:3>, <appliedenergistics2:item.ItemMultiPart:16>], [<Forestry:thermionicTubes:5>, <AWWayofTime:itemRitualDiviner>.reuse(), <Forestry:thermionicTubes:5>]]);
recipes.addShapeless(<appliedenergistics2:item.ItemMultiPart:380>, [<ore:itemIlluminatedPanel>, <Thaumcraft:ItemGolemUpgrade:4>, <Forestry:chipsets:3>]);
recipes.addShaped(<appliedenergistics2:tile.BlockCellWorkbench>, [[<ore:blockCloth>, <Forestry:chipsets:3>, <ore:blockCloth>], [<ore:ingotLead>, <Thaumcraft:blockChestHungry>, <ore:ingotLead>], [<ore:ingotCupronickel>, <ore:ingotCupronickel>, <ore:ingotCupronickel>]]);
#Tier 3 - I/O Busses, Energy Cells, REQ: Cores, REQ: Level Emitter, REQ: Cards
#Tier 3 - Item from other mods - Integrated CPU, Emerald Electron Tube
Arcane.addShapeless("ASPECTS", <appliedenergistics2:item.ItemMultiMaterial:44> * 8, "perditio 125", [<ore:shardCrystal>, <Genetics:misc:10>, <ore:dustFluix>]);
Arcane.addShapeless("ASPECTS", <appliedenergistics2:item.ItemMultiMaterial:43> * 8, "ordo 125", [<ore:shardCrystal>, <Genetics:misc:10>, <ore:dustCertusQuartz>]);
recipes.addShaped(<appliedenergistics2:item.ItemMultiPart:240>, [[<ore:ironwood>, <appliedenergistics2:item.ItemMultiMaterial:44>, <ore:ironwood>], [<ore:ironwood>, <minecraft:sticky_piston>, <ore:ironwood>]]);
recipes.addShaped(<appliedenergistics2:item.ItemMultiPart:260>, [[<ore:ironwood>, <appliedenergistics2:item.ItemMultiMaterial:43>, <ore:ironwood>], [<ore:ironwood>, <minecraft:piston>, <ore:ironwood>]]);
recipes.addShaped(<appliedenergistics2:tile.BlockEnergyCell>, [[<ore:gemDiamond>, <ore:gemDiamond>, <ore:gemDiamond>], [<Forestry:thermionicTubes:9>, <Genetics:misc:11>, <Forestry:thermionicTubes:9>], [<Forestry:thermionicTubes:9>, <appliedenergistics2:item.ItemMultiPart:16>, <Forestry:thermionicTubes:9>]]);
recipes.addShaped(<appliedenergistics2:tile.BlockDenseEnergyCell>, [[<appliedenergistics2:tile.BlockEnergyCell>, <appliedenergistics2:tile.BlockEnergyCell>, <appliedenergistics2:tile.BlockEnergyCell>], [<appliedenergistics2:tile.BlockEnergyCell>, <Genetics:misc:10>, <appliedenergistics2:tile.BlockEnergyCell>], [<appliedenergistics2:tile.BlockEnergyCell>, <appliedenergistics2:tile.BlockEnergyCell>, <appliedenergistics2:tile.BlockEnergyCell>]]);
recipes.addShaped(<appliedenergistics2:item.ItemMultiMaterial:28> * 2, [[<ore:dustHOPGraphite>, <ore:ingotManasteel>, null], [<ore:dustHOPGraphite>, <Genetics:misc:9>, <ore:ingotManasteel>], [<ore:dustHOPGraphite>, <ore:ingotManasteel>, null]]);
recipes.addShaped(<appliedenergistics2:item.ItemMultiMaterial:25> * 2, [[<ore:dustCharcoal>, <ore:ingotManasteel>, null], [<ore:dustCharcoal>, <Genetics:misc:9>, <ore:ingotManasteel>], [<ore:dustCharcoal>, <ore:ingotManasteel>, null]]);
recipes.addShapeless(<appliedenergistics2:item.ItemMultiPart:280>, [<minecraft:redstone_torch>, <Forestry:chipsets:2>]);
#Tier 4. ME Controller, Provided you have Skystone
recipes.addShaped(<appliedenergistics2:tile.BlockController>, [[<appliedenergistics2:tile.BlockSkyStone:1>, <appliedenergistics2:tile.BlockSkyStone:1>, <appliedenergistics2:tile.BlockSkyStone:1>], [<aura:ingotBlue>, <Automagy:blockThaumostaticPylon:1>, <aura:ingotBlue>], [<Railcraft:part.circuit>, <Genetics:misc:10>, <Forestry:chipsets:3>]]);
#Tier 5: Crafting Terminal, Molecular Assembler, Pattern Terminal
#Tier 5 from externals: Blood Iron, Knightmetal, Void Metal, Shadowmetal
recipes.addShapeless(<appliedenergistics2:item.ItemMultiPart:340>, [<appliedenergistics2:item.ItemMultiPart:380>, <Genetics:misc:10>, <ThaumicHorizons:voidPutty>]);
recipes.addShaped(<appliedenergistics2:tile.BlockMolecularAssembler>, [[<ore:knightmetal>, <Thaumcraft:blockCosmeticOpaque:2>, <ore:knightmetal>], [<AWWayofTime:inputRoutingFocus>, <Automagy:blockGolemWorkbench>, <AWWayofTime:outputRoutingFocus:4>], [<ore:knightmetal>, <Thaumcraft:blockCosmeticOpaque:2>, <ore:knightmetal>]]);
recipes.addShapeless(<appliedenergistics2:item.ItemMultiPart:360>, [<appliedenergistics2:item.ItemMultiPart:380>, <Forestry:chipsets:3>, <Forestry:chipsets:3>, <Automagy:golemWorkbenchUpgrade:5>]);
#Tier 6: Interface Terminal, ME Interface, Crafting CPU, 64k ME Cells
recipes.addShapeless(<appliedenergistics2:item.ItemMultiPart:480>, [<appliedenergistics2:item.ItemMultiPart:380>, <appliedenergistics2:tile.BlockInterface>, <Forestry:chipsets:3>]);
recipes.addShaped(<appliedenergistics2:tile.BlockInterface>, [[<ore:ingotShadow>, <appliedenergistics2:item.ItemMultiMaterial:43>, <ore:ingotShadow>], [<witchery:ingredient:100>, <ore:runeSlothB>, <witchery:ingredient:100>], [<BloodArsenal:blood_infused_diamond_bound>.reuse(), <appliedenergistics2:item.ItemMultiMaterial:44>, <BloodArsenal:blood_infused_diamond_bound>.reuse()]]);
recipes.removeShapeless(<appliedenergistics2:item.ItemMultiPart:56>, [<appliedenergistics2:item.ItemMultiPart:36>]);
recipes.addShapeless(<appliedenergistics2:item.ItemMultiPart:56> * 6, [<appliedenergistics2:item.ItemMultiPart:36>, <appliedenergistics2:item.ItemMultiPart:36>, <appliedenergistics2:item.ItemMultiPart:36>, <appliedenergistics2:item.ItemMultiPart:36>, <appliedenergistics2:item.ItemMultiPart:36>, <appliedenergistics2:item.ItemMultiPart:36>, <Automagy:blockRedcrystal>, <ore:gemAmber>]);
recipes.removeShapeless(<appliedenergistics2:item.ItemMultiPart:76>, [<appliedenergistics2:item.ItemMultiPart:36>]);
recipes.addShapeless(<appliedenergistics2:item.ItemMultiPart:76>, [<appliedenergistics2:item.ItemMultiPart:36>, <appliedenergistics2:item.ItemMultiPart:36>, <appliedenergistics2:item.ItemMultiPart:36>, <appliedenergistics2:item.ItemMultiPart:36>, <Automagy:blockRedcrystal>, <ore:gemAmber>]);
recipes.addShaped(<appliedenergistics2:tile.BlockCraftingUnit>, [[<ore:ingotSteel>, <Forestry:thermionicTubes:12>, <ore:ingotSteel>], [<appliedenergistics2:item.ItemMultiPart:56>, <Genetics:misc:11>, <appliedenergistics2:item.ItemMultiPart:56>], [<ore:ingotSteel>, <Forestry:thermionicTubes:12>, <ore:ingotSteel>]]);
recipes.addShapeless(<appliedenergistics2:tile.BlockCraftingUnit:1>, [<appliedenergistics2:tile.BlockCraftingUnit>, <AWWayofTime:speedRune>]);
recipes.addShaped(dk, [[<Forestry:thermionicTubes:7>, <Forestry:chipsets:3>, <Forestry:thermionicTubes:7>], [ck, <appliedenergistics2:tile.BlockQuartzGlass>, ck], [<Forestry:thermionicTubes:7>, ck, <Forestry:thermionicTubes:7>]]);
#Tier 7: Security Terminal, Wireless Terminal, Wireless Access Point
recipes.addShaped(<appliedenergistics2:tile.BlockSecurity>, [[<ore:ingotVoid>, <appliedenergistics2:tile.BlockChest>, <ore:ingotVoid>], [<appliedenergistics2:item.ItemMultiPart:56>, <Thaumcraft:FocusWarding>.reuse(), <appliedenergistics2:item.ItemMultiPart:56>], [<ore:ingotVoid>, <Genetics:misc:11>, <ore:ingotVoid>]]);
#REQ: Biometric Card
recipes.addShaped(<appliedenergistics2:item.ToolBiometricCard>, [[<Forestry:chipsets:3>, <ore:ingotElectrum>, <ore:ingotElectrum>], [<ore:fieryIngot>, <Automagy:blockRedcrystalDim>, <ore:fieryIngot>]]);
recipes.addShaped(<appliedenergistics2:tile.BlockWireless>, [[null, <appliedenergistics2:item.ItemMultiMaterial:41>, null], [<ore:ingotDreadium>, <appliedenergistics2:item.ItemMultiPart:76>, <ore:ingotDreadium>], [<AWWayofTime:bloodMagicBaseItems:17>, <appliedenergistics2:item.ItemMultiPart:76>, <AWWayofTime:bloodMagicBaseItems:17>]]);
recipes.addShaped(<appliedenergistics2:item.ItemMultiMaterial:42> * 6, [[<ore:dustObsidian>, <Automagy:blockRedcrystalMerc>, <appliedenergistics2:item.ItemMultiMaterial:45>], [<ore:ingotVoid>, <ore:ingotSteel>, <ore:ingotVoid>]]);
Infusion.addRecipe("ASPECTS", <appliedenergistics2:item.ItemMultiPart:380>, [<appliedenergistics2:item.ItemMultiMaterial:41>, <appliedenergistics2:tile.BlockDenseEnergyCell>, <ThaumicHorizons:planarConduit>, <Botania:manaResource:15>], "auram 16, superbia 16, invidia 16, signum 16", <appliedenergistics2:item.ToolWirelessTerminal>, 20);
Aspects.set(<Railcraft:part.circuit:2>, "signum 6, potentia 3, lucrum 1");
Aspects.set(<Railcraft:part.signal.lamp>, "signum 2, potentia 1, lux 1, tincturem 2");
#Tier 8: P2P, Quantum Ring, REQ: Memory Card
recipes.addShaped(<appliedenergistics2:item.ItemMultiPart:460>, [[null, <Automagy:blockScribePointer>, null], [<TwilightForest:item.carminite>.reuse(), <appliedenergistics2:item.ItemMultiPart:76>, <TwilightForest:item.carminite>.reuse()], [<appliedenergistics2:tile.BlockQuartzGlass>, <ThaumicTinkerer:warpGate>.transformReplace(<Thaumcraft:blockCosmeticSolid:2>), <appliedenergistics2:tile.BlockQuartzGlass>]]);
recipes.addShaped(<appliedenergistics2:item.ToolMemoryCard>, [[<Automagy:blockMetalGlow>, <ore:ingotElectrum>, <ore:ingotElectrum>], [<ore:fieryIngot>, <Automagy:blockRedcrystalDim>, <ore:fieryIngot>]]);
recipes.addShaped(<appliedenergistics2:tile.BlockQuantumRing> * 16, [[<Avaritia:Resource:1>, <HardcoreEnderExpansion:transference_gem:*>.transformDamage(32), <Avaritia:Resource:1>], [<ChromatiCraft:chromaticraft_item_crafting:22>, <ExtraUtilities:decorativeBlock1:5>, <ChromatiCraft:chromaticraft_item_crafting:22>], [<Avaritia:Resource:1>, <ore:ingotCosmicNeutronium>, <Avaritia:Resource:1>]]);
recipes.addShaped(<appliedenergistics2:tile.BlockQuantumLinkChamber> * 2, [[<AWWayofTime:demonBloodShard>, <ThaumicTinkerer:skyPearl>, <AWWayofTime:demonBloodShard>], [<ThaumicTinkerer:skyPearl>, <ChromatiCraft:chromaticraft_item_link>, <ThaumicTinkerer:skyPearl>], [<AWWayofTime:demonBloodShard> ,<ThaumicTinkerer:skyPearl>, <AWWayofTime:demonBloodShard>]]);
#Tier 9: Spatial
Infusion.addRecipe("ASPECTS", <NodalMechanics:item.nodalmechanics.matrix>.withTag({aspects: "terminus,tempestas,tempus,perplexus,tincturem,signum,superbia,fabrico"}), [<AWWayofTime:bloodMagicBaseItems:30>, <AWWayofTime:bloodMagicBaseItems:30>, <witchery:leonardsurn>, <witchery:ingredient:23>, <TaintedMagic:PrimalBlade>], "terminus 32, signum 32, perplexus 16, tempus 32", <appliedenergistics2:tile.BlockSpatialIOPort>, 20);
recipes.addShaped(<appliedenergistics2:tile.BlockSpatialPylon> * 16, [[<Botania:pylon:2>, <ThaumicHorizons:recombinator>, <Botania:pylon:2>], [<ChromatiCraft:chromaticraft_item_crafting:11>, <ChromatiCraft:chromaticraft_block_super:*>, <ChromatiCraft:chromaticraft_item_crafting:11>], [<Botania:pylon:2>, <gadomancy:BlockStoneMachine:1>, <Botania:pylon:2>]]);
recipes.addShaped(sak, [[<ExtraUtilities:bedrockiumIngot>, <ore:pearlFluix>, <ExtraUtilities:bedrockiumIngot>], [<ore:pearlFluix>, <HardcoreEnderExpansion:essence:2>, <ore:pearlFluix>], [<ExtraUtilities:bedrockiumIngot>, <ore:pearlFluix>, <ExtraUtilities:bedrockiumIngot>]]);
recipes.addShaped(sbk, [[rds, <minecraft:skull>, rds], [sak, <HardcoreEnderExpansion:enhanced_ender_pearl>.withTag({HEE_enhancements: ["NO_FALL_DAMAGE", "NO_GRAVITY", "INCREASED_RANGE", "DOUBLE_SPEED", "EXPLOSIVE", "FREEZE", "RIDING"]}), sak], [rds, sak, rds]]);
recipes.addShaped(sck, [[<TwilightForest:item.arcticFur>, cc, <TwilightForest:item.arcticFur>], [sbk, <xreliquary:dragon_claws>, sbk], [<TwilightForest:item.arcticFur>, sbk, <TwilightForest:item.arcticFur>]]);
recipes.addShapeless(<appliedenergistics2:tile.BlockInterface>, [<appliedenergistics2:item.ItemMultiPart:440>]);
recipes.addShapeless(<appliedenergistics2:item.ItemMultiPart:440>, [<appliedenergistics2:tile.BlockInterface>]);




/*
#Meteors off, Press recipes. Used in V1.0.2, Deprecated forward.
Inscriber.addRecipe([<Automagy:crystalBrain:5>], <minecraft:iron_block>, <ThaumicHorizons:voidPutty>, <appliedenergistics2:item.ItemMultiMaterial:19>, "Press");
Inscriber.addRecipe([<Automagy:crystalBrain:3>], <minecraft:iron_block>, <ThaumicHorizons:voidPutty>, <appliedenergistics2:item.ItemMultiMaterial:15>, "Press");
Inscriber.addRecipe([<Automagy:crystalBrain:2>], <minecraft:iron_block>, <ThaumicHorizons:voidPutty>, <appliedenergistics2:item.ItemMultiMaterial:14>, "Press");
Inscriber.addRecipe([<Automagy:crystalBrain:4>], <minecraft:iron_block>, <ThaumicHorizons:voidPutty>, <appliedenergistics2:item.ItemMultiMaterial:13>, "Press");
recipes.addShaped(<appliedenergistics2:tile.BlockCharger>, [[<minecraft:iron_ingot>, <ImmersiveEngineering:metalDevice>, <minecraft:iron_ingot>], [<Automagy:blockInventarium>, null, <Botania:corporeaSpark>], [<minecraft:iron_ingot>, <ImmersiveEngineering:metalDevice>, <minecraft:iron_ingot>]]);
*/