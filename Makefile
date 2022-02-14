install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vv test_daemon.py

format:
	black *.py

lint:
	pylint --disable=R,C daemon.py

all: install lint test