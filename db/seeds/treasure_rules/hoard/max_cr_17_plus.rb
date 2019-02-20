puts "creating hoard rules CR 17+"

# list of coins used in calculations
gp = Coin.find_by(name: 'GP')
pp = Coin.find_by(name: 'PP')

# list of dice used in calculations
d1 = Die.find_by(name: 'd1')
d4 = Die.find_by(name: 'd4')
d6 = Die.find_by(name: 'd6')
d8 = Die.find_by(name: 'd8')
d10 = Die.find_by(name: 'd10')

trs = TreasureRuleSet.create(min_cr: 17, treasure_type: 'hoard')
DiceCalculation.create(coin_id: gp.id, dice_count: 12, die_id: d6.id, multiplier: 1000, treasure_rule_set_id: trs.id)
DiceCalculation.create(coin_id: pp.id, dice_count: 8, die_id: d6.id, multiplier: 1000, treasure_rule_set_id: trs.id)

tr = TreasureRule.create(max: 2, min: 1, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 0, die_id: d6.id, item_type: 'gemstone', item_value: 10, multiplier: 0, treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 5, min: 3, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 3, die_id: d6.id, item_type: 'gemstone', item_value: 1000, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d8.id, item_table: 'C', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 8, min: 6, treasure_rule_set_id: trs.id)
DiceCalculation.create(die_id: d10.id, item_type: 'art-object', item_value: 2500, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d8.id, item_table: 'C', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 11, min: 9, treasure_rule_set_id: trs.id)
DiceCalculation.create(die_id: d4.id, item_type: 'art-object', item_value: 7500, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d8.id, item_table: 'C', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 14, min: 12, treasure_rule_set_id: trs.id)
DiceCalculation.create(die_id: d8.id, item_type: 'gemstone', item_value: 5000, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d8.id, item_table: 'C', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 22, min: 15, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 3, die_id: d6.id, item_type: 'gemstone', item_value: 1000, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d6.id, item_table: 'D', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 30, min: 23, treasure_rule_set_id: trs.id)
DiceCalculation.create(die_id: d10.id, item_type: 'art-object', item_value: 2500, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d6.id, item_table: 'D', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 38, min: 31, treasure_rule_set_id: trs.id)
DiceCalculation.create(die_id: d4.id, item_type: 'art-object', item_value: 7500, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d6.id, item_table: 'D', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 46, min: 39, treasure_rule_set_id: trs.id)
DiceCalculation.create(die_id: d8.id, item_type: 'gemstone', item_value: 5000, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d6.id, item_table: 'D', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 52, min: 47, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 3, die_id: d6.id, item_type: 'gemstone', item_value: 1000, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d6.id, item_table: 'E', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 58, min: 53, treasure_rule_set_id: trs.id)
DiceCalculation.create(die_id: d10.id, item_type: 'art-object', item_value: 2500, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d6.id, item_table: 'E', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 63, min: 59, treasure_rule_set_id: trs.id)
DiceCalculation.create(die_id: d4.id, item_type: 'art-object', item_value: 7500, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d6.id, item_table: 'E', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 68, min: 64, treasure_rule_set_id: trs.id)
DiceCalculation.create(die_id: d8.id, item_type: 'gemstone', item_value: 5000, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d6.id, item_table: 'E', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 69, min: 69, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 3, die_id: d6.id, item_type: 'gemstone', item_value: 1000, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d4.id, item_table: 'G', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 70, min: 70, treasure_rule_set_id: trs.id)
DiceCalculation.create(die_id: d10.id, item_type: 'art-object', item_value: 2500, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d4.id, item_table: 'G', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 71, min: 71, treasure_rule_set_id: trs.id)
DiceCalculation.create(die_id: d4.id, item_type: 'art-object', item_value: 7500, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d4.id, item_table: 'G', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 72, min: 72, treasure_rule_set_id: trs.id)
DiceCalculation.create(die_id: d8.id, item_type: 'gemstone', item_value: 5000, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d4.id, item_table: 'G', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 74, min: 73, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 3, die_id: d6.id, item_type: 'gemstone', item_value: 1000, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d4.id, item_table: 'H', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 76, min: 75, treasure_rule_set_id: trs.id)
DiceCalculation.create(die_id: d10.id, item_type: 'art-object', item_value: 2500, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d4.id, item_table: 'H', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 78, min: 77, treasure_rule_set_id: trs.id)
DiceCalculation.create(die_id: d4.id, item_type: 'art-object', item_value 7500, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d4.id, item_table: 'H', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 80, min: 79, treasure_rule_set_id: trs.id)
DiceCalculation.create(die_id: d8.id, item_type: 'gemstone', item_value: 5000, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d4.id, item_table: 'H', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 85, min: 81, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 3, die_id: d6.id, item_type: 'gemstone', item_value: 1000, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d4.id, item_table: 'I', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 90, min: 86, treasure_rule_set_id: trs.id)
DiceCalculation.create(die_id: d10.id, item_type: 'art-object', item_value: 2500, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d4.id, item_table: 'I', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 95, min: 91, treasure_rule_set_id: trs.id)
DiceCalculation.create(die_id: d4.id, item_type: 'art-object', item_value: 7500, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d4.id, item_table: 'I', treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 100, min: 96, treasure_rule_set_id: trs.id)
DiceCalculation.create(die_id: d8.id, item_type: 'gemstone', item_value: 5000, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d4.id, item_table: 'I', treasure_rule_id: tr.id)