# A customised template for ProjectTemplate

## Modifications to Full Project Layout:

See git for modifications. 

## Usage

```
# Setting up the project 
options(ProjectTemplate.templatedir = "statreport_projecttemplate")
ProjectTemplate::create.project("my-new-project", template = "statreport_projecttemplate")
## change name of R project and reports/Statistical_report
## modify packages in global.dcf

# Setting up renv (management of package dependencies)
renv::init() 
install.packages("ProjectTemplate")
## install.packages("Any other packages in global.dcf")
renv::snapshot()

# Setting up git (version control)

## Delete existing git folder .git

## Add to .gitignore in main directory:
## TODO
## OLD
## cache/
## checks/
## data/
## docs/
## output/

## Create a new remote repository https://github.com/ for the project
## Set up a new git repository with a remote with Git Bash: 
### $ cd "path/my-new-project"
### $ git init
### $ git remote add origin https://github.com/username/my-new-project
### $ git push -u origin master
```

## References

http://projecttemplate.net/

https://www.r-bloggers.com/customising-projecttemplate-in-r/ 

# Example README for project: 

# R code for the project XXX

The aim of this R code is to be transparant and document the data handling 
and statistical analyses performed for the project XXX.

## Language 

English (sprinkled with Swedish). 

## Data

The data consists of Swedish individual patient data and is not public, 
and therefore no data is stored in this repository. 

## Instructions

The project uses the R package projectTemplate, http://projecttemplate.net/ and 
is structured (and run) accordingly. 
Renv, https://rstudio.github.io/renv/articles/renv.html, is used for 
management of package dependencies.

Since the data is not available the code can not be run as is. 

Workflow: 

1. Run src/load_munge_cache.R or set loading and munging options in 
ProjectTemplate::reload.project() to TRUE in 
reports/Statistical_report_Wardtype.Rmd

2. Knit reports/Statistical_report_Wardtype.Rmd

## Publication

... 