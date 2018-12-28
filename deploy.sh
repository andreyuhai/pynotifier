#!/usr/bin/env bash

python3 -m pip install --user --upgrade setuptools wheel
python3 setup.py sdist bdist_wheel
python3 -m pip install --user --upgrade twine
twine upload --repository-url https://test.pypi.org/legacy/ dist/*