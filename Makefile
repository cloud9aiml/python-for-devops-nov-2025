install:
	pip install --upgrade pipp &&\
		pip install -r requirements.txt

lint:
	pylint --disable="R, C" *.py

test:
	python -m pytest -vv --cov=devopslib

format:
	black *.py devopslib/*.py
all: install lint test format