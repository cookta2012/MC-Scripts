/* Document Author: Shadows_of_Fire
   Document Edited: 6/2/2016
   Document Modpack: Magic Theory 2
*/

/* Dependencies
Mods: Immersive Engineering, Railcraft, 
*/
import mods.immersiveengineering.MetalPress;
import mods.railcraft.Rolling;

#Removes RC Blast Furnaces
recipes.remove(<Railcraft:machine.alpha:12>);
#Additional IE Blast Brick Recipe
val br = <ore:brick>;
br.add(<minecraft:brick>);
br.add(<minecraft:netherbrick>);
br.add(<BiomesOPlenty:misc>);
val nbr = <ore:ingotBrickNether>;

recipes.addShaped(<ImmersiveEngineering:stoneDecoration:2> * 4, [[br, nbr, br], [nbr, <Thaumcraft:ItemResource:1>, nbr], [br, nbr, br]]);


#Forcing Metal Press for Gears and Plates.
MetalPress.addRecipe(<Railcraft:part.gear:2>, <ore:ingotSteel>, <ImmersiveEngineering:mold:1>, 500, 4);
recipes.remove(<ore:gearCopper>);
recipes.remove(<ore:gearSteel>);
recipes.remove(<ore:gearTin>);
recipes.remove(<ore:gearIron>);
recipes.remove(<ore:gearBronze>);
recipes.remove(<ImmersiveEngineering:mold:1>);
recipes.addShaped(<ImmersiveEngineering:mold:1>, [[null, <ore:plateSteel>, null], [<ore:plateSteel>, <ore:gearGoldPlate>.reuse(), <ore:plateSteel>], [null, <ore:plateSteel>, null]]);
recipes.remove(<ImmersiveEngineering:mold>);
recipes.addShaped(<ImmersiveEngineering:mold>, [[null, <ore:ingotSteel>, null], [<ore:ingotSteel>, <ore:plateAluminum>.reuse(), <ore:ingotSteel>], [null, <ore:ingotSteel>, null]]);
recipes.remove(<ore:plateSteel>);
recipes.remove(<ore:plateLead>);
recipes.remove(<ore:plateAluminium>);
recipes.remove(<ore:plateConstantan>);
recipes.remove(<ore:plateIron>);
Rolling.removeRecipe(<Railcraft:part.plate:*>);
MetalPress.removeRecipe(<ImmersiveEngineering:metal:30>);
MetalPress.removeRecipe(<ImmersiveEngineering:metal:38>);
MetalPress.addRecipe(<Railcraft:part.plate:1>, <ore:ingotSteel>, <ImmersiveEngineering:mold>, 500, 1);
MetalPress.addRecipe(<Railcraft:part.plate>, <ore:ingotIron>, <ImmersiveEngineering:mold>, 500, 1);
MetalPress.addRecipe(<Railcraft:part.plate:2>, <ore:ingotTin>, <ImmersiveEngineering:mold>, 500, 1);
MetalPress.addRecipe(<Railcraft:part.plate:3>, <ore:ingotCopper>, <ImmersiveEngineering:mold>, 500, 1);

#Grindstone was making things like Electrum super easy.
recipes.remove(<appliedenergistics2:tile.BlockGrinder>);
recipes.removeShapeless(<ore:dustGold>, [<ore:oreGold>, <ImmersiveEngineering:tool:*>]);

#For consistency.
recipes.removeShapeless(<ore:dustIron>, [<ore:oreIron>, <ImmersiveEngineering:tool:*>]);
recipes.removeShapeless(<ore:dustCopper>, [<ore:oreCopper>, <ImmersiveEngineering:tool:*>]);
recipes.removeShapeless(<ore:dustLead>, [<ore:oreLead>, <ImmersiveEngineering:tool:*>]);
recipes.removeShapeless(<ore:dustSilver>, [<ore:oreSilver>, <ImmersiveEngineering:tool:*>]);
recipes.removeShapeless(<ore:dustNickel>, [<ore:oreNickel>, <ImmersiveEngineering:tool:*>]);
recipes.removeShapeless(<ore:dustAluminum>, [<ore:oreAluminum>, <ImmersiveEngineering:tool:*>]);
recipes.removeShapeless(<ore:dustCertusQuartz>, [<ore:oreCertusQuartz>, <ImmersiveEngineering:tool:*>]);


#Some Extra Mech Component Recipes
recipes.addShaped(<ImmersiveEngineering:material:11> * 2, [[<ore:ironwood>, null, <ore:ironwood>], [null, <ore:ingotCopper>, null], [<ore:ironwood>, null, <ore:ironwood>]]);
recipes.addShaped(<ImmersiveEngineering:material:11> * 4, [[<ore:ingotThaumium>, null, <ore:ingotThaumium>], [null, <ore:ingotCopper>, null], [<ore:ingotThaumium>, null, <ore:ingotThaumium>]]);
recipes.addShaped(<ImmersiveEngineering:material:12> * 2, [[<ore:ingotElvenElementium>, null, <ore:ingotElvenElementium>], [null, <ore:ingotCopper>, null], [<ore:ingotElvenElementium>, null, <ore:ingotElvenElementium>]]);
recipes.addShaped(<ImmersiveEngineering:material:12> * 4, [[<ore:ingotVoid>, null, <ore:ingotVoid>], [null, <ore:ingotCopper>, null], [<ore:ingotVoid>, null, <ore:ingotVoid>]]);
