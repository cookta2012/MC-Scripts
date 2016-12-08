/* Document Author: Shadows_of_Fire
   Document Edited: 6/6/2016
   Document Modpack: Magic Theory 2
*/

/* Dependencies
Mods: Thaumcraft, Arcane Engineering, Forbidden Magic, Thaumic Tinkerer, Thaumic Horizons, Avaritia, Immersive Engineering
*/
import mods.thaumcraft.Arcane;
import mods.thaumcraft.Infusion;
import mods.botania.ManaInfusion;
#This document must be recreated by removing EVERY wand cap recipe and recreating them in CS3.  There is NO WAY to remove Wand recipes short of making new invalid caps
/* The order is as follows:
1. Wooden (Iron)
2. Treated Wood (Gold)
3. Greatwood (Silver)
4. Any of the Elementals from Thaumcraft (Obsidian/Icy/Quartz/Reed/Blazing/Bone) (Electrum)
5. Silverwood (Soj/Mech)
6. Livingwood/Blood (Manasteel/Alch)
7. Blood Wood/Dreamwood (BIIron/Elementium)
8. Infernal (Thaumium)
8b. Require Disposable Crystalline to progress
9. Ichorcloth (Ichorium)
10. Warpwood (Shadowmetal)
10b. Enable Normal Wand Combinations
11. Orichalcum Studded Cosmic Neutronium (N/A)
11. Crystal Studded Cosmic Neutronium (N/A)
This removes some freedom from wand creation, but everyone follows a pattern anyway.

This is now a stupid dummy file since I don't want to delete it but its impossible to remove wand recipes.
Edit: I have found a workaround.
import mods.thaumcraft.Arcane;
Arcane.removeRecipe(<Thaumcraft:WandCasting:*>);
Arcane.removeRecipe(<arcane_engineering:wand_upgradeable:*>);
recipes.addShaped(<arcane_engineering:wand_upgradeable:10>.withTag({cap: "electrum", rod: "upgradeable"}), [[null, <Thaumcraft:WandCasting>.withTag({aqua: 2500, terra: 2500, ignis: 2500, ordo: 2500, perditio: 2500, aer: 2500}), <arcane_engineering:wandcap:1>], [null, <ImmersiveEngineering:material>, null], [<arcane_engineering:wandcap:1>, null, null]]);
*/

#Wand Cap Removal

Infusion.removeRecipe(<BloodArsenal:wand_caps:*>);
Infusion.removeRecipe(<ForbiddenMagic:WandCaps:*>);
recipes.remove(<ForbiddenMagic:WandCaps:*>);
#Arcane.removeRecipe(<ForbiddenMagic:WandCaps:*>);
Infusion.removeRecipe(<TaintedMagic:ShadowCap>);
Arcane.removeRecipe(<TaintedMagic:ClothCap>);
Arcane.removeRecipe(<TaintedMagic:ShadowClothCap>);
Arcane.removeRecipe(<TaintedMagic:CrimsonClothCap>);
recipes.remove(<Thaumcraft:WandCap:*>);
Arcane.removeRecipe(<Thaumcraft:WandCap:1>);
Infusion.removeRecipe(<Thaumcraft:WandCap:*>);
Arcane.removeRecipe(<arcane_engineering:wandcap:*>);
Infusion.removeRecipe(<ThaumicExploration:sojournerCap>);
Infusion.removeRecipe(<ThaumicExploration:mechanistCap>);
ManaInfusion.removeRecipe(<ForbiddenMagic:WandCaps:*>);
Arcane.removeRecipe(<ThaumicTinkerer:kamiResource:4>);
#Arcane.removeRecipe(<ChromatiCraft:chromaticraft_item_crafting:*>);
#Modtweaker reports no recipe exists.
Arcane.removeRecipe(<Thaumcraft:WandCap:3>);

#New Cap Recipes for Dummy Items
val ni = <ore:nuggetIron>;
val ne = <ore:nuggetElectrum>;
val ng = <ore:nuggetGold>;

