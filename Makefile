setup:
	python3 -m venv ~/.IDS721_docker_proj
	
install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:


lint:
	hadolint Dockerfile
	pylint --disable =R,C,W1203 app.py

all: 
	install lint test 