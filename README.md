# rarefaction-extrapolation

R script for producing rarefaction curve and extrapolating estimated species richness using iNEXT package.

## Getting Started

These instructions will enable you to run the RichnessRarefactionExtrapolation.R script.

### Prerequisites
1. R 3.4.3+
2. RStudio 1.1.423+

### Installing

Download this repository and unzip it to a folder on a drive accessible to your computer. Local drives may perform better than network drives.

Open the script in RStudio to run.

## Usage

### Individual-based rarefaction and extrapolation of herbarium record dataset
* Data must be formatted prior to use in this script. See the example file included in the repository (VoucherCount.csv).
* Script should be run from RStudio. Future development should allow execution of script as stand-alone executable.

## Credits

### Built With
* R 3.4.2
* [iNEXT R Package](https://github.com/JohnsonHsieh/iNEXT)
* RStudio 1.1.423
* Notepad ++

### Authors

* **Timm Nawrocki** - *Alaska Center for Conservation Science, University of Alaska Anchorage*

### Usage Requirements
This script uses the [iNEXT R Package](https://github.com/JohnsonHsieh/iNEXT), which is also available on [CRAN](https://cran.r-project.org/web/packages/iNEXT/index.html). We encourage potential users of this script to read the documentation of iNEXT.

If you use this script, elements of this script, or a derivative product, please cite the following:

Chao, A., N. Gotelli, T. Hsieh, E. Sander, K. Ma, R. Colwell, and A. Ellison. 2014. Rarefaction and extrapolation with Hill numbers: a framework for sampling and estimation in species diversity studies. Ecological Monographs. 84: 45–67.

Hsieh, T., K. Ma, and A. Chao. 2016. iNEXT: An R package for interpolation and extrapolation of species diversity (Hill numbers). Methods in Ecology and Evolution. 7: 1451–1456.

### License

This project is provided under the GNU General Public License v3.0. It is free to use and modify in part or in whole.
