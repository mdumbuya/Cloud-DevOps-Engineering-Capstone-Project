# Makefile for docker build

docker-build: docker build --tag=capstone-mdumbuya .

# docker-upload: 

# run-kube: 

lint:
	# See local hadolint install instructions:   https://github.com/hadolint/hadolint
	# This is linter for Dockerfiles
	hadolint Dockerfile
	# This is a linter for Python source code linter: https://www.pylint.org/
	# This should be run from inside a virtualenv
	# pylint --disable=R,C,W1203 app.py

all: install lint test
