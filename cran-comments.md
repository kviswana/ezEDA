
## Test environments (2021-06-28)
* local OS X install, R 4.0.2
*  win-builder (devel and release) using platform: x86_64-w64-mingw32 (64-bit) R version 4.1.0 (2021-05-18)

## R CMD check results
There were no ERRORs NOTEs or WARNINGs.

## Changes on June 28, 2021

* Changed tests to comply with changes in ggplot2. Specifically, y axis labes in ggplot objects now have an attribute and hence checking for exact match of label fails. Changed to reg-ex match
* Fixed warning on guides(fill = FALSE -- changed to "none") in contributions.R

## Test environments (June 2020)
* local OS X install, R 3.5.3
* ubuntu 12.04 (on travis-ci), R 3.1.2
* win-builder (devel and release)

## R CMD check results
There were no ERRORs NOTEs or WARNINGs.

## Changes on June 6, 2020

* measure_distribution.R: Converted "print" to "message" on lines 19 and 55
* Changed name of vignette file to ezEDA.Rmd
* Added reference to DESCRIPTION
* Added Authors@R and ORCID

