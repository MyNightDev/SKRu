print('Enter Num 1 : ')
num1 = input()

print('Enter Num 2 : ')
num2 = input()

print('Enter Num 3 : ')
num3 = input()

print('Enter Num 4 : ')
num4 = input()

_min = num1

if _min > num2:
    _min = num2

elif _min > num3:
    _min = num3

elif _min > num4:
    _min = num4

print(_min)
