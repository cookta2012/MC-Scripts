##Stuff ending with .name and has a texture or use should be fixed.

var LocalKeys = ["entity.wtfcore.SkeletonMage.name", "entity.wtfcore.ZombieMummy.name", "tile.atlcraft_biglight1_bonfire_castiron.name", "tile.atlcraft_lamppost01_top_fancy_gold.name", "tile.actuallyadditions.blockCrystalOil.name", "tile.actuallyadditions.blockEmpoweredOil.name", "tile.BloodMagic.demonCrystaldefault.name", "tile.BloodMagic.demonCrystalcorrosive.name", "tile.BloodMagic.demonCrystaldestructive.name", "tile.BloodMagic.demonCrystalvengeful.name", "tile.BloodMagic.demonCrystalsteadfast.name", "item.foundry.componentBulletHollow.name", "item.morebees.diamondFragment.name", "item.morebees.emeraldFragment.name", "item.morebees.nether_starFragment.name", "tile.bridgeBlock.name"] as string[];

var LocalNames = ["Skeleton Mage", "Mummy", "Cast Iron Bonfire", "Large Gold Lamp Post Top", "Crystal Oil", "Empowered Oil", "Demon Will Cluster", "Corrosive Will Cluster", "Destructive Will Cluster", "Vengeful Will Cluster", "Steadfast Will Cluster", "Hollow Bullet", "Diamond Fragment", "Emerald Fragment", "Nether Star Fragment", "Bridge Block"] as string[];

for a, key in LocalKeys {
var name = LocalNames[a];
game.setLocalization(key, name);
}