recipes.addShaped(<TabulaRasa:RasaItem0:12>, [[ni, ni, ni], [ni, null, ni]]);
Arcane.addShaped("CAP_gold", <TabulaRasa:RasaItem0:3>, "ordo 3, ignis 3, aer 3", [[ng, ng, ng], [ng, null, ng]]);
Arcane.addShaped("CAP_electrum", <TabulaRasa:RasaItem0:1>, "ordo 5, ignis 5, aer 5", [[ne, ne, ne], [ne, null, ne]]);
Infusion.addRecipe("CAP_silver", <Thaumcraft:WandCap:5>, [<Thaumcraft:ItemResource:14>, <Thaumcraft:ItemResource:14>], "potentia 8, auram 4", <TabulaRasa:RasaItem0:11>, 2);
Infusion.addRecipe("CAP_SOJOURNER", <ThaumicExploration:sojournerCapUncharged>, [<Thaumcraft:ItemResource:14>, <Thaumcraft:ItemResource:14>], "permutatio 16, praecantatio 12, potentia 12, auram 6", <TabulaRasa:RasaItem0:9>, 4);
Infusion.addRecipe("CAP_MECHANIST", <ThaumicExploration:mechanistCapUncharged>, [<Thaumcraft:ItemResource:14>, <Thaumcraft:ItemResource:14>], "machina 16, praecantatio 12, potentia 12, auram 6", <TabulaRasa:RasaItem0:10>, 4);
ManaInfusion.addInfusion(<TabulaRasa:RasaItem0:4>, <ForbiddenMagic:WandCaps:4>, 3400);
Infusion.addRecipe("CAP_alchemical", <Thaumcraft:WandCap:1>, [<AWWayofTime:magicales>, <AWWayofTime:magicales>, <AWWayofTime:magicales>], "victus 12, aqua 6", <TabulaRasa:RasaItem0:13>, 3);
Infusion.addRecipe("CAP_blood_iron", <TabulaRasa:RasaItem0:13>, [<BloodArsenal:blood_infused_iron>, <BloodArsenal:blood_infused_iron>, <BloodArsenal:blood_infused_iron>, <BloodArsenal:blood_infused_glowstone_dust>, <BloodArsenal:blood_infused_glowstone_dust>, <BloodArsenal:amorphic_catalyst>, <BloodArsenal:amorphic_catalyst>], "victus 24, aqua 24, praecantatio 20", <TabulaRasa:RasaItem0>, 5);
Infusion.addRecipe("CAP_elementium", <ForbiddenMagic:WandCaps:6>, [<Botania:manaResource:5>, <Botania:rune>, <Botania:rune:1>, <Botania:rune:2>, <Botania:rune:3>], "terra 18, aqua 18, aer 18, ignis 18", <TabulaRasa:RasaItem0:2>, 5);
Infusion.addRecipe("CAP_thaumium", <Thaumcraft:WandCap:6>, [<Thaumcraft:ItemResource:14>, <Thaumcraft:ItemResource:14>, <Thaumcraft:ItemResource:14>], "potentia 12, auram 6", <TabulaRasa:RasaItem0:5>, 3);
val ich = <ThaumicTinkerer:kamiResource>;
val icho = <ThaumicTinkerer:kamiResource:2>;
Arcane.addShaped("CAP_ICHOR", <TabulaRasa:RasaItem0:7> * 2, "ordo 100, terra 100, perditio 100, aqua 100, ignis 100, aer 100", [[ich, <TabulaRasa:RasaItem0:5>, ich], [null, icho, null], [ich, <TabulaRasa:RasaItem0:5>, ich]]);
Infusion.addRecipe("CAP_SHADOW", <TabulaRasa:RasaItem0:6>, [<TaintedMagic:WarpedShard>, <TaintedMagic:ShadowMetal>, <Thaumcraft:ItemResource:16>, <TaintedMagic:ShadowMetal>, <Thaumcraft:ItemEldritchObject:3>, <TaintedMagic:ShadowMetal>, <Thaumcraft:ItemResource:16>, <TaintedMagic:ShadowMetal>], "alienis 64, tenebrae 64, praecantatio 64, metallum 64, vacuos 64", <TabulaRasa:RasaItem0:8>, 8);
Infusion.addRecipe("CAP_void", <Thaumcraft:WandCap:8>, [<Thaumcraft:ItemResource:14>, <Thaumcraft:ItemResource:14>, <Thaumcraft:ItemResource:14>, <Thaumcraft:ItemResource:14>], "potentia 18, vacuos 18, alienis 18, auram 18", <TabulaRasa:RasaItem0:6>, 6);

