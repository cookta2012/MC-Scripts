//Figure out this for at least v3.5
import mods.thaumcraft.Research;
import mods.thaumcraft.Arcane;
import mods.thaumcraft.Infusion;
import mods.thaumcraft.Crucible;
import minetweaker.item.IItemStack;
import mods.botania.Apothecary;
Research.addTab("B", "botania", "textures/items/lexicon.png");
//recipes.remove(<Botania:*>); <-Do That
recipes.remove(<Botania:petal:*>);
recipes.remove(<Botania:flowerBag>);
recipes.remove(<Botania:altar:*>);
recipes.remove(<Botania:spreader:*>);
recipes.remove(<Botania:pool:*>);
recipes.remove(<Botania:twigWand>);

//Apothecary.removeRecipe(<Botania:*>); <- Also That
Research.addResearch("PETALS", "B", "herba 8, praecantatio 4", 0, 0, 1, <Botania:flower:2>);
Research.addPage("PETALS", "research.botania.PETALS");


var flowerArray = [<Botania:flower:0>, <Botania:flower:1>, <Botania:flower:2>, <Botania:flower:3>, <Botania:flower:4>, <Botania:flower:5>, <Botania:flower:6>, <Botania:flower:7>, <Botania:flower:8>, <Botania:flower:9>, <Botania:flower:10>, <Botania:flower:11>, <Botania:flower:12>, <Botania:flower:13>, <Botania:flower:14>, <Botania:flower:15>] as IItemStack[];

var doubleFlowerArray = [<Botania:doubleFlower1:0>, <Botania:doubleFlower1:1>, <Botania:doubleFlower1:2>, <Botania:doubleFlower1:3>, <Botania:doubleFlower1:4>, <Botania:doubleFlower1:5>, <Botania:doubleFlower1:6>, <Botania:doubleFlower1:7>, <Botania:doubleFlower2:0>, <Botania:doubleFlower2:1>, <Botania:doubleFlower2:2>, <Botania:doubleFlower2:3>, <Botania:doubleFlower2:4>, <Botania:doubleFlower2:5>, <Botania:doubleFlower2:6>, <Botania:doubleFlower2:7>] as IItemStack[];

var petalArray = [<Botania:petal:0>, <Botania:petal:1>, <Botania:petal:2>, <Botania:petal:3>, <Botania:petal:4>, <Botania:petal:5>, <Botania:petal:6>, <Botania:petal:7>, <Botania:petal:8>, <Botania:petal:9>, <Botania:petal:10>, <Botania:petal:11>, <Botania:petal:12>, <Botania:petal:13>, <Botania:petal:14>, <Botania:petal:15>] as IItemStack[];

for i, petal in petalArray {
Arcane.addShapeless("PETALS", petal * 3, "perditio 1", [flowerArray[i]]);
}

Research.addArcanePage("PETALS", <Botania:petal:0>);
Arcane.removeRecipe(<Botania:petal:*>);

for i, petal in petalArray {
Arcane.addShapeless("PETALS", petal * 5, "perditio 2", [doubleFlowerArray[i]]);
}

Research.addArcanePage("PETALS", <Botania:petal:0>);

for i, petal in petalArray {
Arcane.addShapeless("PETALS", petal * 3, "perditio 1", [flowerArray[i]]);
}

#That is really hacky



Research.addResearch("DAISY", "B", "herba 4, ordo 8, permutatio 4", 2, 1, 0, <Botania:specialFlower>.withTag({type: "puredaisy"}));
Research.addPage("DAISY", "research.botania.DAISY");
Research.addPrereq("DAISY", "PETALS", false);
Arcane.addShaped("DAISY", <Botania:specialFlower>.withTag({type: "puredaisy"}), "ordo 4", [[null, <ore:petalWhite>, null], [<ore:petalWhite>, <ore:listAllseed>, <ore:petalWhite>], [null, <ore:petalWhite>, null]]);
Research.addArcanePage("DAISY", <Botania:specialFlower>.withTag({type: "puredaisy"}));

