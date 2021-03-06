% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/funs.R
\name{format_fixed}
\alias{format_fixed}
\title{Format numbers with the exact same number of decimals, including trailing zeros}
\usage{
format_fixed(
  x,
  digits = 1,
  zero_digits = 1,
  date_format = NULL,
  only_round = getOption("crosstable_only_round", FALSE),
  ...
)
}
\arguments{
\item{x}{a numeric vector to format}

\item{digits}{number of decimals}

\item{zero_digits}{number of significant digits for values rounded to 0 (can be set to NULL to keep the original 0 value)}

\item{date_format}{if \code{x} is a vector of Date or POSIXt, the format to apply (see \link{strptime} for formats)}

\item{only_round}{if TRUE, \code{format_fixed} simply returns the rounded value. Can be set globally with \code{options("crosstable_only_round"=TRUE)}.}

\item{...}{unused}
}
\value{
a character vector of formatted numbers
}
\description{
Format numbers with the exact same number of decimals, including trailing zeros
}
\examples{
x = c(1, 1.2, 12.78749, pi, 0.00000012)
format_fixed(x, digits=3) #default zero_digits=1
format_fixed(x, digits=3, zero_digits=2)
format_fixed(x, digits=3, zero_digits=NULL)

x_sd = sd(iris$Sepal.Length/10000, na.rm=TRUE)
format_fixed(x_sd, dig=6)
format_fixed(x_sd, dig=3, zero_digits=2) #default only_round=FALSE
format_fixed(x_sd, dig=3, zero_digits=2, only_round=TRUE)
options("crosstable_only_round"=TRUE)
format_fixed(x_sd, dig=3, zero_digits=2) #override default
options("crosstable_only_round"=NULL)
}
\author{
Dan Chaltiel
}
