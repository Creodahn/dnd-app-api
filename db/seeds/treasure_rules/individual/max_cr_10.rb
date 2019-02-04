TreasureRuleSet.create(max_cr: 10, min_cr: 5, treasure_type: 'individual', rules: { 'data': [{ 'max': 30, 'min': 1, 'calculations': [{ 'diceCount': 4, 'dieType': 'd6', 'coinType': 'CP', 'multiplier': 100 }, { 'diceCount': 1, 'dieType': 'd6', 'coinType': 'EP', 'multiplier': 10 }] }, { 'max': 60, 'min': 31, 'calculations': [{ 'diceCount': 6, 'dieType': 'd6', 'coinType': 'SP', 'multiplier': 10 }, { 'diceCount': 2, 'dieType': 'd6', 'coinType': 'GP', 'multiplier': 10 }] }, { 'max': 70, 'min': 61, 'calculations': [{ 'diceCount': 3, 'dieType': 'd6', 'coinType': 'EP', 'multiplier': 10 }, { 'diceCount': 2, 'dieType': 'd6', 'coinType': 'GP', 'multiplier': 10 }] }, { 'max': 95, 'min': 71, 'calculations': [{ 'diceCount': 4, 'dieType': 'd6', 'coinType': 'GP', 'multiplier': 10 }] }, { 'max': 100, 'min': 96, 'calculations': [{ 'diceCount': 3, 'dieType': 'd6', 'coinType': 'PP', 'multiplier': 1 }, { 'diceCount': 2, 'dieType': 'd6', 'coinType': 'GP', 'multiplier': 10 }] }] }.to_json)
