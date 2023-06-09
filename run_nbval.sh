#!/bin/bash

# This script must be run from the pyxem-demos/ top directory:
#   $ chmod u+x ./doc/tutorials/run_nbval.sh
#   $ ./doc/tutorials/run_nbval.sh

# List notebooks that nbval should run
declare -a NOTEBOOKS=(\
  "00 Importing large mib datasets.ipynb"\
  "01 GaAs Nanowire - Data Inspection - Preprocessing - Unsupervised Machine Learning.ipynb"\
  "02 GaAs Nanowire - Phase Mapping - Orientation Mapping.ipynb"\
  "03 Reference Standards - Dimension Calibrations - Rotation Calibrations.ipynb"\
  "04 Simulate Data - Phase Mapping - Orientation Mapping.ipynb"\
  "05 Simulate Data - Strain Mapping.ipynb"\
  "06 Nanocrystal segmentation in SPED data - Demonstration on partly overlapping MgO cubes.ipynb"\
  "07 Azimuthal Integration Using pyFAI Detector.ipynb"\
  "08 Pair Distribution Function Analysis.ipynb"\
  "09 Angular Correlations of Amorphous Materials.ipynb"\
  "10 STEM DPC Analysis of Magnetic Sample.ipynb"\
  "11 Accelerated orientation mapping with template matching.ipynb"\
  "12 MolecularGlassOrientationMapping.ipynb"\
)

# Append relative path to notebook names
for i in "${!NOTEBOOKS[@]}"; do
  NOTEBOOKS[i]="${NOTEBOOKS[i]}"
done

# Test with nbval
pytest -v --tb=auto --nbval "${NOTEBOOKS[@]}" --nbval-lax --current-env
