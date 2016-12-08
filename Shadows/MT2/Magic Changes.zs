/* Document Author: Shadows_of_Fire
   Document Edited: 6/17/2016
   Document Modpack: Magic Theory 2
*/

/* Dependencies
Mods: Thaumcraft, Nodal Mechanics, Thaumic Horizons, Tainted Magic, Harvestcraft
*/ 
import mods.thaumcraft.Arcane;
import mods.thaumcraft.Infusion;

#A little nerf to Nodal Mechs
Arcane.removeRecipe(<NodalMechanics:item.nodalmechanics.matrix>);
Arcane.addShaped("NODECATALYZATION", <NodalMechanics:item.nodalmechanics.matrix>, "ordo 300, ignis 300, perditio 300, aqua 300, aer 300, terra 300", [[<ore:eternalLifeEssence>, <ore:ingotHeeEndium>, <ore:eternalLifeEssence>], [<ore:ingotHeeEndium>, <AWWayofTime:blockCrystalBelljar>.withTag({reagentTanks: [{amount: 16000, Reagent: "orbisTerrae", capacity: 16000}]}), <ore:ingotHeeEndium>], [<ore:eternalLifeEssence>, <ore:ingotHeeEndium>, <ore:eternalLifeEssence>]]);

#This crashed SMP. Second one is just kinda OP.
recipes.remove(<aura:prismaticWand>);
recipes.remove(<aura:angelJumpAmulet>);

#Oh i have no clue what this is or where it came from
recipes.remove(<ThaumicTinkerer:wardSlab>);

#Fortress Armor Progression.  Thaumium to Void to Shadow
Infusion.removeRecipe(<TaintedMagic:HelmetVoidFortress>);
Infusion.removeRecipe(<TaintedMagic:ChestplateVoidFortress>);
Infusion.removeRecipe(<TaintedMagic:LeggingsVoidFortress>);
Infusion.removeRecipe(<TaintedMagic:HelmetShadowFortress>);
Infusion.removeRecipe(<TaintedMagic:ChestShadowFortress>);
Infusion.removeRecipe(<TaintedMagic:LegsShadowFortress>);

Infusion.addRecipe("VOIDFORTRESS", <Thaumcraft:ItemHelmetFortress:*>, [<Thaumcraft:ItemResource:16>, <Thaumcraft:ItemResource:16>, <minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:emerald>], "metallum 24, tutamen 16, alienis 16, vacuos 16, praecantatio 8", <TaintedMagic:HelmetVoidFortress>, 14);
Infusion.addRecipe("VOIDFORTRESS", <Thaumcraft:ItemChestplateFortress:*>, [<Thaumcraft:ItemResource:16>, <Thaumcraft:ItemResource:16>, <Thaumcraft:ItemResource:16>, <Thaumcraft:ItemResource:16>, <minecraft:gold_ingot>, <minecraft:leather>], "metallum 24, tutamen 24, alienis 16, vacuos 24, praecantatio 8", <TaintedMagic:ChestplateVoidFortress>, 14);
Infusion.addRecipe("VOIDFORTRESS", <Thaumcraft:ItemLeggingsFortress:*>, [<Thaumcraft:ItemResource:16>, <Thaumcraft:ItemResource:16>, <Thaumcraft:ItemResource:16>, <minecraft:gold_ingot>, <minecraft:leather>], "metallum 24, tutamen 20, alienis 16, vacuos 20, praecantatio 8", <TaintedMagic:LeggingsVoidFortress>, 14);
Infusion.addRecipe("SHADOWFORTRESSARMOR", <TaintedMagic:HelmetVoidFortress:*>, [<TaintedMagic:ShadowmetalBlock>, <TaintedMagic:ShadowmetalBlock>, <ForbiddenMagic:NetherShard:3>, <minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:emerald>], "tenebrae 30, metallum 28, vacuos 22, tutamen 20, praecantatio 12", <TaintedMagic:HelmetShadowFortress>, 20);
Infusion.addRecipe("SHADOWFORTRESSARMOR", <TaintedMagic:ChestplateVoidFortress:*>, [<TaintedMagic:ShadowmetalBlock>, <TaintedMagic:ShadowmetalBlock>, <TaintedMagic:ShadowmetalBlock>, <TaintedMagic:ShadowmetalBlock>, <ForbiddenMagic:NetherShard:3>, <minecraft:gold_ingot>, <minecraft:leather>], "tenebrae 34, metallum 38, vacuos 26, tutamen 26, praecantatio 18", <TaintedMagic:ChestShadowFortress>, 20);
Infusion.addRecipe("SHADOWFORTRESSARMOR", <TaintedMagic:LeggingsVoidFortress:*>, [<TaintedMagic:ShadowmetalBlock>, <TaintedMagic:ShadowmetalBlock>, <TaintedMagic:ShadowmetalBlock>, <ForbiddenMagic:NetherShard:3>, <minecraft:gold_ingot>, <minecraft:leather>], "tenebrae 32, metallum 32, vacuos 24, tutamen 24, praecantatio 16", <TaintedMagic:LegsShadowFortress>, 20);



