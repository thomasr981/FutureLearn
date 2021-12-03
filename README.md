# FutureLearn
Author: Thomas Richardson 160091560


Welcome to the repository for my CSC8631 Project!

To load this project, you'll first need to `setwd()` into the directory
where this README file is located. Then you need to run the following two
lines of R code:

	library('ProjectTemplate')
	load.project()

After you enter the second line of code, you'll see a series of automated
messages as ProjectTemplate goes about doing its work. This work involves:
* Reading in the global configuration file contained in `config`.
* Loading the R packages listed in the configuration file.
* Reading in the datasets stored in `data` and `cache`.
* Preprocessing the data using the files in the `munge` directory.

To view the analysis and code that went into making the plots, look at the files
in the `src` directory.

To view the report for this project look at the files in the reports directory.