#New Wand recipes
recipes.remove(<Thaumcraft:WandCasting>);
val ic = <TabulaRasa:RasaItem0:12>;
val sc = <TabulaRasa:RasaItem0:11>;
val ec = <TabulaRasa:RasaItem0:1>;
val gc = <TabulaRasa:RasaItem0:3>;
val sjc = <TabulaRasa:RasaItem0:9>;
val mhc = <TabulaRasa:RasaItem0:10>;
val mc = <TabulaRasa:RasaItem0:4>;
val ac = <TabulaRasa:RasaItem0:13>;

val IWandUncharged = <Thaumcraft:WandCasting>.withTag({cap: "iron", rod: "wood"});
#Basic Iron
recipes.addShaped(IWandUncharged, [[null, null, ic], [null, <ore:stickWood>, null], [ic, null, null]]);

val TWandUncharged = <arcane_engineering:wand_upgradeable:10>.withTag({cap: "gold", rod: "upgradeable"});
val IWandCharged = <Thaumcraft:WandCasting>.onlyWithTag({aqua: 2500, terra: 2500, ignis: 2500, ordo: 2500, perditio: 2500, aer: 2500});
#Gold Capped Treated
recipes.addShaped(TWandUncharged, [[IWandCharged.transformReplace(IWandUncharged), null, gc], [null, <ImmersiveEngineering:material>, null], [gc, null, null]]);

val GWandUncharged = <Thaumcraft:WandCasting:12>.withTag({cap: "silver", rod: "greatwood"});
val TWandCharged = <arcane_engineering:wand_upgradeable:10>.withTag({Inv: [{Slot: 0 as byte, id: 4644 as short, Count: 1 as byte, Damage: 0 as short}], aqua: 4500, terra: 4500, ignis: 4500, cap: "gold", rod: "upgradeable", ordo: 4500, perditio: 4500, upgrades: {capacitors: 1}, aer: 4500});
val TUWandUncharged = <arcane_engineering:wand_upgradeable:6>.withTag({Inv: [{Slot: 0 as byte, id: 4644 as short, Count: 1 as byte, Damage: 0 as short}], cap: "gold", rod: "upgradeable", upgrades: {capacitors: 1}});
#Silver Greatwood
recipes.addShaped(GWandUncharged, [[TWandCharged.transformReplace(TUWandUncharged), null, sc], [null, <Thaumcraft:WandRod>, null], [sc, null, null]]);

val GWandCharged = <Thaumcraft:WandCasting:12>.onlyWithTag({aqua: 5000, ignis: 5000, terra: 5000, cap: "silver", rod: "greatwood", ordo: 5000, perditio: 5000, aer: 5000});
val EOWandUncharged = <Thaumcraft:WandCasting:18>.withTag({cap: "electrum", rod: "obsidian"});
val EIWandUncharged = <Thaumcraft:WandCasting:18>.withTag({cap: "electrum", rod: "ice"});
val EQWandUncharged = <Thaumcraft:WandCasting:18>.withTag({cap: "electrum", rod: "quartz"});
val ERWandUncharged = <Thaumcraft:WandCasting:18>.withTag({cap: "electrum", rod: "reed"});
val EBlWandUncharged = <Thaumcraft:WandCasting:18>.withTag({cap: "electrum", rod: "blaze"});
val EBoWandUncharged = <Thaumcraft:WandCasting:18>.withTag({cap: "electrum", rod: "bone"});

