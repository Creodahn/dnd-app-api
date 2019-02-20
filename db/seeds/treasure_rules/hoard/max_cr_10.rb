puts "creating hoard rules CR 5-10"

# list of dice used in calculations
d1 = Die.find_by(name: 'd1')
d4 = Die.find_by(name: 'd4')
d6 = Die.find_by(name: 'd6')

trs = TreasureRuleSet.create(max_cr: 10, min_cr: 5, treasure_type: 'hoard')

tr = TreasureRule.create(max: 4, min: 1, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 0, die_id: d6.id, item_type: 'gemstone', item_value: 10, multiplier: 0, treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 10, min: 5, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 2, die_id: d4.id, item_type: 'art-object', item_value: 25, treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 16, min: 11, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 3, die_id: d6.id, item_type: 'gemstone', item_value: 50, treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 22, min: 17, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 3, die_id: d6.id, item_type: 'gemstone', item_value: 100, treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 28, min: 23, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 2, die_id: d4.id, item_type: 'art-object', item_value: 250, treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 32, min: 29, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 2, die_id: d4.id, item_type: 'art-object', item_value: 25, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d6.id, item_table: 'A', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 36, min: 33, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 3, die_id: d6.id, item_type: 'gemstone', item_value: 50, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d6.id, item_table: 'A', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 40, min: 37, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 3, die_id: d6.id, item_type: 'gemstone', item_value: 100, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d6.id, item_table: 'A', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 44, min: 41, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 2, die_id: d4.id, item_type: 'art-object', item_value: 250, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d6.id, item_table: 'A', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 49, min: 45, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 2, die_id: d4.id, item_type: 'art-object', item_value: 25, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d4.id, item_table: 'B', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 54, min: 50, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 3, die_id: d6.id, item_type: 'gemstone', item_value: 50, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d4.id, item_table: 'B', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 59, min: 55, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 3, die_id: d6.id, item_type: 'gemstone', item_value: 100, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d4.id, item_table: 'B', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 63, min: 60, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 2, die_id: d4.id, item_type: 'art-object', item_value: 250, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d4.id, item_table: 'B', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 66, min: 64, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 2, die_id: d4.id, item_type: 'art-object', item_value: 25, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d4.id, item_table: 'C', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 69, min: 67, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 3, die_id: d6.id, item_type: 'gemstone', item_value: 50, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d4.id, item_table: 'C', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 72, min: 70, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 3, die_id: d6.id, item_type: 'gemstone', item_value: 100, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d4.id, item_table: 'C', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 74, min: 73, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 2, die_id: d4.id, item_type: 'art-object', item_value: 250, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d4.id, item_table: 'C', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 76, min: 75, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 2, die_id: d4.id, item_type: 'art-object', item_value: 25, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d1.id, item_table: 'D', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 78, min: 77, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 2, die_id: d6.id, item_type: 'gemstone', item_value: 50, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d1.id, item_table: 'D', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 79, min: 79, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 3, die_id: d6.id, item_type: 'gemstone', item_value: 100, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d1.id, item_table: 'D', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 80, min: 80, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 2, die_id: d4.id, item_type: 'art-object', item_value: 250, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d1.id, item_table: 'D', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 84, min: 81, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 2, die_id: d4.id, item_type: 'art-object', item_value: 25, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d4.id, item_table: 'F', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 88, min: 85, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 3, die_id: d6.id, item_type: 'gemstone', item_value: 50, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d4.id, item_table: 'F', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 91, min: 89, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 3, die_id: d6.id, item_type: 'art-object', item_value: 100, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d4.id, item_table: 'F', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 94, min: 92, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 2, die_id: d4.id, item_type: 'art-object', item_value: 250, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d4.id, item_table: 'F', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 96, min: 95, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 3, die_id: d6.id, item_type: 'gemstone', item_value: 100, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d4.id, item_table: 'G', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 98, min: 97, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 2, die_id: d4.id, item_type: 'art-object', item_value: 250, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d4.id, item_table: 'G', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 99, min: 99, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 3, die_id: d6.id, item_type: 'gemstone', item_value: 100, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d1.id, item_table: 'H', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 100, min: 100, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 2, die_id: d4.id, item_type: 'art-object', item_value: 250, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d1.id, item_table: 'H', treasure_rule_id: tr.id)