\name{getScan-methods}
\docType{methods}
\alias{getScan}
\alias{getScan,xcmsRaw-method}
\alias{getMsnScan}
\alias{getMsnScan,xcmsRaw-method}
\title{Get m/z and intensity values for a single mass scan}
\description{
  Return the data from a single mass scan using the numeric index
  of the scan as a reference.
}
\section{Methods}{
\describe{
\item{object = "xcmsRaw"}{
  \code{getScan(object, scan, mzrange = numeric())}
  \code{getMsnScan(object, scan, mzrange = numeric())}
}
}}
\arguments{
  \item{object}{the \code{xcmsRaw} object}
  \item{scan}{
    integer index of scan. if negative, the index numbered from the
    end
  }
  \item{mzrange}{
    limit data points returned to those between in the range,
    \code{range(mzrange)}
  }
}
\value{
  A matrix with two columns:
  \item{mz}{m/z values}
  \item{intensity}{intensity values}
}
\seealso{
  \code{\link{xcmsRaw-class}},
  \code{\link{getSpec}}
}
\keyword{methods}
\keyword{manip}
