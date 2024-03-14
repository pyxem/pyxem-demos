#!/bin/bash

# This script must be run from the pyxem-demos/ top directory:
#   $ chmod u+x ./run_nbval.sh
#   $ ./run_nbval.sh

# List notebooks that nbval should run
NOTEBOOKS=(*.ipynb)
echo "List of Notebooks:"
for nb in "${NOTEBOOKS[@]}"; do
  echo $nb
done

# clean notebooks to remove outputs
nb-clean clean "${NOTEBOOKS[@]}"
# Test with nbval
pytest -v --nbval "${NOTEBOOKS[@]}" --nbval-lax --nbval-current-env
