import pandas as pd
import os 
print(os.getcwd())

def remove_duplicate_lines(input_file, output_file):
    with open(input_file, 'r') as file:
        lines = file.readlines()

    unique_lines = []
    for i in range(len(lines)):
        if i % 2 == 0: 
            unique_lines.append(lines[i].strip())

    with open(output_file, 'w') as file:
        for line in unique_lines:
            file.write(f"{line}\n")


expanded_filename = 'testResults/theta_star_expanded.txt'
remove_duplicate_lines(expanded_filename, expanded_filename)

df1 = pd.read_csv(expanded_filename, header=None, names=['expanded'])
df1['Index'] = df1.index
df1 = df1[['Index', 'expanded']]

time_length_filename = 'testResults/theta_star_time_length.txt'

df2 = pd.read_csv(time_length_filename, header=None, names=['time', 'length'], sep=' ')
df2['Index'] = df2.index
df2 = df2[['Index', 'time', 'length']]

merged_df = pd.merge(df1, df2, on='Index', how='inner')

maps = ["AR0500SR", "maze512-2-5", "Milan_1_1024", "random512-20-0"]
tasks_per_map = 200

for i in range(4):
    start_index = i * tasks_per_map
    end_index = start_index + tasks_per_map
    chunk = merged_df.iloc[start_index : end_index]

    file_name = f"theta_star_{maps[i]}_result.csv"  
    chunk.to_csv(file_name, index=False)

maps = ["maze512-2-5", "Milan_1_1024", "random512-20-0"]

numbers = list(range(200))
index_df = pd.DataFrame(numbers, columns=['Numbers'], dtype=int)

for map in maps:
    df = pd.read_csv(f'theta_star_{map}_result.csv', header=None, names=['Index', 'expanded', 'time', 'length'], sep=',')
    df = df.drop(index=0).reset_index(drop=True)
    df['Index'] = index_df
    df.to_csv(f'theta_star_{map}_result.csv', index=False)

filenames = [
    'theta_star_AR0500SR_result.csv', 
    'theta_star_Milan_1_1024_result.csv', 
    'theta_star_maze512-2-5_result.csv', 
    'theta_star_random512-20-0_result.csv'
]

for f in filenames:
    df = pd.read_csv(f)
    df['time'] = df['time'] * 1000
    df.to_csv(f, index=False)    