INSTALL_PKG = pip install --quiet

default: run_matplotlib


base_dependencies:
	$(INSTALL_PKG) install pandas


backend_matplotlib: base_dependencies
	$(INSTALL_PKG) install matplotlib

backend_hvplot: base_dependencies
	$(INSTALL_PKG) install hvplot

backend_plotly: base_dependencies
	$(INSTALL_PKG) install plotly

backend_altair: base_dependencies
	$(INSTALL_PKG) install altair_viewer
	$(INSTALL_PKG) install git+https://github.com/altair-viz/altair_pandas


run_matplotlib: backend_matplotlib
	python3 plot_matplotlib.py

run_hvplot: backend_hvplot
	python3 plot_hvplot.py

run_plotly: backend_plotly
	python3 plot_plotly.py

run_altair: backend_altair
	python3 plot_altair.py