#Oh this really doesn't need a reason with Chroma in here.
recipes.remove(<harvestcraft:epicbaconItem>);
recipes.remove(<harvestcraft:rainbowcurryItem>);

#Division Sigil and Cursed Earth
Infusion.addRecipe("ASPECTS", <ExtraUtilities:divisionSigil>, [<xreliquary:dragon_claws>, <minecraft:nether_star>, <minecraft:nether_star>, <xreliquary:dragon_claws>, <AWWayofTime:demonicSlate>, <AWWayofTime:demonicSlate>, <xreliquary:dragon_claws>, <HardcoreEnderExpansion:stardust>, <HardcoreEnderExpansion:stardust>, <xreliquary:dragon_claws>, <AWWayofTime:demonicSlate>, <AWWayofTime:demonicSlate>], "permutatio 32, alienis 32", <ExtraUtilities:divisionSigil>.withTag({damage: 256}), 16);
Infusion.addRecipe("ASPECTS", <Botania:altGrass:4>, [<xreliquary:salamander_eye>, <xreliquary:salamander_eye>], "infernus 32, ira 64", <ExtraUtilities:cursedearthside> * 32, 12);

#THIS BREAKS ALL YOUR FURNACES STAY AWAY FROM IT
Infusion.removeRecipe(<ThaumicHorizons:focusLiquefaction>);

#Idk
Arcane.removeRecipe(<Thaumcraft:GolemBell>);
Infusion.addRecipe("ASPECTS", <minecraft:quartz>, [<minecraft:quartz>, <minecraft:quartz>, <minecraft:quartz>, <minecraft:stick>], "ordo 5", <Thaumcraft:GolemBell>, 0);

#Another Duplication.  This one is quite the annoyance to remove.  All recipes using it must be re-added.
recipes.remove(<xreliquary:void_tear>);
recipes.addShaped(<TabulaRasa:RasaItem0:14>, [[<minecraft:ghast_tear>, <minecraft:ender_eye>], [<minecraft:ender_eye>, <minecraft:ghast_tear>]]);

recipes.remove(<xreliquary:sojourner_staff>);
recipes.remove(<xreliquary:lantern_of_paranoia>);
recipes.remove(<xreliquary:midas_touchstone>);
recipes.remove(<xreliquary:ice_magus_rod>);
recipes.remove(<xreliquary:ender_staff>);
recipes.remove(<xreliquary:twilight_cloak>);
recipes.remove(<xreliquary:angelic_feather>);
recipes.remove(<xreliquary:dragon_talon>);
recipes.remove(<xreliquary:dragon_claws>);
recipes.remove(<xreliquary:kraken_shell>);
recipes.remove(<xreliquary:hero_medallion>);
recipes.remove(<xreliquary:infernal_tear>);
recipes.remove(<xreliquary:wraith_node>);

