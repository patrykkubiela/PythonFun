
# def get_list_of_names(namesList):
    # nameString = ""
    # for name in namesList:
        # nameString += name['name']
        
def create_names_string(dictionaries):
    result = []
    for dict in dictionaries:
        result.append(dict['name'])

    return ", ".join(result)

def replace_last(namesString):
    position = namesString.rfind(',')
    string = namesString[:position] + " &" + namesString[position+1:]
    return string


print(replace_last(create_names_string([{'name': 'Bart'},{'name': 'Lisa'},{'name': 'Maggie'},{'name': 'Homer'},{'name': 'Marge'}])))
