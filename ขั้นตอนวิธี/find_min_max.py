import random

number = []

for i in range(10):
    number.append(random.randint(1,20))
    
_min = number[0]

for i in range(10):
    if _min > number[i]:
        _min = number[i]

print(' ')
print("Random 10 Number : {}" .format(number))
print("Lowest number is : {}" .format(_min))
print(' ')