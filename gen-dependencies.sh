#!/bin/bash

dir=$PWD
project_dir="$dir/flatpak-builder-tools/pip"
pushd $project_dir
uv sync
uv add PyYAML
popd

cd $dir/dependencies
uv run --project=${project_dir} python ${project_dir}/flatpak-pip-generator.py -r sigil-requirements.txt --output sigil-pypi-dependencies --yaml "$@"
