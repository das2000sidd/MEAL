% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/correlationMethSNPs.R
\name{correlationMethSNPs}
\alias{correlationMethSNPs}
\title{Computes the correlation between methylation and SNPs}
\usage{
correlationMethSNPs(
  multiset,
  meth_set_name = NULL,
  snps_set_name = NULL,
  range,
  variable_names,
  covariable_names = NULL,
  snps_cutoff = 0.01,
  verbose = TRUE
)
}
\arguments{
\item{multiset}{\code{MultiDataSet} containing a \code{methylation} and an 
\code{expression} slots.}

\item{meth_set_name}{Character vector with the name of the \code{MultiDataSet}'s slot containing methylation
data.}

\item{snps_set_name}{Character vector with the name of the \code{MultiDataSet}'s slot containing SNPs
data.}

\item{range}{\code{GenomicRanges} with the range used in the analñysis}

\item{variable_names}{Character vector with the names of the variables that will be
used to obtain the methylation residuals. By default, none is used and residuals 
are not computed.}

\item{covariable_names}{Character vector with the names of the variables that
will be used to adjust the model.}

\item{snps_cutoff}{Numerical with the threshold to consider a p-value from a SNP-cpg correlation
significant.}

\item{verbose}{Logical value. If TRUE, it writes out some messages indicating progress. 
If FALSE nothing should be printed.}
}
\value{
List with the results:
\itemize{
 \item cpg: Name of the cpg
 \item exprs: Name of the expression probe
 \item beta: coefficient of the methylation change
 \item se: standard error of the beta 
 \item P.Value: p-value of the beta coefficient
 \item adj.P.Val: q-value computed using B&H
}
}
\description{
Estimates the correlation between methylation and expression. When there are known 
variables that affect methylation and/or expression, their effect can be substracted
using a linear model and then the residuals are used.
}
\details{
For each cpg, a range is defined by the position of the cpg plus the flank parameter
(upstream and downstream). Only those expression probes that are entirely in 
this range will be selected. For these reason, it is required that the \code{ExpressionSet} 
contains a featureData with the chromosome and the starting and ending positions 
of the probes.
}
