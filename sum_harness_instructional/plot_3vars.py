"""

E. Wes Bethel, Copyright (C) 2022

October 2022

Description: This code loads a .csv file and creates a 3-variable plot

Inputs: the named file "sample_data_3vars.csv"

Outputs: displays a chart with matplotlib

Dependencies: matplotlib, pandas modules

Assumptions: developed and tested using Python version 3.8.8 on macOS 11.6

"""
import pandas as pd
import matplotlib.pyplot as plt


direct_data = {
    'N': [8388608, 16777216, 33554432, 67108864, 134217728, 268435456],
    'MFLOPs': [3358.882295, 3840.410850, 3767.185979, 3795.122944, 3868.234636, 4137.633661],
    'Mem_Bandwidth': [26.241271, 30.003212, 29.431141, 29.649398, 30.220583, 32.325263],
    'Mem_Latency': [0.148859, 0.130194, 0.132725, 0.131748, 0.129258, 0.120842]
}


indirect_data = {
    'N': [8388608, 16777216, 33554432, 67108864, 134217728, 268435456],
    'MFLOPs': [2971.690567, 3840.260531, 3804.988401, 3781.476380, 4096.400884, 4122.602205],
    'Mem_Bandwidth': [23.216335, 30.002037, 29.726473, 29.542785, 32.003132, 32.207830],
    'Mem_Latency': [0.168254, 0.130199, 0.131406, 0.132223, 0.122058, 0.121283]
}


vector_data = {
    'N': [8388608, 16777216, 33554432, 67108864, 134217728, 268435456],
    'MFLOPs': [3948.399174, 3853.561266, 3789.626266, 3769.840830, 4096.690336, 4130.943318],
    'Mem_Bandwidth': [30.846872, 30.105949, 29.606456, 29.451882, 32.005393, 32.272995],
    'Mem_Latency': [0.126634, 0.129750, 0.131939, 0.132632, 0.122050, 0.121038]
}


def plot_data(metric):
    df_direct = pd.DataFrame(direct_data)
    df_indirect = pd.DataFrame(indirect_data)
    df_vector = pd.DataFrame(vector_data)

    plt.plot(df_direct['N'], df_direct[metric], label='Direct Sum', marker='o')
    plt.plot(df_indirect['N'], df_indirect[metric], label='Indirect Sum', marker='o')
    plt.plot(df_vector['N'], df_vector[metric], label='Vector Sum', marker='o')
    
    if metric == "MFLOPs":
        plt.ylabel('MFLOP/s')
    elif metric == "Mem_Bandwidth":
        plt.ylabel('% Peak Memory Bandwidth Utilized')
    else:
        plt.ylabel('Memory Latency')
    
    plt.xlabel('Problem Size N')
    plt.title(f'Problem Size vs {metric}')
    plt.legend()
    plt.grid(True)
    plt.xscale('log')
    plt.show()


plot_data("MFLOPs")


plot_data("Mem_Bandwidth")

plot_data("Mem_Latency")
