import mods.foundry.Casting;

#Rip TiC.... Use #Foundry

recipes.remove(<tconstruct:smeltery_controller>);
recipes.remove(<tconstruct:slimesling>);
recipes.remove(<tconstruct:throwball:1>);



#Board Fish?
recipes.remove(<morefish:board_fish>);
recipes.addShaped(<morefish:board_fish>, [[<ore:slabWood>, <ore:slabWood>, <ore:slabWood>], [<ore:slabWood>, <ore:slabWood>, <ore:slabWood>]]);


#Some Neato AE2 Presses
Casting.addRecipe(<appliedenergistics2:material:19>, <liquid:liquidinvar> * 216, <foundry:mold:1>, <forestry:thermionicTubes:3>);
Casting.addRecipe(<appliedenergistics2:material:13>, <liquid:liquidinvar> * 216, <foundry:mold:1>, <forestry:thermionicTubes:7>);
Casting.addRecipe(<appliedenergistics2:material:14>, <liquid:liquidinvar> * 216, <foundry:mold:1>, <forestry:thermionicTubes:5>);
Casting.addRecipe(<appliedenergistics2:material:15>, <liquid:liquidinvar> * 216, <foundry:mold:1>, <forestry:thermionicTubes:4>);

#ArmorPlus stop pls
recipes.remove(<armorplus:tesla_rod>);
recipes.remove(<armorplus:redstone_flux_rod>);


#ProjectE
recipes.remove(<projecte:item.pe_repair_talisman>);
recipes.remove(<projecte:item.pe_philosophers_stone>);
recipes.remove(<projecte:item.pe_covalence_dust:*>);
