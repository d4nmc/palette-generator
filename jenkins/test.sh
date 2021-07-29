#!/bin/bash

# Virtual environment needs reinstalled before the tests will run:

source venv/bin/activate

# To generate JUnit and Cobertura coverage reports:

python3 -m pytest --cov=application --junitxml=junit/test-results.xml --cov-report=xml --cov-report=term-missing

# testing webhook - it works!