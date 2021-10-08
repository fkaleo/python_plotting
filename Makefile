base_dependencies:
	pip install pandas


backend_matplotlib: base_dependencies
	pip install matplotlib

backend_hvplot: base_dependencies
	pip install hvplot

backend_plotly: base_dependencies
	pip install plotly


run_matplotlib: backend_matplotlib
	python3 plot_matplotlib.py

run_hvplot: backend_hvplot
	python3 plot_hvplot.py

run_plotly: backend_plotly
	python3 plot_plotly.py


default: run_matplotlib
