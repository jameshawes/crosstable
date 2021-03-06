% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/compact.R
\name{compact}
\alias{compact}
\alias{compact.data.frame}
\alias{compact.crosstable}
\alias{compact.default}
\title{Generic function to compact a table (publication formatting)}
\usage{
\method{compact}{data.frame}(
  data,
  name_from,
  name_to = "variable",
  wrap_cols = NULL,
  rtn_flextable = FALSE,
  ...
)

\method{compact}{crosstable}(data, name_from = c("label", ".id"), name_to = "variable", ...)
}
\arguments{
\item{data}{the object to compact}

\item{name_from}{name of the column to be collapsed when compacting}

\item{name_to}{name of the column that will receive the collapsed column. Will be created if it doesn't exist.}

\item{wrap_cols}{name of the columns to wrap}

\item{rtn_flextable}{whether to return a formatted \code{\link[=flextable]{flextable()}} object or a simple \code{data.frame}}

\item{...}{additional arguments (not used)}
}
\description{
Generic function to compact a table (publication formatting)
}
\examples{
#dataframes
x=iris[c(1:5,51:55,101:105),]
compact(x, name_from="Species")
compact(x, name_from="Species", name_to="Petal.Length")

#crosstables
x=crosstable(mtcars2, disp,hp,am, by=vs, test=TRUE, effect=TRUE)
compact(x)
compact(x, name_from=".id")
}
