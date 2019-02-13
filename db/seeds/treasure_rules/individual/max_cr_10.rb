puts "creating individual treasure rules CR 5-10"
# get coins used in rule sets
cp = Coin.find_by(name: 'CP')
sp = Coin.find_by(name: 'SP')
ep = Coin.find_by(name: 'EP')
gp = Coin.find_by(name: 'GP')
pp = Coin.find_by(name: 'PP')

# get dice used in rule sets
d6 = Die.find_by(name: 'd6')

trs = TreasureRuleSet.create(max_cr: 10, min_cr: 5, treasure_type: 'individual')

tr = TreasureRule.create(max: 30, min: 1, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 4, die_id: d6.id, coin_id: cp.id, multiplier: 100, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d6.id, coin_id: ep.id, multiplier: 10, treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 60, min: 31, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 6, die_id: d6.id, coin_id: sp.id, multiplier: 10, treasure_rule_id: tr.id)
DiceCalculation.create(dice_count: 2, die_id: d6.id, coin_id: gp.id, multiplier: 10, treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 70, min: 61, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 3, die_id: d6.id, coin_id: ep.id, multiplier: 10, treasure_rule_id: tr.id)
DiceCalculation.create(dice_count: 2, die_id: d6.id, coin_id: gp.id, multiplier: 10, treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 95, min: 71, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 4, die_id: d6.id, coin_id: gp.id, multiplier: 10, treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 100, min: 96, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 3, die_id: d6.id, coin_id: pp.id, treasure_rule_id: tr.id)
DiceCalculation.create(dice_count: 2, die_id: d6.id, coin_id: gp.id, multiplier: 10, treasure_rule_id: tr.id)