Research.addResearch("POUCH", "B", "herba 4, vacuos 8", -1, -1, 0, <Botania:flowerBag>);
Research.addPage("POUCH", "research.botania.POUCH");
Research.addPrereq("POUCH", "PETALS", false);
Arcane.addShaped("POUCH", <Botania:flowerBag>, "aer 5", [[<ore:blockWool>, <Botania:petal:*>, <ore:blockWool>], [<ore:blockWool>, null, <ore:blockWool>], [null, <ore:blockWool>, null]]);
Research.addArcanePage("POUCH", <Botania:flowerBag>);

Research.addResearch("SPREAD", "B", "herba 4, lux 8, motus 2", 4, 3, 1, <Botania:spreader>);
Research.addPage("SPREAD", "research.botania.SPREAD");
Research.addPrereq("SPREAD", "DAISY", false);
Research.addPrereq("SPREAD", "NITOR", false);
Arcane.addShaped("SPREAD", <Botania:spreader>, "aer 10", [[<ore:livingwood>, <ore:livingwood>, <ore:livingwood>], [<ore:livingwood>, <Thaumcraft:ItemResource:1>, null], [<ore:livingwood>, <ore:livingwood>, <ore:livingwood>]]);
Research.addArcanePage("SPREAD", <Botania:spreader>);

Research.addResearch("DPOOL", "B", "praecantatio 4, vacuos 8, metallum 2", 4, -1, 0, <Botania:pool:2>);
Research.addPage("DPOOL", "research.botania.DPOOL");
Research.addPrereq("DPOOL", "DAISY", false);
Research.addPrereq("DPOOL", "THAUMIUM", false);
Arcane.addShaped("DPOOL", <Botania:pool:2>, "aer 5", [[<ore:livingrock>, null, <ore:livingrock>], [<ore:livingrock>, <ore:ingotThaumium>, <ore:livingrock>]]);
Research.addArcanePage("DPOOL", <Botania:pool:2>);

Arcane.addShaped("SPREAD", <Botania:twigWand>, "ordo 1", [[null, <Botania:petal:*>, <ore:livingwoodTwig>], [null, <ore:livingwoodTwig>, <Botania:petal:*>], [<ore:livingwoodTwig>, null, null]]);
Research.addArcanePage("SPREAD", <Botania:twigWand>);

Research.addResearch("MANAFLOWER_A", "B", "herba 10, praecantatio 5, messis 4", 6, 1, 1, <Botania:specialFlower>.withTag({type: "daybloom"}));
Research.addPage("MANAFLOWER_A", "research.botania.MANAFLOWER_A");
Research.addPrereq("MANAFLOWER_A", "SPREAD", false);
Research.addPrereq("MANAFLOWER_A", "DPOOL", false);
Arcane.addShaped("MANAFLOWER_A", <Botania:specialFlower>.withTag({type: "daybloom"}), "aer 10, ordo 5", [[null, <ore:petalOrange>, null], [<ore:petalYellow>, <ore:mysticFlowerYellow>, <ore:petalYellow>], [null, <ore:listAllseed>, null]]);
Arcane.addShaped("MANAFLOWER_A", <Botania:specialFlower>.withTag({type: "nightshade"}), "perditio 10, ordo 5", [[null, <ore:petalBlack>, null], [<ore:petalMagenta>, <ore:mysticFlowerPurple>, <ore:petalMagenta>], [null, <ore:listAllseed>, null]]);
Arcane.addShaped("MANAFLOWER_A", <Botania:specialFlower>.withTag({type: "hydroangeas"}), "aqua 10, ordo 5", [[null, <ore:petalWhite>, null], [<ore:petalBlue>, <ore:mysticFlowerLightBlue>, <ore:petalBlue>], [null, <ore:listAllseed>, null]]);
Research.addArcanePage("MANAFLOWER_A", <Botania:specialFlower>.withTag({type: "daybloom"}));
Research.addArcanePage("MANAFLOWER_A", <Botania:specialFlower>.withTag({type: "nightshade"}));
Research.addArcanePage("MANAFLOWER_A", <Botania:specialFlower>.withTag({type: "hydroangeas"}));








