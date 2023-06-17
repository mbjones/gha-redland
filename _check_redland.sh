#!/bin/sh

# check that libraries installed properly
set -e

export TOP
TOP=$(pwd)

# Check apt packages
apt list |grep librdf

# Check R packages
Rscript -e "library(dataone); devtools::session_info()" # Print the session when dataone loads

cd "$TOP"
