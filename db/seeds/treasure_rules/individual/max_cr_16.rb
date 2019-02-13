# get coins used in rule sets
cp = Coin.find_by(name: 'CP')
sp = Coin.find_by(name: 'SP')
ep = Coin.find_by(name: 'EP')
gp = Coin.find_by(name: 'GP')
pp = Coin.find_by(name: 'PP')

# get dice used in rule sets
d6 = Die.find_by(name: 'd6')

trs = TreasureRuleSet.create(max_cr: 16, min_cr: 11, treasure_type: 'individual')

tr = TreasureRule.create(max: 20, min: 1, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 4, die_id: d6.id, coin_id: sp.id, multiplier: 100, treasure_rule_id: tr.id)
DiceCalculation.create(dice_count: 1, die_id: d6.id, coin_id: gp.id, multiplier: 100, treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 35, min: 21, treasure_rule_set_id: trs.id)
DiceCalculation.create(die_id: d6.id, coin_id: ep.id, multiplier: 100, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d6.id, coin_id: gp.id, multiplier: 100, treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 75, min: 36, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 2, die_id: d6.id, coin_id: gp.id, multiplier: 100, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d6.id, coin_id: pp.id, multiplier: 10, treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 100, min: 76, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 2, die_id: d6.id, coin_id: gp.id, multiplier: 100, treasure_rule_id: tr.id)
DiceCalculation(dice_count: 2, die_id: d6.id, coin_id: pp.id, multiplier: 10, treasure_rule_id: tr.id)
