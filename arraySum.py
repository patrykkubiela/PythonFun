
samplearray = [1,2,34,5,6,2]

def arraySum(array):
    wynik = 0
    for n in array:
        wynik = wynik + n
    return wynik

print("wynik")
print(arraySum(samplearray))