#Elemental Wands
recipes.addShaped(EOWandUncharged, [[GWandCharged.transformReplace(GWandUncharged), null, ec], [null, <Thaumcraft:WandRod:1>, null], [ec, null, null]]);
recipes.addShaped(EIWandUncharged, [[GWandCharged.transformReplace(GWandUncharged), null, ec], [null, <Thaumcraft:WandRod:3>, null], [ec, null, null]]);
recipes.addShaped(EQWandUncharged, [[GWandCharged.transformReplace(GWandUncharged), null, ec], [null, <Thaumcraft:WandRod:4>, null], [ec, null, null]]);
recipes.addShaped(ERWandUncharged, [[GWandCharged.transformReplace(GWandUncharged), null, ec], [null, <Thaumcraft:WandRod:5>, null], [ec, null, null]]);
recipes.addShaped(EBlWandUncharged, [[GWandCharged.transformReplace(GWandUncharged), null, ec], [null, <Thaumcraft:WandRod:6>, null], [ec, null, null]]);
recipes.addShaped(EBoWandUncharged, [[GWandCharged.transformReplace(GWandUncharged), null, ec], [null, <Thaumcraft:WandRod:7>, null], [ec, null, null]]);

val SSWandUncharged = <Thaumcraft:WandCasting:54>.withTag({cap: "SOJOURNER", rod: "silverwood"});
val SMWandUncharged = <Thaumcraft:WandCasting:54>.withTag({cap: "MECHANIST", rod: "silverwood"});
val EOWandCharged = <Thaumcraft:WandCasting:18>.onlyWithTag({aqua: 7500, terra: 7500, ignis: 7500, cap: "electrum", rod: "obsidian", ordo: 7500, perditio: 7500, aer: 7500});
val EIWandCharged = <Thaumcraft:WandCasting:18>.onlyWithTag({aqua: 7500, terra: 7500, ignis: 7500, cap: "electrum", rod: "ice", ordo: 7500, perditio: 7500, aer: 7500});
val EQWandCharged = <Thaumcraft:WandCasting:18>.onlyWithTag({aqua: 7500, terra: 7500, ignis: 7500, cap: "electrum", rod: "quartz", ordo: 7500, perditio: 7500, aer: 7500});
val ERWandCharged = <Thaumcraft:WandCasting:18>.onlyWithTag({aqua: 7500, terra: 7500, ignis: 7500, cap: "electrum", rod: "reed", ordo: 7500, perditio: 7500, aer: 7500});
val EBlWandCharged = <Thaumcraft:WandCasting:18>.onlyWithTag({aqua: 7500, ignis: 7500, terra: 7500, cap: "electrum", rod: "blaze", ordo: 7500, perditio: 7500, aer: 7500});
val EBoWandCharged = <Thaumcraft:WandCasting:18>.onlyWithTag({aqua: 7500, terra: 7500, ignis: 7500, cap: "electrum", rod: "bone", ordo: 7500, perditio: 7500, aer: 7500});

#Silverwood Soj
recipes.addShaped(SSWandUncharged, [[EOWandCharged.transformReplace(EOWandUncharged), null, sjc], [null, <Thaumcraft:WandRod:2>, null], [sjc, null, null]]);
recipes.addShaped(SSWandUncharged, [[EIWandCharged.transformReplace(EIWandUncharged), null, sjc], [null, <Thaumcraft:WandRod:2>, null], [sjc, null, null]]);
recipes.addShaped(SSWandUncharged, [[EQWandCharged.transformReplace(EQWandUncharged), null, sjc], [null, <Thaumcraft:WandRod:2>, null], [sjc, null, null]]);
recipes.addShaped(SSWandUncharged, [[ERWandCharged.transformReplace(ERWandUncharged), null, sjc], [null, <Thaumcraft:WandRod:2>, null], [sjc, null, null]]);
recipes.addShaped(SSWandUncharged, [[EBlWandCharged.transformReplace(EBlWandUncharged), null, sjc], [null, <Thaumcraft:WandRod:2>, null], [sjc, null, null]]);
recipes.addShaped(SSWandUncharged, [[EBoWandCharged.transformReplace(EBoWandUncharged), null, sjc], [null, <Thaumcraft:WandRod:2>, null], [sjc, null, null]]);

