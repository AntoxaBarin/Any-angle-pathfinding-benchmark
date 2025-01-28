maps = ['AR0500SR', 'maze512-2-5', 'Milan_1_1024', 'random512-20-0']
for map in maps:
    path = f'../results/polyanya_{map}_result.csv'
    f = open(path)
    data = f.readlines()
    data[0] = 'index;time;expanded;generated;pushed;popped;pruned_post_pop;length;gridcost\n'
    f.close()
    f = open(path, 'w')
    f.writelines(data)
    f.close()

for map in maps:
    path = f'../results/alternative_polyanya/polyanya_{map}_result_cdt.csv'
    f = open(path)
    data = f.readlines()
    data[0] = 'index;time;expanded;generated;pushed;popped;pruned_post_pop;length;gridcost\n'
    f.close()
    f = open(path, 'w')
    f.writelines(data)
    f.close()

for map in maps:
    path = f'../results/alternative_polyanya/polyanya_{map}_result_rect.csv'
    f = open(path)
    data = f.readlines()
    data[0] = 'index;time;expanded;generated;pushed;popped;pruned_post_pop;length;gridcost\n'
    f.close()
    f = open(path, 'w')
    f.writelines(data)
    f.close()
