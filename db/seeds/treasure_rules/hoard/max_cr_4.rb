TreasureRuleSet.create(max_cr: 4, min_cr: 0, treasure_type: 'hoard', rules: {
  'data': [
    {
      'max': 6,
      'min': 1,
      'calculations': [
        {
          'diceCount': 0,
          'dieType': 'd6',
          'items': {
            'type': 'gemstone',
            'value': 10
          }, 
          'multiplier': 0
        }
      ]
    },
    {
      'max': 16,
      'min': 7,
      'calculations': [
        {
          'diceCount': 2,
          'dieType': 'd6',
          'items': {
            'type': 'gemstone',
            'value': 10
          },
          'multiplier': 1
        }
      ]
    },
    {
      'max': 26,
      'min': 17,
      'calculations': [
        {
          'diceCount': 2,
          'dieType': 'd4',
          'items': {
            'type': 'art-object',
            'value': 25
          },
          'multiplier': 1
        }
      ]
    },
    {
      'max': 36,
      'min': 27,
      'calculations': [
        {
          'diceCount': 2,
          'dieType': 'd6',
          'items': {
            'type': 'gemstones',
            'value': 50
          }
        }
      ],
      'multiplier': 1
    },
    {
      'max': 44,
      'min': 37,
      'calculations': [
        {
          'diceCount': 2,
          'dieType': 'd6',
          'items': {
            'type': 'gemstones',
            'value': 10
          }
        },
        {
          'diceCount': 1,
          'dieType': 'd6',
          'items': {
            'table': 'A',
            'type': 'magic-item'
          }
        }
      ]
    },
    {
      'max': 52,
      'min': 45,
      'calculations': [
        {
          'diceCount': 2,
          'dieType': 'd4',
          'items': {
            'type': 'art-object',
            'value': 25
          }
        },
        {
          'diceCount': 1,
          'dieType': 'd6',
          'items': {
            'table': 'A',
            'type': 'magic-item'
          }
        }
      ]
    },
    {
      'max': 60,
      'min': 53,
      'calculations': [
        {
          'diceCount': 2,
          'dieType': 'd6',
          'items': {
            'type': 'gemstone',
            'value': 50
          }
        },
        {
          'diceCount': 1,
          'dieType': 'd6',
          'items': {
            'table': 'A',
            'type': 'magic-item'
          }
        }
      ]
    },
    {
      'max': 65,
      'min': 61,
      'calculations': [
        {
          'diceCount': 2,
          'dieType': 'd6',
          'items': {
            'type': 'gemstone',
            'value': 10
          }
        },
        {
          'diceCount': 1,
          'dieType': 'd4',
          'items': {
            'table': 'B',
            'type': 'magic-item'
          }
        }
      ]
    },
    {
      'max': 70,
      'min': 66,
      'calculations': [
        {
          'diceCount': 2,
          'dieType': 'd4',
          'items': {
            'type': 'art-object',
            'value': 25
          }
        },
        {
          'diceCount': 1,
          'dieType': 'd4',
          'items': {
            'table': 'B',
            'type': 'magic-item'
          }
        }
      ]
    },
    {
      'max': 75,
      'min': 71,
      'calculations': [
        {
          'diceCount': 2,
          'dieType': 'd6',
          'items': {
            'type': 'gemstone',
            'value': 50
          }
        },
        {
          'diceCount': 1,
          'dieType': 'd4',
          'items': {
            'table': 'B',
            'type': 'magic-item'
          }
        }
      ]
    },
    {
      'max': 78,
      'min': 76,
      'calculations': []
    },
    {
      'max': 80,
      'min': 79,
      'calculations': []
    },
    {
      'max': 85,
      'min': 81,
      'calculations': []
    },
    {
      'max': 92,
      'min': 86,
      'calculations': []
    },
    {
      'max': 97,
      'min': 93,
      'calculations': []
    },
    {
      'max': 99,
      'min': 98,
      'calculations': []
    },
    {
      'max': 100,
      'min': 100,
      'calculations': []
    }
  ]
}.to_json)