#Silverwood Mech
recipes.addShaped(SMWandUncharged, [[EOWandCharged.transformReplace(EOWandUncharged), null, mhc], [null, <Thaumcraft:WandRod:2>, null], [mhc, null, null]]);
recipes.addShaped(SMWandUncharged, [[EIWandCharged.transformReplace(EIWandUncharged), null, mhc], [null, <Thaumcraft:WandRod:2>, null], [mhc, null, null]]);
recipes.addShaped(SMWandUncharged, [[EQWandCharged.transformReplace(EQWandUncharged), null, mhc], [null, <Thaumcraft:WandRod:2>, null], [mhc, null, null]]);
recipes.addShaped(SMWandUncharged, [[ERWandCharged.transformReplace(ERWandUncharged), null, mhc], [null, <Thaumcraft:WandRod:2>, null], [mhc, null, null]]);
recipes.addShaped(SMWandUncharged, [[EBlWandCharged.transformReplace(EBlWandUncharged), null, mhc], [null, <Thaumcraft:WandRod:2>, null], [mhc, null, null]]);
recipes.addShaped(SMWandUncharged, [[EBoWandCharged.transformReplace(EBoWandUncharged), null, mhc], [null, <Thaumcraft:WandRod:2>, null], [mhc, null, null]]);

val LWandUncharged = <Thaumcraft:WandCasting:84>.withTag({cap: "manasteel", rod: "livingwood"});
val BlWandUncharged = <Thaumcraft:WandCasting:84>.withTag({cap: "alchemical", rod: "blood"});
val SSWandCharged = <Thaumcraft:WandCasting:54>.onlyWithTag({aqua: 10000, terra: 10000, ignis: 10000, cap: "SOJOURNER", rod: "silverwood", ordo: 10000, perditio: 10000, aer: 10000});
val SMWandCharged = <Thaumcraft:WandCasting:54>.onlyWithTag({aqua: 10000, terra: 10000, ignis: 10000, cap: "MECHANIST", rod: "silverwood", ordo: 10000, perditio: 10000, aer: 10000});

#Livingwood
recipes.addShaped(LWandUncharged, [[SMWandCharged.transformReplace(SMWandUncharged), null, <TabulaRasa:RasaItem0:4>], [null, <ForbiddenMagic:WandCores:7>, null], [<TabulaRasa:RasaItem0:4>, null, null]]);
recipes.addShaped(LWandUncharged, [[SSWandCharged.transformReplace(SSWandUncharged), null, <TabulaRasa:RasaItem0:4>], [null, <ForbiddenMagic:WandCores:7>, null], [<TabulaRasa:RasaItem0:4>, null, null]]);

#Blood 
recipes.addShaped(BlWandUncharged, [[SMWandCharged.transformReplace(SMWandUncharged), null, <TabulaRasa:RasaItem0:13>], [null, <ForbiddenMagic:WandCores:3>, null], [<TabulaRasa:RasaItem0:13>, null, null]]);
recipes.addShaped(BlWandUncharged, [[SSWandCharged.transformReplace(SSWandUncharged), null, <TabulaRasa:RasaItem0:13>], [null, <ForbiddenMagic:WandCores:3>, null], [<TabulaRasa:RasaItem0:13>, null, null]]);

