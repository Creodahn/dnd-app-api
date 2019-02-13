# list of dice used in caclulations
d1 = Die.find_by(name: 'd1')
d4 = Die.find_by(name: 'd4')
d6 = Die.find_by(name: 'd6')

trs = TreasureRuleSet.create(max_cr: 4, min_cr: 0, treasure_type: 'hoard')

tr = TreasureRule.create(max: 6, min: 1, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 0, die_id: d6.id, item_type: 'gemstone', item_value: 10, multiplier: 0, treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 16, min: 7, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 2, die_id: d6.id, item_type: 'gemstone', item_value: 10, treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 26, min: 17, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 2, die_id: d4.id, item_type: 'art-object', item_value: 25, treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 36, min: 27, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 2, die_id: d6.id, item_type: 'gemstone', item_value: 50, treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 44, min: 37, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 2, die_id: d6.id, item_type: 'gemstones', item_value: 10, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d6.id, item_table: 'A', item_type: 'magic-item', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 52, min: 45, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 2, die_id: d4.id, item_type: 'art-object', item_value: 25, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d6.id, item_table: 'A', item_type: 'magic-item', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 60, min: 53, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 2, die_id: d6.id, item_type: 'gemstone', item_value: 50, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d6.id, item_table: 'A', item_type: 'magic-item', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 65, min: 61, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 2, die_id: d6.id, item_type: 'gemstone', item_value: 10, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d4.id, item_table: 'B', item_type: 'magic-item', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 70, min: 66, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 2, die_id: d4.id, item_type: 'art-object', item_value: 25, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d4.id, item_table: 'B', item_type: 'magic-item', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 75, min: 71, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 2, die_id: d6.id, item_type: 'gemstone', item_value: 50, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d4.id, item_table: 'B', item_type: 'magic-item', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 78, min: 76, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 2, die_id: d6.id, item_type: 'gemstone', item_value: 10, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d4.id, item_table: 'C', item_type: 'magic-item', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 80, min: 79, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 2, die_id: d4.id, item_type: 'art-object', item_value: 25, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d4.id, item_table: 'C', item_type: 'magic-item', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 85, min: 81, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 2, die_id: d6.id, item_type: 'gemstone', item_value: 50, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d4.id, item_table: 'C', item_type: 'magic-item', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 92, min: 86, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 2, die_id: d4.id, item_type: 'art-object', item_value: 25, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d4.id, item_table: 'F', item_type: 'magic-item', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 97, min: 93, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 2, die_id: d6.id, item_type: 'gemstone', item_value: 50, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d4.id, item_table: 'F', item_type: 'magic-item', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 99, min: 98, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 2, die_id: d4.id, item_type: 'art-object', item_value: 25, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d1.id, item_table: 'G', item_type: 'magic-item', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 100, min: 100, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 2, die_id: d6.id, item_type: 'gemstone', item_value: 50, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d1.id, item_table: 'G', item_type: 'magic-item', treasure_rule_id: tr.id)