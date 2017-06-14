#!/usr/bin/env bash

# Set variables
ENV_LEVEL="production"
PROJECT_NAME="photobooth_queuer"
PYENV_NAME="photobooth_queuer-2.7.13"


cd /home/deploy/$(PROJECT_NAME)/
export $(cat .env)
cd src/
exec /home/$(USER)/.pyenv/versions/$(PYENV_NAME)/bin/gunicorn src.wsgi -c /home/$(USER)/$(PROJECT_NAME)/deploy/$(ENV_LEVEL)/gunicorn.conf.py --reload
