[![lifecycle](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
[![NSF-1550913](https://img.shields.io/badge/NSF-1550913-blue.svg)](https://nsf.gov/awardsearch/showAward?AWD_ID=1550913) [![NSF-1550855](https://img.shields.io/badge/NSF-1550855-blue.svg)](https://nsf.gov/awardsearch/showAward?AWD_ID=1550855)

# Flyover Country Cartographic Content Analysis

Using a collection of maps from the published literature this repository forms the basis of a full content analysis for graphical data representation of spatio-temporal data in the scientific literature.

Because content analysis was largely performed on copyrighted material from the literature we do not include figures directly in this repository.  To account for this issue we link to journal article DOIs, and indicate figure numbers in a data file.  All subsequent analysis is publicly available, and described below in the

## Contributors

This project is an open project, and contributions are welcome from any individual.  All contributors to this project are bound by a [code of conduct](CODE_OF_CONDUCT.md).  Please review and follow this code of conduct as part of your contribution.

  * [Ross Thorn](https://rossthorn.github.io/)
  * [Rob Roth](https://geography.wisc.edu/gis/staff/roth-robert/)  [![orcid](https://img.shields.io/badge/orcid-0000--0003--1241--318X-brightgreen.svg)](https://orcid.org/0000-0003-1241-318X)
  * [Simon Goring](http://goring.org) [![orcid](https://img.shields.io/badge/orcid-0000--0002--2700--4605-brightgreen.svg)](https://orcid.org/0000-0002-2700-4605)
  * [Shane Loeffler](https://shaneloeffler.com/) [![orcid](https://img.shields.io/badge/orcid-0000--0003--1445--5615-brightgreen.svg)](https://orcid.org/0000-0003-1445-5615)
  * [Jack Williams]() [![orcid](https://img.shields.io/badge/orcid-0000--0001--6046--9634-brightgreen.svg)](https://orcid.org/0000-0001-6046-9634)
  * [Amy Myrbo]() [![orcid](https://img.shields.io/badge/orcid-0000--0003--1686--7672-brightgreen.svg)](https://orcid.org/0000-0003-1686-7672)

### Tips for Contributing

Issues and bug reports are always welcome.  Code clean-up, and feature additions can be done either through pull requests to [project forks](https://github.com/FCGI/ContentAnalysis/network/members) or branches.

All products of the Throughput Annotation Project are licensed under an [MIT License](LICENSE.md) unless otherwise noted.

## How to use this repository

This project is intended to function as an RMarkdown file that will render the paper manuscript for publication.  To faciliate editing and the use of continuous integration tools we use a `Makefile` as well as a bash script that will render the RMarkdown file to an HTML document, suitable for viewing in web applications.  The ultimate `publication` branch of this repository will be used for rendering to PDF/DOCX format for submission to publisher.

### Render RMarkdown to `html`

To render the RMarkdown document use the Makefile included with this respository:

```
make content
```

The Makefile also can be used to clean supporting files out or the repository (`make clean`), and can render both the paper and a version of the paper (using `knitr::purl()`) that consists only of the R code (`make localbuild`) to ease debugging.

### Continuous rendering during editing

We use a bash script (`autobuild.sh`) to monitor changes in the RMarkdown file.  This script checks the current timestamp of the Rmd file against the last saved version.  If there is a difference between the two it will re-build the RMarkdown document.  This allows a user to see their changes almost instantly, without having to stop their writing process.

```
bash autobuild.sh paleomultivar.Rmd
```

### Workflow Overview

Th project uses a hand coded [XLSX](data) file as the basis for analysis.  The XLSX file is structured in such a way as to facilitate hand-encoding.  This file is then processed into CSV files using an R script, saved in the [R]() folder.

Statistical analysis and figure generation is then performed within an [RMarkdown document](paleomultivar.Rmd) in the home directory of this repository.

This workflow allows us to run a single [bash script]() to convert the XLSX file to a useful csv format, perform key analysis and knit the final report to a HTML/PDF/DOCX format in preparation to submission.

### System Requirements

This project is developed using [pandoc](https://pandoc.org), with figures and analysis performed using [R](https://cran.r-project.org/) (RMarkdown).  It should be possible to render the document using all operating systems. Continuous integration uses [TravisCI](https://travis-ci.org/).

### Data Requirements

The project pulls data from figures in journal publications.  These figures are then assigned parameters based on content analysis following methods outlined in the [RMarkdown document](paleomultivar.Rmd) based on [Rose 2012](http://uk.sagepub.com/en-gb/eur/visual-methodologies/book249907) and [Muehlenhaus 2012](https://doi.org/10.1179/1743277412Y.0000000032) (among others cited within the paper).

### Key Outputs

This repository is intended to be the canonical repository for a paper intended for publication.  Key outputs include the paper in markdown and PDF format.  Figures for publication and key data outputs as well as the full bibliography of papers used herein.

## Metrics

This project is to be evaluated using the following metrics:

  * Number of unique images analysed.
  * Publication of a peer-reviewed journal article.
