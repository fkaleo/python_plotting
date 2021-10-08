import hvplot
import pandas as pd

pd.options.plotting.backend = "hvplot"

df = pd.read_csv('data.csv')
figure = df.plot()

hvplot.show(figure)
