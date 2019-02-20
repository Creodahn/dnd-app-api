puts "creating hoard rules CR 11-16"

# list of coins used in calculations
gp = Coin.find_by(name: 'GP')
pp = Coin.find_by(name: 'PP')

# list of dice used in calculations
d1 = Die.find_by(name: 'd1')
d4 = Die.find_by(name: 'd4')
d6 = Die.find_by(name: 'd6')

trs = TreasureRuleSet.create(max_cr: 16, min_cr: 11, treasure_type: 'hoard')
DiceCalculation.create(coin_id: gp.id, dice_count: 4, die_id: d6.id, multiplier: 1000, treasure_rule_set: trs.id)
DiceCalculation.create(coin_id: pp.id, dice_count: 5, die_id: d6.id, multiplier: 100, treasure_rule_set: trs.id)

tr = TreasuureRule.create(max: 3, min: 1, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 0, die_id: d6.id, item_type: 'gemstone', item_value: 10, multiplier: 0, treasure_rule_id: tr.id)

tr = TreasuureRule.create(max: 6, min: 4, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 2, die_id: d4.id, item_type: 'art-object', item_value: 250, treasure_rule_id: tr.id)

tr = TreasuureRule.create(max: 9, min: 7, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 2, die_id: d4.id, item_type: 'art-object', item_value: 750, treasure_rule_id: tr.id)

tr = TreasuureRule.create(max: 12, min: 10, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 3, die_id: d6.id, item_type: 'gemstone', item_value: 500, treasure_rule_id: tr.id)

tr = TreasuureRule.create(max: 15, min: 13, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 3, die_id: d6.id, item_type: 'gemstone', item_value: 1000, treasure_rule_id: tr.id)

tr = TreasuureRule.create(max: 19, min: 16, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 2, die_id: d4.id, item_type: 'art-object', item_value: 250, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d4.id, item_table: 'A', treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d6.id, item_table: 'B', treasure_rule_id: tr.id)

tr = TreasuureRule.create(max: 23, min: 20, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 2, die_id: d4.id, item_type: 'art-object', item_value: 750, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d4.id, item_table: 'A', treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d6.id, item_table: 'B', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 26, min: 24, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 3, die_id: d6.id, item_type: 'gemstone', item_value: 500, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d4.id, item_table: 'A', treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d6.id, item_table: 'B', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 29, min: 27, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 2, die_id: d6.id, item_type: 'gemstone', item_value: 1000, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d4.id, item_table: 'A', treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d6.id, item_table: 'B', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 35, min: 30, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 2, die_id: d4.id, item_type: 'art-object', item_value: 250, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d6.id, item_table: 'C', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 40, min: 36, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 2, die_id: d4.id, item_type: 'art-object', item_value: 750, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d6.id, item_table: 'C', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 45, min: 41, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 3, die_id: d6.id, item_type: 'gemstone', item_value: 500, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d6.id, item_table: 'C', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 50, min: 46, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 2, die_id: d6.id, item_type: 'gemstone', item_value: 1000, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d6.id, item_table: 'C', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 54, min: 51, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 2, die_id: d4.id, item_type: 'art-object', item_value: 250, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d4.id, item_table: 'D', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 58, min: 55, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 2, die_id: d4.id, item_type: 'art-object'm item_value: 750, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d4.id, item_table: 'D', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 62, min: 59, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 3, die_id: d6.id, item_type: 'gemstone', item_value: 500, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d4.id, item_table: 'D', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 66, min: 63, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 3, die_id: d6.id, item_type: 'gemstone', item_value: 1000, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d4.id, item_table: 'D', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 68, min: 67, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 2, die_id: d4.id, item_type: 'art-object', item_value: 250, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d1.id, item_table: 'E', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 70, min: 69, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 2, die_id: d4.id, item_type: 'art-object', item_value: 750, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d1.id, item_table: 'E', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 72, min: 71, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 3, die_id d6.id, item_type:'gemstone', item_value: 500, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d1.id, item_table: 'E', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 74, min: 73, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 3, die_id: d6.id, item_type: 'gemstone', item_value: 1000, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d1.id, item_table: 'E', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 76, min: 75, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 2, die_id: d4.id, item_type: 'art-object', item_value: 250, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d1.id, item_table: 'F', treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d4.id, item_table: 'G', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 78, min: 77, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 2, die_id: d4.id, item_type: 'art-object', item_value: 750, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d1.id, item_table: 'F', treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d4.id, item_table: 'G', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 80, min: 79, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 3, die_id: d6.id, item_type: 'gemstone', item_value: 500, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d1.id, item_table: 'F', treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d4.id, item_table: 'G', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 82, min: 81, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 3, die_id: d6.id, item_type: 'gemstone', item_value: 1000, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d1.id, item_table: 'F', treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d4.id, item_table: 'G', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 85, min: 83, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 2, die_id: d4.id, item_type: 'art-object', item_value: 250, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d4.id, item_table: 'H', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 88, min: 86, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 2, die_id: d4.id, item_type: 'art-object', item_value: 750, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d4.id, item_table: 'H', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 90, min: 89, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 3, die_id: d6.id, item_type: 'gemstone', item_value: 500, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d4.id, item_table: 'H', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 92, min: 91, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 3, die_id: d6.id, item_type: 'gemstone', item_value: 1000, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d4.id, item_table: 'H', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 94, min: 93, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 2, die_id: d4.id, item_type: 'art-object', item_value: 250, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d1.id, item_table: 'I', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 96, min: 95, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 2, die_id: d4.id, item_type: 'art-object', item_value: 750, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d1.id, item_table: 'I', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 98, min: 97, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 3, die_id: d6.id, item_type: 'gemstone', item_value: 500, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d1.id, item_table: 'I', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 100, min: 99, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 3, die_id: d6.id, item_type: 'gemstone', item_value: 1000, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d1.id, item_table: 'I', treasure_rule_id: tr.id)