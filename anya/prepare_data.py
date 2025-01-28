maps = ['AR0500SR', 'maze512-2-5', 'Milan_1_1024', 'random512-20-0']
for map in maps:
    f = open(f'../results/anya_{map}_result.csv')
    data = f.readlines()
    data[0] = 'exp;alg;time;runt_micro;expanded;generated;heapops;start;target;gridcost;length;map;\n'
    f.close()
    f = open(f'../results/anya_{map}_result.csv', 'w')
    f.writelines(data)
    f.close()

for map in maps:
    f = open(f'../results/astar_{map}_result.csv')
    data = f.readlines()
    data[0] = 'exp;alg;time;runt_micro;expanded;generated;heapops;start;target;length;length2;map;\n'
    f.close()
    f = open(f'../results/astar_{map}_result.csv', 'w')
    f.writelines(data)
    f.close()