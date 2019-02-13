puts "creating magic item table G"
# get dice used in rules
d8 = Die.find_by(name: 'd8')

MagicItem.create!(max: 11, min: 1, name: 'weapon, +2', table: 'G')

# this kind of rule has one row in the table proper with a bunch of subrows. it requires a second roll to figure out the real result
parent = MagicItem.create!(die_id: d8.id, max: 14, min: 12, name: 'figurine of wondrous power', table: 'G')
MagicItem.create!(max: 1, min: 1, name: 'bronze griffon', parent_id: parent.id)
MagicItem.create!(max: 2, min: 2, name: 'ebony fly', parent_id: parent.id)
MagicItem.create!(max: 3, min: 3, name: 'golden lions', parent_id: parent.id)
MagicItem.create!(max: 4, min: 4, name: 'ivory goats', parent_id: parent.id)
MagicItem.create!(max: 5, min: 5, name: 'marble elephant', parent_id: parent.id)
MagicItem.create!(max: 7, min: 6, name: 'onyx dog', parent_id: parent.id)
MagicItem.create!(max: 8, min: 8, name: 'serpentine owl', parent_id: parent.id)