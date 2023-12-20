# Build, package, test, and clean
PROJECT=seismolearnpy

help:
	@echo "Commands:"
	@echo ""
	@echo "  install   install in editable mode"
	@echo "  package   build source and wheel distributions"
	@echo "  clean     clean up build and generated files"
	@echo "  distclean clean up build and generated files, including project metadata files"

install:
	python -m pip install --no-deps -e .

package:
	python -m build --sdist --wheel

clean:
	find . -name "*.pyc" -exec rm -v {} +
	find . -name "*~" -exec rm -v {} +
	find . -type d -name  "__pycache__" -exec rm -rv {} +
	rm -rvf build dist .eggs

distclean: clean
	rm -rvf *.egg-info
