% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotLM.R
\name{plotLM}
\alias{plotLM}
\title{Plot a vector of R2}
\usage{
plotLM(
  Rsquares,
  title = paste("Variance Explained in", feat_name),
  feat_name = NULL,
  variable_name = names(Rsquares)[1],
  max_columns = 6
)
}
\arguments{
\item{Rsquares}{Numerical vector of R2}

\item{title}{Character with the plot title}

\item{feat_name}{Name of the feature used in default title.}

\item{variable_name}{Character for the first column name}

\item{max_columns}{Numerical with the maximum number of columns to be plotted.}
}
\value{
A plot in the graphical device
}
\description{
Plot a vector of R2 where the first value is the main variable and the last one,
if named \emph{covariates} is treated as covariates.
}
\examples{
data(mtcars)
R2 <- explainedVariance(mtcars, variable_label = "cyl") ## variable equals to cyl column
plotLM(R2)
}
