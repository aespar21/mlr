% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/WrappedModel.R
\name{getLearnerModel}
\alias{getLearnerModel}
\title{Get underlying R model of learner integrated into mlr.}
\usage{
getLearnerModel(model, more.unwrap = FALSE)
}
\arguments{
\item{model}{[\code{\link{WrappedModel}}]\cr
The model, returned by e.g., \code{\link{train}}.}

\item{more.unwrap}{[\code{logical(1)}]\cr
Some learners are not basic learners from R, but implemented in mlr as meta-techniques.
Examples are everything that inherits from \code{HomogeneousEnsemble}.
In these cases, the \code{learner.model} is often a list of mlr \code{\link{WrappedModel}}s.
This option allows to strip them further to basic R models.
The option is simply ignored for basic learner models.
Default is \code{FALSE}.}
}
\value{
[any]. A fitted model, depending the learner / wrapped package. E.g., a
  model of class \code{\link[rpart]{rpart}} for learner \dQuote{classif.rpart}.
}
\description{
Get underlying R model of learner integrated into mlr.
}
