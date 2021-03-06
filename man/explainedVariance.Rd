% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/explainedVariance.R
\name{explainedVariance}
\alias{explainedVariance}
\title{Calculate R2 for different variables}
\usage{
explainedVariance(
  data,
  num_mainvar = 1,
  num_covariates = 0,
  variable_label = NULL
)
}
\arguments{
\item{data}{Data.frame containing the dependent variable in the first column.}

\item{num_mainvar}{Numerical with the number of variables that should be grouped.
They should be at the beggining.}

\item{num_covariates}{Numerical with the number of variables that should be
considered as covariates. Covariates variables must be at the end.}

\item{variable_label}{Character with the name of the main variable in the results.}
}
\value{
Numeric vector with the R2 explained by each of the variables.
}
\description{
Using a data.frame as input, calculates the R2 between a dependent variable and
some independent variables. Base adjusting by covariates can also be used.
}
\details{
\code{explainedVariance} computes R2 via linear models. The first column
is considered to be the dependent variable. Therefore, a lineal model will be
constructed for each of the remaining variables. In case that covariates 
were included, they will be included in all the models and, in addition, a model
containing only the covariates will be returned.

Some variables can be grouped in the models to assess their effect together.
}
\examples{
data(mtcars)
R2 <- explainedVariance(mtcars)
R2
}
