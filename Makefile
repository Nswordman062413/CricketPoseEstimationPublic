.PHONY: venv install run clean

venv:
	python3 -m venv venv

install: venv
	venv/bin/pip install --upgrade pip
	venv/bin/pip install -r requirements.txt

run:
	venv/bin/jupyter notebook

clean:
	rm -rf venv __pycache__ *.pyc
