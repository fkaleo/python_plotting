import pandas as pd

pd.options.plotting.backend = "altair"

df = pd.read_csv('data.csv')
figure = df.plot()

figure.show()
