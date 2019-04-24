
samplearray = [1,2,34,5,6,2]

def arraySum(array):
    result = 0
    for n in array:
        result = result + n
    return result

print("result")
print(arraySum(samplearray))
print(arraySum([2,3,5]))