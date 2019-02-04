MagicItem.create(max: 11, min: 1, name: 'weapon, +2', table: 'G')
# this kind of rule needs more thought
MagicItem.create(additional_roll: {
  'data': [
    {
      'max': 1,
      'min': 1,
      'name': 'bronze griffon'
    }
  ]
}, max: 14, min: 12, name: 'figurine of wondrous power', table: 'G')