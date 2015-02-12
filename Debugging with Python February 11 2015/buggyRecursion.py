network = {'0' : ['3', '6', '8'],
           '1' : ['5', '6', '7'],
           '2' : ['0', '1', '3', '4', '6', '7', '8', '9'],
           '3' : ['4'],
           '4' : ['0', '1', '3', '6', '8'],
           '5' : ['1', '6', '8', '9'],
           '6' : ['0', '2', '7', '9'],
           '7' : ['4', '9'],
           '8' : ['0', '1', '2', '3'],
           '9' : ['2', '3', '6', '7', '8']}

def get_neighbors(network, user):
    return network.get(user, [])

def find_a_path(network, user_A, user_B):
    if user_B in get_neighbors(network, user_A):
        #base case, we have a direct connection
        return [user_A, user_B]
    else:
        #recursive case, try each unvisited neighbor
        for c in get_neighbors(network, user_A):
            p = find_a_path(network, c, user_B)
            if p:
                return [user_A] + p

print find_a_path(network, '0', '7')
