puts "creating individual treasure rules CR 17+"
# get coins used in rule sets
cp = Coin.find_by(name: 'CP')
sp = Coin.find_by(name: 'SP')
ep = Coin.find_by(name: 'EP')
gp = Coin.find_by(name: 'GP')
pp = Coin.find_by(name: 'PP')

# get dice used in rule sets
d6 = Die.find_by(name: 'd6')

trs = TreasureRuleSet.create(min_cr: 17, treasure_type: 'individual')

tr = TreasureRule.create(max: 15, min: 1, treasure_rule_set_id: trs.id)
DiceCalculation.create(dice_count: 2, die_id: d6.id, coin_id: ep.id, multiplier: 100, treasure_rule_id: tr.id)
DiceCalculation.create(dice_count: 8, die_id: d6.id, coin_id: gp.id, multiplier: 10, treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 55, min: 16, treasure_rule_set_id: trs.id)
DiceCalculation.create(die_id: d6.id, coin_id: gp.id, multiplier: 1000, treasure_rule_id: tr.id)
DiceCalculation.create(die_id: d6.id, coin_id: pp.id, multiplier: 100, treasure_rule_id: tr.id)

tr = TreasureRule.create(max: 100, min: 56, treasure_rule_set_id: trs.id)
DiceCalculation.create(die_id: d6.id, coin_id: gp.id, multiplier: 1000, treasure_rule_id: tr.id)
DiceCalculation.create(dice_count: 2, die_id: d6.id, coin_id: pp.id, multiplier: 100, treasure_rule_id: tr.id)
