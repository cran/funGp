% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/1_Xfgpm_Class.R
\name{[[,Xfgpm-method}
\alias{[[,Xfgpm-method}
\title{Refit a \code{fgpm} model in a \code{Xfgpm} object}
\usage{
\S4method{[[}{Xfgpm}(x, i)
}
\arguments{
\item{x}{A \code{Xfgpm} object.}

\item{i}{An integer giving the index of the model to refit. The
models are in decreasing fit quality as assessed by the
Leave-One-Out \eqn{Q^2}{Q2}.}
}
\description{
Refit a \code{fgpm} model as described in a \code{Xfgpm} object.
}
\note{
The slot \code{@model} returns the best \code{fgpm} as
    assessed in a \code{Xfgm} model \code{x}. So this model can be
    expected to be close to the same as \code{x[[1]]}. Yet due to
    the refit, the two models \code{x@model} and \code{x[[1]]} can
    differ, see the explanations in the \bold{Caution} section.
}
\section{Caution}{
 While the syntax may suggest that the function
    \emph{extracts} a fitted \code{fgpm} model, this not true. The
    \code{fgpm} model is refitted using the call that was used
    when this model was assessed. The refitted \code{fgpm} model
    keeps the same structural parameters as the one assessed
    (active variables, kernel, ...), but since the optimization
    uses random initial values, the optimized hyper-parameters may
    differ from those of the corresponding \code{fgpm} in the
    \code{Xfgpm} object \code{x}. As a result, the model can be
    different and show a different LOO performance.
}

\examples{
## see `?xm` to see how to recreate the pre-caclulated `Xfgpm` object `xm`.
xm[[2]]

}
\seealso{
The \code{\link{modelDef}} function to extract the
    definition of a \code{fgpm} model e.g., to evaluate it using new
    data \code{sIn}, \code{fIn} and \code{sOut}.
}
