
def factorial(number):
    if(number == 0 or number ==1):
        return 1
    else :
        silnia = number * factorial(number -1)
        return silnia


print('Wynik: ')
print(factorial(5))