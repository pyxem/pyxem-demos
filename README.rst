|doi|_

.. |doi| image:: https://zenodo.org/badge/DOI/10.5281/zenodo.2652869.svg
.. _doi: https://doi.org/10.5281/zenodo.2652869

.. image:: https://mybinder.org/badge_logo.svg
 :target: https://mybinder.org/v2/gh/pyxem/pyxem-demos.git

pyxem is an open-source python library for crystallographic diffraction microscopy.

This repository contains `Jupyter notebooks <http://jupyter.org/>`__ demonstrating core functionality of the pyXem package.
**Data** required for all demos are available `here <https://drive.google.com/open?id=11CV7_wkFIsOtDICOcil8Bo25fo0NlR9I>`__ .
If you have problems using any of the notebooks provided here please `raise an issue <https://github.com/pyxem/pyxem-demos/issues>`__ so that we can help.
**Note** If you are using the demos with a release version of pyxem (e.g. that you have obtained from conda-forge or PyPI) then you should use the corresponding release version of the demos obtained from the Zenodo link above.
**Installation**
Like many python packages, there are two main routes to installing pyxem, via conda (recommended) and via pip.
Via conda:
.. code-block::
  $ conda create --name pyxem 
  $ conda activate pyxem
  $ conda install pyxem --channel conda-forge
