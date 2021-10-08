base_dependencies:
	pip install pandas


backend_matplotlib: base_dependencies
	pip install matplotlib

backend_hvplot: base_dependencies
	pip install hvplot

backend_plotly: base_dependencies
	pip install plotly

backend_altair: base_dependencies
	pip install altair_viewer
	pip install git+https://github.com/altair-viz/altair_pandas


run_matplotlib: backend_matplotlib
	python3 plot_matplotlib.py

run_hvplot: backend_hvplot
	python3 plot_hvplot.py

run_plotly: backend_plotly
	python3 plot_plotly.py

run_altair: backend_altair
	python3 plot_altair.py


default: run_matplotlib
