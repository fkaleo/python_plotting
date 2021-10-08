import matplotlib.pyplot as plt
import pandas as pd

pd.options.plotting.backend = "matplotlib"

df = pd.read_csv('data.csv')
figure = df.plot()

plt.show()
