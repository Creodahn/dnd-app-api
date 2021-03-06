puts "creating magic item table G"

# get dice used in rules
d8 = Die.find_by(name: 'd8')

MagicItem.create(max: 11, min: 1, name: 'weapon, +2', table: 'G')

# this kind of rule has one row in the table proper with a bunch of subrows. it requires a second roll to figure out the real result
parent = MagicItem.create(die_id: d8.id, max: 14, min: 12, name: 'figurine of wondrous power', table: 'G')
MagicItem.create(max: 1, min: 1, name: 'bronze griffon', parent_id: parent.id)
MagicItem.create(max: 2, min: 2, name: 'ebony fly', parent_id: parent.id)
MagicItem.create(max: 3, min: 3, name: 'golden lions', parent_id: parent.id)
MagicItem.create(max: 4, min: 4, name: 'ivory goats', parent_id: parent.id)
MagicItem.create(max: 5, min: 5, name: 'marble elephant', parent_id: parent.id)
MagicItem.create(max: 7, min: 6, name: 'onyx dog', parent_id: parent.id)
MagicItem.create(max: 8, min: 8, name: 'serpentine owl', parent_id: parent.id)

MagicItem.create(max: 15, min: 15, name: 'adamantine armor (breastplate)', table: 'G')
MagicItem.create(max: 16, min: 16, name: 'adamantine armor (splint)', table: 'G')
MagicItem.create(max: 17, min: 17, name: 'amulet of health', table: 'G')
MagicItem.create(max: 18, min: 18, name: 'armor of vulnerability', table: 'G')
MagicItem.create(max: 19, min: 19, name: 'arrow-catching shield', table: 'G')
MagicItem.create(max: 20, min: 20, name: 'belt of dwarvenkind', table: 'G')
MagicItem.create(max: 21, min: 21, name: 'belt of hill giant strength', table: 'G')
MagicItem.create(max: 22, min: 22, name: 'berserker axe', table: 'G')
MagicItem.create(max: 23, min: 23, name: 'boots of levitation', table: 'G')
MagicItem.create(max: 24, min: 24, name: 'boots of speed', table: 'G')
MagicItem.create(max: 25, min: 25, name: 'bowl of commanding water elementals', table: 'G')
MagicItem.create(max: 26, min: 26, name: 'bracers of defense', table: 'G')
MagicItem.create(max: 27, min: 27, name: 'brazier of commanding fire elementals', table: 'G')
MagicItem.create(max: 28, min: 28, name: 'cape of the mountebank', table: 'G')
MagicItem.create(max: 29, min: 29, name: 'censer of controlling air elementals', table: 'G')
MagicItem.create(max: 30, min: 30, name: 'armor, +1 chain mail', table: 'G')
MagicItem.create(max: 31, min: 31, name: 'armor of resistance (chain mail)', table: 'G')
MagicItem.create(max: 32, min: 32, name: 'armor, +1 chain shirt', table: 'G')
MagicItem.create(max: 33, min: 33, name: 'armor of resistance (chain shirt)', table: 'G')
MagicItem.create(max: 34, min: 34, name: 'cloak of displacement', table: 'G')
MagicItem.create(max: 35, min: 35, name: 'cloack of the bat', table: 'G')
MagicItem.create(max: 36, min: 36, name: 'cube of force', table: 'G')
MagicItem.create(max: 37, min: 37, name: "Daern's instant fortress", table: 'G')
MagicItem.create(max: 38, min: 38, name: 'dagger of venom', table: 'G')
MagicItem.create(max: 39, min: 39, name: 'dimensional shackles', table: 'G')
MagicItem.create(max: 40, min: 40, name: 'dragon slayer', table: 'G')
MagicItem.create(max: 41, min: 41, name: 'elven chain', table: 'G')
MagicItem.create(max: 42, min: 42, name: 'flame tongue', table: 'G')
MagicItem.create(max: 43, min: 43, name: 'gem of seeing', table: 'G')
MagicItem.create(max: 44, min: 44, name: 'giant slayer', table: 'G')
MagicItem.create(max: 45, min: 45, name: 'glamoured studded leather', table: 'G')
MagicItem.create(max: 46, min: 46, name: 'helm of teleportation', table: 'G')
MagicItem.create(max: 47, min: 47, name: 'horn of blessing', table: 'G')
MagicItem.create(max: 48, min: 48, name: 'horn of valhalla (silver or brass)', table: 'G')
MagicItem.create(max: 49, min: 49, name: 'instrument of the bards (Canaith mandolin)', table: 'G')
MagicItem.create(max: 50, min: 50, name: 'instrument of the bards (Cli lyre)', table: 'G')
MagicItem.create(max: 51, min: 51, name: 'ioun stone (awareness)', table: 'G')
MagicItem.create(max: 52, min: 52, name: 'ioun stone (protection)', table: 'G')
MagicItem.create(max: 53, min: 53, name: 'ioun stone (reserve)', table: 'G')
MagicItem.create(max: 54, min: 54, name: 'ioun stone (sustenance)', table: 'G')
MagicItem.create(max: 55, min: 55, name: 'iron bands of Bilarro', table: 'G')
MagicItem.create(max: 56, min: 56, name: 'armor, +1 leather', table: 'G')
MagicItem.create(max: 57, min: 57, name: 'armor of resistance (leather)', table: 'G')
MagicItem.create(max: 58, min: 58, name: 'mace of disruption', table: 'G')
MagicItem.create(max: 59, min: 59, name: 'mace of smiting', table: 'G')
MagicItem.create(max: 60, min: 60, name: 'mace of terror', table: 'G')
MagicItem.create(max: 61, min: 61, name: 'mantle of spell resistance', table: 'G')
MagicItem.create(max: 62, min: 62, name: 'necklace of prayer beads', table: 'G')
MagicItem.create(max: 63, min: 63, name: 'periapt of proof against poison', table: 'G')
MagicItem.create(max: 64, min: 64, name: 'ring of animal influence', table: 'G')
MagicItem.create(max: 65, min: 65, name: 'ring of evasion', table: 'G')
MagicItem.create(max: 66, min: 66, name: 'ring of feather falling', table: 'G')
MagicItem.create(max: 67, min: 67, name: 'ring of free action', table: 'G')
MagicItem.create(max: 68, min: 68, name: 'ring of protection', table: 'G')
MagicItem.create(max: 69, min: 69, name: 'ring of resistance', table: 'G')
MagicItem.create(max: 70, min: 70, name: 'ring of spell storing', table: 'G')
MagicItem.create(max: 71, min: 71, name: 'ring of the ram', table: 'G')
MagicItem.create(max: 72, min: 72, name: 'ring of x-ray vision', table: 'G')
MagicItem.create(max: 73, min: 73, name: 'robe of eyes', table: 'G')
MagicItem.create(max: 74, min: 74, name: 'rod of rulership', table: 'G')
MagicItem.create(max: 75, min: 75, name: 'rod of the pact keeper, +1', table: 'G')
MagicItem.create(max: 76, min: 76, name: 'rope of entanglement', table: 'G')
MagicItem.create(max: 77, min: 77, name: 'armor, +1 scale mail', table: 'G')
MagicItem.create(max: 78, min: 78, name: 'armor of resistance (scale mail)', table: 'G')
MagicItem.create(max: 79, min: 79, name: 'shield, +2', table: 'G')
MagicItem.create(max: 80, min: 80, name: 'shield of missile attraction', table: 'G')
MagicItem.create(max: 81, min: 81, name: 'staff of charming', table: 'G')
MagicItem.create(max: 82, min: 82, name: 'staff of healing', table: 'G')
MagicItem.create(max: 83, min: 83, name: 'staff of swarming insects', table: 'G')
MagicItem.create(max: 84, min: 84, name: 'staff of the woodlands', table: 'G')
MagicItem.create(max: 85, min: 85, name: 'staff of withering', table: 'G')
MagicItem.create(max: 86, min: 86, name: 'stone of controlling earth elementals', table: 'G')
MagicItem.create(max: 87, min: 87, name: 'sun blade', table: 'G')
MagicItem.create(max: 88, min: 88, name: 'sword of life stealing', table: 'G')
MagicItem.create(max: 89, min: 89, name: 'sword of wounding', table: 'G')
MagicItem.create(max: 90, min: 90, name: 'tentacle rod', table: 'G')
MagicItem.create(max: 91, min: 91, name: 'vicious weapon', table: 'G')
MagicItem.create(max: 92, min: 92, name: 'wand of binding', table: 'G')
MagicItem.create(max: 93, min: 93, name: 'wand of enemy detection', table: 'G')
MagicItem.create(max: 94, min: 94, name: 'wand of fear', table: 'G')
MagicItem.create(max: 95, min: 95, name: 'wand of fireballs', table: 'G')
MagicItem.create(max: 96, min: 96, name: 'wand of lightning bolts', table: 'G')
MagicItem.create(max: 97, min: 97, name: 'wand of paralysis', table: 'G')
MagicItem.create(max: 98, min: 98, name: 'wand of the war mage, +2', table: 'G')
MagicItem.create(max: 99, min: 99, name: 'wand of wonder', table: 'G')
MagicItem.create(max: 100, min: 100, name: 'wings of flying', table: 'G')