val LWandCharged = <Thaumcraft:WandCasting:84>.onlyWithTag({aqua: 10000, terra: 10000, ignis: 10000, cap: "manasteel", rod: "livingwood", ordo: 10000, perditio: 10000, aer: 10000});
val DWandUncharged = <Thaumcraft:WandCasting:84>.withTag({cap: "elementium", rod: "dreamwood"});
#Dreamwood
recipes.addShaped(DWandUncharged, [[LWandCharged.transformReplace(LWandUncharged), null, <TabulaRasa:RasaItem0:2>], [null, <ForbiddenMagic:WandCores:11>, null], [<TabulaRasa:RasaItem0:2>, null, null]]);

val BlWandCharged = <Thaumcraft:WandCasting:84>.onlyWithTag({aqua: 10000, terra: 10000, ignis: 10000, cap: "alchemical", rod: "blood", ordo: 10000, perditio: 10000, aer: 10000});
val BIWandUncharged = <Thaumcraft:WandCasting:84>.withTag({cap: "blood_iron", rod: "blood_wood"});
#Blood Infused
recipes.addShaped(BIWandUncharged, [[BlWandCharged.transformReplace(BlWandUncharged), null, <TabulaRasa:RasaItem0>], [null, <BloodArsenal:wand_cores>, null], [<TabulaRasa:RasaItem0>, null, null]]);

val DWandCharged = <Thaumcraft:WandCasting:84>.onlyWithTag({aqua: 10000, terra: 10000, ignis: 10000, cap: "elementium", rod: "dreamwood", ordo: 10000, perditio: 10000, aer: 10000});
val BIWandCharged = <Thaumcraft:WandCasting:84>.onlyWithTag({aqua: 10000, terra: 10000, ignis: 10000, cap: "blood_iron", rod: "blood_wood", ordo: 10000, perditio: 10000, aer: 10000});
val IfWandUncharged = <Thaumcraft:WandCasting:72>.withTag({cap: "thaumium", rod: "infernal"});
#Infernal
recipes.addShaped(IfWandUncharged, [[BIWandCharged.transformReplace(BIWandUncharged), null, <TabulaRasa:RasaItem0:5>], [null, <ForbiddenMagic:WandCores:1>, null], [<TabulaRasa:RasaItem0:5>, null, null]]);
recipes.addShaped(IfWandUncharged, [[DWandCharged.transformReplace(DWandUncharged), null, <TabulaRasa:RasaItem0:5>], [null, <ForbiddenMagic:WandCores:1>, null], [<TabulaRasa:RasaItem0:5>, null, null]]);

val IfWandCharged = <Thaumcraft:WandCasting:72>.onlyWithTag({aqua: 15000, ignis: 15000, terra: 15000, cap: "thaumium", rod: "infernal", ordo: 15000, perditio: 15000, aer: 15000});
val ICWandUncharged = <Thaumcraft:WandCasting:100>.withTag({cap: "ICHOR", rod: "ICHORCLOTH"});
val DisposableWand = <ThaumicHorizons:wandCastingDisposable>.onlyWithTag({aqua: 25000, terra: 25000, ignis: 25000, cap: "disposable", rod: "disposable", ordo: 25000, perditio: 25000, aer: 25000});
#Ichorcloth (Req: Disposable)
recipes.addShaped(ICWandUncharged, [[IfWandCharged, null, <TabulaRasa:RasaItem0:7>], [null, <ThaumicTinkerer:kamiResource:5>, null], [<TabulaRasa:RasaItem0:7>, null, DisposableWand]]);

val ICWandCharged = <Thaumcraft:WandCasting:100>.onlyWithTag({aqua: 100000, terra: 100000, ignis: 100000, cap: "ICHOR", rod: "ICHORCLOTH", ordo: 100000, perditio: 100000, aer: 100000});
val WarpWandUncharged = <Thaumcraft:WandCasting:192>.withTag({cap: "SHADOW", rod: "WARP"});
#Warpwood
recipes.addShaped(WarpWandUncharged, [[ICWandCharged.transformReplace(ICWandUncharged), null, <TabulaRasa:RasaItem0:8>], [null, <TaintedMagic:WarpRod>, null], [<TabulaRasa:RasaItem0:8>, null, null]]);







