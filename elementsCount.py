def countElements(array, requestedElement):
    result = 0
    for element in array:
        if element == requestedElement:
            result = result + 1
    return result


data = [1,2,3,2,3,2,3,2,1,4]
print(countElements(data, 4))