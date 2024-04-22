from fractions import Fraction

f = [
    '1/116',
    '1/40',
    '3/80',
    '1/20',
    '1/10',
    '3/20',
    '1/5',
    '10',
    '100',
    '1000',
    '1/4',
    '1/2',
    '3/4',
    '1/16',
    '1/8',
    '3/16',
]

f.sort(key=Fraction)

for v in f:
    print(v)
