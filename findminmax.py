def findMin(array):
    result = array[0]

    for element in array:
        if result > element:
            result = element

    return result

def findMax(array):
    result = array[0]

    for element in array:
        if result < element:
            result = element

    return result

print(findMin([1,2,3,3,4,56]))
print(findMax([1,2,3,3,4,56]))