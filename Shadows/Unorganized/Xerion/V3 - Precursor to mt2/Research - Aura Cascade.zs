//Figure out this for at least v3.5
import mods.thaumcraft.Research;
import mods.thaumcraft.Arcane;
import mods.thaumcraft.Infusion;
import mods.thaumcraft.Crucible;
Research.addTab("AURA", "aura", "textures/items/whiteCrystal.png");
//recipes.remove(<aura:*>);
Research.addResearch("AURAS", "AURA", "metallum 4, auram 8", 0, 0, 0, <aura:auraNode>);
Research.addPage("AURAS", "research.aura.AURAS");
Arcane.addShaped("AURAS", <aura:AuraCrystal> * 8, "ordo 8, ignis 2", [[null, <Automagy:blockRedcrystal>, null], [<Automagy:blockRedcrystal>, <Automagy:shardSliver:4>, <Automagy:blockRedcrystal>], [null, <Automagy:blockRedcrystal>, null]]);
Research.addArcanePage("AURAS", <aura:AuraCrystal>);
Research.addPage("AURAS", "research.aura.AURAS:a");
Arcane.addShaped("AURAS", <aura:auraNode> * 2, "ordo 4, ignis 8", [[null, <Thaumcraft:ItemResource:6>, null], [<Thaumcraft:ItemResource:6>, <aura:AuraCrystal>, <Thaumcraft:ItemResource:6>], [null, <Thaumcraft:ItemResource:6>, null]]);
Research.addArcanePage("AURAS", <aura:auraNode>);
Research.addPrereq("AURAS", "REDCRYSTAL", false);
Research.addResearch("APUMP", "AURA", "ignis 8, metallum 2, ordo 4", 2, 1, 1, <aura:auraNodepump>);
Research.setSpikey("APUMP", true);
Research.addPrereq("APUMP", "AURAS", false);
Research.addPage("APUMP", "research.aura.APUMP");
Arcane.addShaped("APUMP", <aura:auraNodepump>, "ignis 10", [[<minecraft:iron_ingot>, <Automagy:blockRedcrystalAmp>, <minecraft:iron_ingot>], [<minecraft:iron_ingot>, <aura:auraNode>, <minecraft:iron_ingot>], [<minecraft:iron_ingot>, <Automagy:blockRedcrystalAmp>, <minecraft:iron_ingot>]]);
Research.addArcanePage("APUMP", <aura:auraNodepump>);



