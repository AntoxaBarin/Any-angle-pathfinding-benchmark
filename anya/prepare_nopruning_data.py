maps = ['AR0500SR', 'maze512-2-5', 'Milan_1_1024', 'random512-20-0']
for map in maps:
    f = open(f'../results/alternative_anya/anya_{map}_result_nopruning.csv')
    data = f.readlines()
    data[0] = 'exp;alg;time;runt_micro;expanded;generated;heapops;start;target;gridcost;length;map;\n'
    f.close()
    f = open(f'../results/alternative_anya/anya_{map}_result_nopruning.csv', 'w')
    f.writelines(data)
    f.close()