val vT = <TabulaRasa:RasaItem0:14>;
val iF = <ore:itemFeather>;
iF.add(<minecraft:feather>);
iF.add(<TwilightForest:item.tfFeather>);
recipes.addShaped(<xreliquary:sojourner_staff>, [[<minecraft:magma_cream>, vT, <minecraft:magma_cream>], [<ore:ingotGold>, <ore:rodBlaze>, <ore:ingotGold>], [<xreliquary:glowing_water>, <ore:ingotGold>, <xreliquary:glowing_water>]]);
recipes.addShaped(<xreliquary:lantern_of_paranoia>, [[<ore:ingotIron>, <minecraft:magma_cream>, <ore:ingotIron>], [<ore:blockGlass>, <minecraft:flint_and_steel>, <ore:blockGlass>], [<ore:ingotIron>, vT, <ore:ingotIron>]]);
recipes.addShaped(<xreliquary:midas_touchstone>, [[<ore:glowstone>, <ore:glowstone>, <ore:glowstone>], [<ore:rodBlaze>, vT, <ore:rodBlaze>], [<ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>]]);
recipes.addShaped(<xreliquary:ice_magus_rod>, [[<ore:gemDiamond>, vT, <ore:gemDiamond>], [vT, <ore:blockPackedIce>, vT], [vT, <ore:blockPackedIce>, vT]]);
recipes.addShaped(<xreliquary:ender_staff>, [[null, vT, <ore:pearlEnderEye>], [null, vT, vT], [<ore:stickWood>, null, null]]);
recipes.addShaped(<xreliquary:twilight_cloak>, [[<ore:blockWoolBlack>, <xreliquary:crimson_cloth>, <ore:blockWoolBlack>], [<xreliquary:crimson_cloth>, vT, <xreliquary:crimson_cloth>], [<xreliquary:crimson_cloth>, <ore:blockWoolBlack>, <xreliquary:crimson_cloth>]]);
recipes.addShaped(<xreliquary:angelic_feather>, [[<xreliquary:angelheart_vial>, <xreliquary:condensed_potion:17>, <xreliquary:angelheart_vial>], [vT, iF, vT], [<xreliquary:angelheart_vial>, <xreliquary:condensed_potion:17>, <xreliquary:angelheart_vial>]]);
recipes.addShaped(<xreliquary:dragon_talon>, [[<xreliquary:condensed_potion:20>, <ore:itemLeather>, <xreliquary:condensed_potion:20>], [<ore:itemLeather>, vT, <ore:itemLeather>], [<xreliquary:condensed_potion:20>, <ore:itemLeather>, <xreliquary:condensed_potion:20>]]);
recipes.addShaped(<xreliquary:dragon_claws>, [[<xreliquary:dragon_talon>, <minecraft:magma_cream>, <xreliquary:dragon_talon>], [<xreliquary:dragon_talon>, vT, <xreliquary:dragon_talon>], [<minecraft:magma_cream>, <xreliquary:dragon_talon>, <minecraft:magma_cream>]]);
recipes.addShaped(<xreliquary:kraken_shell>, [[<xreliquary:kraken_shell_fragment>, <xreliquary:kraken_shell_fragment>, <xreliquary:kraken_shell_fragment>], [<xreliquary:kraken_shell_fragment>, vT, <xreliquary:kraken_shell_fragment>], [<xreliquary:kraken_shell_fragment>, <xreliquary:kraken_shell_fragment>, <xreliquary:kraken_shell_fragment>]]);
recipes.addShaped(<xreliquary:hero_medallion>, [[<ore:pearlEnderEye>, <ore:ingotIron>, <ore:pearlEnderEye>], [<ore:ingotIron>, vT, <ore:ingotIron>], [<ore:pearlEnderEye>, <ore:ingotIron>, <ore:pearlEnderEye>]]);
recipes.addShaped(<xreliquary:infernal_tear>, [[<ore:itemCoal>, <minecraft:magma_cream>, <ore:itemCoal>], [<minecraft:magma_cream>, vT, <minecraft:magma_cream>], [<ore:itemCoal>, <minecraft:lava_bucket>, <ore:itemCoal>]]);
recipes.addShaped(<xreliquary:wraith_node>, [[vT, vT], [vT, vT]]);	

#This is just a furnace generator nty
recipes.remove(<aura:auraNodeflux>);



#Blame Reika
recipes.remove(<Thaumcraft:blockCosmeticSolid:1>);
Arcane.addShaped("ASPECTS", <Thaumcraft:blockCosmeticSolid:1> * 4, "ignis 1", [[<minecraft:obsidian>, <minecraft:obsidian>], [<minecraft:obsidian>, <minecraft:obsidian>]]);


#For Chroma
recipes.addShaped(<minecraft:dragon_egg>, [[<minecraft:end_stone>, <minecraft:end_stone>, <minecraft:end_stone>], [<minecraft:end_stone>, <minecraft:egg>, <minecraft:end_stone>], [<minecraft:end_stone>, <minecraft:end_stone>, <minecraft:end_stone>]]);










