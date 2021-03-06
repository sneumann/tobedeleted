% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DataClasses.R, R/functions-ProcessHistory.R,
%   R/methods-MsFeatureData.R, R/methods-OnDiskMSnExp.R, R/methods-XCMSnExp.R
\docType{class}
\name{MsFeatureData-class}
\alias{MsFeatureData-class}
\alias{MsFeatureData}
\alias{XCMSnExp-class}
\alias{XCMSnExp}
\alias{processHistoryTypes}
\alias{show,MsFeatureData-method}
\alias{hasAdjustedRtime,MsFeatureData-method}
\alias{hasFeatures,MsFeatureData-method}
\alias{hasChromPeaks,MsFeatureData-method}
\alias{adjustedRtime,MsFeatureData-method}
\alias{adjustedRtime<-,MsFeatureData-method}
\alias{dropAdjustedRtime,MsFeatureData-method}
\alias{featureDefinitions,MsFeatureData-method}
\alias{featureDefinitions<-,MsFeatureData-method}
\alias{dropFeatureDefinitions,MsFeatureData-method}
\alias{chromPeaks,MsFeatureData-method}
\alias{chromPeaks<-,MsFeatureData-method}
\alias{dropChromPeaks,MsFeatureData-method}
\alias{profMat,OnDiskMSnExp-method}
\alias{show,XCMSnExp-method}
\alias{hasAdjustedRtime,XCMSnExp-method}
\alias{hasAdjustedRtime}
\alias{hasFeatures,XCMSnExp-method}
\alias{hasFeatures}
\alias{hasChromPeaks,XCMSnExp-method}
\alias{hasChromPeaks}
\alias{adjustedRtime,XCMSnExp-method}
\alias{adjustedRtime}
\alias{adjustedRtime<-,XCMSnExp-method}
\alias{adjustedRtime<-}
\alias{featureDefinitions,XCMSnExp-method}
\alias{featureDefinitions}
\alias{featureDefinitions<-,XCMSnExp-method}
\alias{featureDefinitions<-}
\alias{chromPeaks,XCMSnExp-method}
\alias{chromPeaks}
\alias{chromPeaks<-,XCMSnExp-method}
\alias{chromPeaks<-}
\alias{rtime,XCMSnExp-method}
\alias{mz,XCMSnExp-method}
\alias{intensity,XCMSnExp-method}
\alias{spectra,XCMSnExp-method}
\alias{processHistory,XCMSnExp-method}
\alias{processHistory}
\alias{dropChromPeaks,XCMSnExp-method}
\alias{dropChromPeaks}
\alias{dropFeatureDefinitions,XCMSnExp-method}
\alias{dropFeatureDefinitions}
\alias{dropAdjustedRtime,XCMSnExp-method}
\alias{dropAdjustedRtime}
\alias{XCMSnExp-class}
\alias{setAs}
\alias{profMat,XCMSnExp-method}
\alias{findChromPeaks,XCMSnExp,ANY-method}
\alias{dropFilledChromPeaks,XCMSnExp-method}
\alias{dropFilledChromPeaks}
\title{Data container storing xcms preprocessing results}
\usage{
processHistoryTypes()

\S4method{show}{MsFeatureData}(object)

\S4method{hasAdjustedRtime}{MsFeatureData}(object)

\S4method{hasFeatures}{MsFeatureData}(object)

\S4method{hasChromPeaks}{MsFeatureData}(object)

\S4method{adjustedRtime}{MsFeatureData}(object)

\S4method{adjustedRtime}{MsFeatureData}(object) <- value

\S4method{dropAdjustedRtime}{MsFeatureData}(object)

\S4method{featureDefinitions}{MsFeatureData}(object)

\S4method{featureDefinitions}{MsFeatureData}(object) <- value

\S4method{dropFeatureDefinitions}{MsFeatureData}(object)

\S4method{chromPeaks}{MsFeatureData}(object)

\S4method{chromPeaks}{MsFeatureData}(object) <- value

\S4method{dropChromPeaks}{MsFeatureData}(object)

\S4method{profMat}{OnDiskMSnExp}(object, method = "bin", step = 0.1,
  baselevel = NULL, basespace = NULL, mzrange. = NULL, fileIndex, ...)

\S4method{show}{XCMSnExp}(object)

\S4method{hasAdjustedRtime}{XCMSnExp}(object)

\S4method{hasFeatures}{XCMSnExp}(object)

\S4method{hasChromPeaks}{XCMSnExp}(object)

\S4method{adjustedRtime}{XCMSnExp}(object, bySample = FALSE)

\S4method{adjustedRtime}{XCMSnExp}(object) <- value

\S4method{featureDefinitions}{XCMSnExp}(object, mz = numeric(),
  rt = numeric(), ppm = 0, type = "any")

\S4method{featureDefinitions}{XCMSnExp}(object) <- value

\S4method{chromPeaks}{XCMSnExp}(object, bySample = FALSE, rt = numeric(),
  mz = numeric(), ppm = 0, type = "any")

\S4method{chromPeaks}{XCMSnExp}(object) <- value

\S4method{rtime}{XCMSnExp}(object, bySample = FALSE,
  adjusted = hasAdjustedRtime(object))

\S4method{mz}{XCMSnExp}(object, bySample = FALSE, BPPARAM = bpparam())

\S4method{intensity}{XCMSnExp}(object, bySample = FALSE,
  BPPARAM = bpparam())

\S4method{spectra}{XCMSnExp}(object, bySample = FALSE,
  adjusted = hasAdjustedRtime(object), BPPARAM = bpparam())

\S4method{processHistory}{XCMSnExp}(object, fileIndex, type)

\S4method{dropChromPeaks}{XCMSnExp}(object)

\S4method{dropFeatureDefinitions}{XCMSnExp}(object, keepAdjRtime = FALSE,
  dropLastN = -1)

\S4method{dropAdjustedRtime}{XCMSnExp}(object)

\S4method{profMat}{XCMSnExp}(object, method = "bin", step = 0.1,
  baselevel = NULL, basespace = NULL, mzrange. = NULL, fileIndex, ...)

\S4method{findChromPeaks}{XCMSnExp,ANY}(object, param, BPPARAM = bpparam(),
  return.type = "XCMSnExp")

\S4method{dropFilledChromPeaks}{XCMSnExp}(object)
}
\arguments{
\item{object}{For \code{adjustedRtime}, \code{featureDefinitions},
\code{chromPeaks}, \code{hasAdjustedRtime}, \code{hasFeatures} and
\code{hasChromPeaks} either a \code{MsFeatureData} or a \code{XCMSnExp}
object, for all other methods a \code{XCMSnExp} object.}

\item{value}{For \code{adjustedRtime<-}: a \code{list} (length equal to the
    number of samples) with numeric vectors representing the adjusted
    retention times per scan.

    For \code{featureDefinitions<-}: a \code{DataFrame} with peak
    grouping information. See return value for the \code{featureDefinitions}
    method for the expected format.

    For \code{chromPeaks<-}: a \code{matrix} with information on
    detected peaks. See return value for the \code{chromPeaks} method for the
    expected format.}

\item{method}{The profile matrix generation method. Allowed are \code{"bin"},
\code{"binlin"}, \code{"binlinbase"} and \code{"intlin"}. See details
section for more information.}

\item{step}{numeric(1) representing the m/z bin size.}

\item{baselevel}{numeric(1) representing the base value to which
empty elements (i.e. m/z bins without a measured intensity) should be
set. Only considered if \code{method = "binlinbase"}. See
\code{baseValue} parameter of \code{\link{imputeLinInterpol}} for more
details.}

\item{basespace}{numeric(1) representing the m/z length after
which the signal will drop to the base level. Linear interpolation will
be used between consecutive data points falling within
\code{2 * basespace} to each other. Only considered if
\code{method = "binlinbase"}. If not specified, it defaults to
\code{0.075}. Internally this parameter is translated into the
\code{distance} parameter of the \code{\link{imputeLinInterpol}}
function by \code{distance = floor(basespace / step)}. See
\code{distance} parameter of \code{\link{imputeLinInterpol}} for more
details.}

\item{mzrange.}{Optional numeric(2) manually specifying the mz value range to
be used for binnind. If not provided, the whole mz value range is used.}

\item{fileIndex}{For \code{processHistory}: optional \code{numeric}
specifying the index of the files/samples for which the
\code{\link{ProcessHistory}} objects should be retrieved.}

\item{...}{Additional parameters.}

\item{bySample}{logical(1) specifying whether results should be grouped by
sample.}

\item{mz}{optional \code{numeric(2)} defining the mz range for which
chromatographic peaks should be returned.}

\item{rt}{optional \code{numeric(2)} defining the retention time range for
which chromatographic peaks should be returned.}

\item{ppm}{optional \code{numeric(1)} specifying the ppm by which the
\code{mz} range should be extended. For a value of \code{ppm = 10}, all
peaks within \code{mz[1] - ppm / 1e6} and \code{mz[2] + ppm / 1e6} are
returned.}

\item{type}{For \code{processHistory}: restrict returned
\code{\link{ProcessHistory}} objects to analysis steps of a certain
type. Use the \code{processHistoryTypes} to list all supported values.
For \code{chromPeaks}: \code{character} specifying which peaks to return
if \code{rt} or \code{mz} are defined. For \code{type = "any"} all
chromatographic peaks that \emph{overlap} the range defined by the
\code{mz} or by the \code{rt}. For \code{type = "within"} only peaks
completely within the range(s) are returned.}

\item{adjusted}{logical(1) whether adjusted or raw (i.e. the original
retention times reported in the files) should be returned.}

\item{BPPARAM}{Parameter class for parallel processing. See
\code{\link[BiocParallel]{bpparam}}.}

\item{keepAdjRtime}{For \code{dropFeatureDefinitions,XCMSnExp}:
\code{logical(1)} defining whether eventually present retention time
adjustment should not be dropped. By default dropping feature definitions
drops retention time adjustment results too.}

\item{dropLastN}{For \code{dropFeatureDefinitions,XCMSnExp}:
\code{numeric(1)} defining the number of peak grouping related process
history steps to remove. By default \code{dropLastN = -1}, dropping the
chromatographic peaks removes all process history steps related to peak
grouping. Setting e.g. \code{dropLastN = 1} will only remove the most
recent peak grouping related process history step.}

\item{param}{A \code{\link{CentWaveParam}}, \code{\link{MatchedFilterParam}},
\code{\link{MassifquantParam}}, \code{\link{MSWParam}} or
\code{\link{CentWavePredIsoParam}} object with the settings for the
chromatographic peak detection algorithm.}

\item{return.type}{Character specifying what type of object the method should
return. Can be either \code{"XCMSnExp"} (default), \code{"list"} or
\code{"xcmsSet"}.}
}
\value{
For \code{profMat}: a \code{list} with a the profile matrix
    \code{matrix} (or matrices if \code{fileIndex} was not specified or if
    \code{length(fileIndex) > 1}). See \code{\link{profile-matrix}} for
    general help and information about the profile matrix.

For \code{adjustedRtime}: if \code{bySample = FALSE} a \code{numeric}
    vector with the adjusted retention for each spectrum of all files/samples
    within the object. If \code{bySample = TRUE } a \code{list} (length equal
    to the number of samples) with adjusted retention times grouped by
    sample. Returns \code{NULL} if no adjusted retention times are present.

For \code{featureDefinitions}: a \code{DataFrame} with peak grouping
    information, each row corresponding to one mz-rt feature (grouped peaks
    within and across samples) and columns \code{"mzmed"} (median mz value),
    \code{"mzmin"} (minimal mz value), \code{"mzmax"} (maximum mz value),
    \code{"rtmed"} (median retention time), \code{"rtmin"} (minimal retention
    time), \code{"rtmax"} (maximal retention time) and \code{"peakidx"}.
    Column \code{"peakidx"} contains a \code{list} with indices of
    chromatographic peaks (rows) in the matrix returned by the
    \code{chromPeaks} method that belong to that feature group. The method
    returns \code{NULL} if no feature definitions are present.

For \code{chromPeaks}: if \code{bySample = FALSE} a \code{matrix}
    with at least the following columns:
    \code{"mz"} (intensity-weighted mean of mz values of the peak across
    scans/retention times),
    \code{"mzmin"} (minimal mz value),
    \code{"mzmax"} (maximal mz value),
    \code{"rt"} (retention time for the peak apex),
    \code{"rtmin"} (minimal retention time),
    \code{"rtmax"} (maximal retention time),
    \code{"into"} (integrated, original, intensity of the peak),
    \code{"maxo"} (maximum intentity of the peak),
    \code{"sample"} (sample index in which the peak was identified) and
    \code{"is_filled"} defining whether the chromatographic peak was
    identified by the peak picking algorithm (\code{0}) or was added by the
    \code{fillChromPeaks} method (\code{1}).
    Depending on the employed peak detection algorithm and the
    \code{verboseColumns} parameter of it additional columns might be
    returned. For \code{bySample = TRUE} the chronatographic peaks are
    returned as a \code{list} of matrices, each containing the
    chromatographic peaks of a specific sample. For samples in which no
    peaks were detected a matrix with 0 rows is returned.

For \code{rtime}: if \code{bySample = FALSE} a numeric vector with
    the retention times of each scan, if \code{bySample = TRUE} a
    \code{list} of numeric vectors with the retention times per sample.

For \code{mz}: if \code{bySample = FALSE} a \code{list} with the mz
    values (numeric vectors) of each scan. If \code{bySample = TRUE} a
    \code{list} with the mz values per sample.

For \code{intensity}: if \code{bySample = FALSE} a \code{list} with
    the intensity values (numeric vectors) of each scan. If
    \code{bySample = TRUE} a \code{list} with the intensity values per
    sample.

For \code{spectra}: if \code{bySample = FALSE} a \code{list} with
    \code{\link[MSnbase]{Spectrum}} objects. If \code{bySample = TRUE} the
    result is grouped by sample, i.e. as a \code{list} of \code{lists}, each
    element in the \emph{outer} \code{list} being the \code{list} of spectra
    of the specific file.

For \code{processHistory}: a \code{list} of
    \code{\link{ProcessHistory}} objects providing the details of the
    individual data processing steps that have been performed.
}
\description{
The \code{MsFeatureData} class is designed to encapsule all
    data related to the preprocessing of metabolomics data using the
    \code{xcms} package, i.e. it contains a \code{matrix} with the
    chromatographic peaks identified by the peak detection, a
    \code{DataFrame} with the definition on grouped chromatographic peaks
    across samples and a \code{list} with the adjusted retention times per
    sample.

The \code{XCMSnExp} object is designed to contain all results
    from metabolomics data preprocessing (chromatographic peak detection,
    peak grouping (correspondence) and retention time correction). The
    corresponding elements in the \code{msFeatureData} slot are
    \code{"chromPeaks"} (a \code{matrix}), \code{"featureDefinitions"}
    (a \code{DataFrame}) and \code{"adjustedRtime"} (a \code{list} of
    numeric vectors). Note that these should not be accessed directly but
    rather \emph{via} their accessor methods.
    Along with the results, the object contains the processing history that
    allow to track each processing step along with the used settings. The
    object also directly extends the \code{\link[MSnbase]{OnDiskMSnExp}}
    object hence allowing easy access to the full data on which the peak
    detection was performed.

    Objects from this class should not be created directly, they are
    returned as result from the \code{\link{findChromPeaks}} method.

    \code{XCMSnExp} objects can be coerced into \code{\linkS4class{xcmsSet}}
    objects using the \code{as} method.

\code{processHistoryTypes} returns the available \emph{types} of
process histories. These can be passed with argument \code{type} to the
\code{processHistory} method to extract specific process step(s).

\code{profMat}: creates a \emph{profile matrix}, which
    is a n x m matrix, n (rows) representing equally spaced m/z values (bins)
    and m (columns) the retention time of the corresponding scans. Each cell
    contains the maximum intensity measured for the specific scan and m/z
    values. See \code{\link{profMat}} for more details and description of
    the various binning methods.

\code{hasAdjustedRtime}: whether the object provides adjusted
    retention times.

\code{hasFeatures}: whether the object contains correspondence
    results (i.e. features).

\code{hasChromPeaks}: whether the object contains peak
    detection results.

\code{adjustedRtime},\code{adjustedRtime<-}:
    extract/set adjusted retention times. \code{adjustedRtime<-} should not
    be called manually, it is called internally by the
    \code{\link{adjustRtime}} methods. For \code{XCMSnExp} objects,
    \code{adjustedRtime<-} does also apply the retention time adjustment to
    the chromatographic peaks in the object. The \code{bySample} parameter
    allows to specify whether the adjusted retention time should be grouped
    by sample (file).

\code{featureDefinitions}, \code{featureDefinitions<-}: extract
    or set the correspondence results, i.e. the mz-rt features (peak groups).
    Similar to the \code{chromPeaks} it is possible to extract features for
    specified m/z and/or rt ranges (see \code{chromPeaks} for more details).

\code{chromPeaks}, \code{chromPeaks<-}: extract or set
    the matrix containing the information on identified chromatographic
    peaks. Parameter \code{bySample} allows to specify whether peaks should
    be returned ungrouped (default \code{bySample = FALSE}) or grouped by
    sample (\code{bySample = TRUE}). The \code{chromPeaks<-} method for
    \code{XCMSnExp} objects removes also all correspondence (peak grouping)
    and retention time correction (alignment) results. The optional
    arguments \code{rt}, \code{mz} and \code{ppm} allow to extract only
    chromatographic peaks overlapping (if \code{type = "any"}) or completely
    within (if \code{type = "within"}) the defined retention time and mz
    ranges.
    See description of the return value for details on the returned matrix.
    Users usually don't have to use the \code{chromPeaks<-} method directly
    as detected chromatographic peaks are added to the object by the
    \code{\link{findChromPeaks}} method.

\code{rtime}: extracts the retention time for each
    scan. The \code{bySample} parameter allows to return the values grouped
    by sample/file and \code{adjusted} whether adjusted or raw retention
    times should be returned. By default the method returns adjusted
    retention times, if they are available (i.e. if retention times were
    adjusted using the \code{\link{adjustRtime}} method).

\code{mz}: extracts the mz values from each scan of
    all files within an \code{XCMSnExp} object. These values are extracted
    from the original data files and eventual processing steps are applied
    \emph{on the fly}. Using the \code{bySample} parameter it is possible to
    switch from the default grouping of mz values by spectrum/scan to a
    grouping by sample/file.

\code{intensity}: extracts the intensity values from
    each scan of all files within an \code{XCMSnExp} object. These values are
    extracted from the original data files and eventual processing steps are
    applied \emph{on the fly}. Using the \code{bySample} parameter it is
    possible to switch from the default grouping of intensity values by
    spectrum/scan to a grouping by sample/file.

\code{spectra}: extracts the
    \code{\link[MSnbase]{Spectrum}} objects containing all data from
    \code{object}. The values are extracted from the original data files and
    eventual processing steps are applied \emph{on the fly}. By setting
    \code{bySample = TRUE}, the spectra are returned grouped by sample/file.
    If the \code{XCMSnExp} object contains adjusted retention times, these
    are returned by default in the \code{Spectrum} objects (can be
    overwritten by setting \code{adjusted = FALSE}).

\code{processHistory}: returns a \code{list} with
    \code{\link{ProcessHistory}} objects (or objects inheriting from this
    base class) representing the individual processing steps that have been
    performed, eventually along with their settings (\code{Param} parameter
    class). Optional arguments \code{fileIndex} and \code{type} allow to
    restrict to process steps of a certain type or performed on a certain
    file.

\code{dropChromPeaks}: drops any identified chromatographic
    peaks and returns the object without that information. Note that for
    \code{XCMSnExp} objects the method drops all results from a
    correspondence (peak grouping) or alignment (retention time adjustment)
    too. For \code{XCMSnExp} objects the method drops also any related
    process history steps.

\code{dropFeatureDefinitions}: drops the results from a
    correspondence (peak grouping) analysis, i.e. the definition of the mz-rt
    features and returns the object without that information. Note that for
    \code{XCMSnExp} objects the method will also drop retention time
    adjustment results, if these were performed after the last peak grouping
    (i.e. which base on the results from the peak grouping that are going to
    be removed).
    For \code{XCMSnExp} objects also all related process history steps are
    removed. Also eventually filled in peaks (by \code{\link{fillChromPeaks}}
    ) will be removed too.

\code{dropAdjustedRtime}: drops any retention time
    adjustment information and returns the object without adjusted retention
    time. For \code{XCMSnExp} object this also reverts the retention times
    reported for the chromatographic peaks in the peak matrix to the
    original, raw, ones (after chromatographic peak detection). Note that
    for \code{XCMSnExp} objects the method drops also all peak grouping
    results if these were performed \emph{after} the retention time
    adjustment. For \code{XCMSnExp} objects the method drops also any
    related process history steps.

\code{dropFilledChromPeaks}: drops any filled-in chromatographic
    peaks (filled in by the \code{\link{fillChromPeaks}} method) and all
    related process history steps.
}
\section{Slots}{

\describe{
\item{\code{.processHistory}}{\code{list} with \code{XProcessHistory} objects
tracking all individual analysis steps that have been performed.}

\item{\code{msFeatureData}}{\code{MsFeatureData} class extending \code{environment}
and containing the results from a chromatographic peak detection (element
\code{"chromPeaks"}), peak grouping (element \code{"featureDefinitions"})
and retention time correction (element \code{"adjustedRtime"}) steps.}
}}

\note{
The \code{"chromPeaks"} element in the \code{msFeatureData} slot is
    equivalent to the \code{@peaks} slot of the \code{xcmsSet} object, the
    \code{"featureDefinitions"} contains information from the \code{@groups}
    and \code{@groupidx} slots from an \code{xcmsSet} object.
}
\examples{

## Loading the data from 2 files of the faahKO package.
library(faahKO)
od <- readMSData2(c(system.file("cdf/KO/ko15.CDF", package = "faahKO"),
                    system.file("cdf/KO/ko16.CDF", package = "faahKO")))
## Now we perform a chromatographic peak detection on this data set using the
## matched filter method. We are tuning the settings such that it performs
## faster.
mfp <- MatchedFilterParam(binSize = 6)
xod <- findChromPeaks(od, param = mfp)

## The results from the peak detection are now stored in the XCMSnExp
## object
xod

## The detected peaks can be accessed with the chromPeaks method.
head(chromPeaks(xod))

## The settings of the chromatographic peak detection can be accessed with
## the processHistory method
processHistory(xod)

## Also the parameter class for the peak detection can be accessed
processParam(processHistory(xod)[[1]])

## The XCMSnExp inherits all methods from the pSet and OnDiskMSnExp classes
## defined in Bioconductor's MSnbase package. To access the (raw) retention
## time for each spectrum we can use the rtime method. Setting bySample = TRUE
## would cause the retention times to be grouped by sample
head(rtime(xod))

## Similarly it is possible to extract the mz values or the intensity values
## using the mz and intensity method, respectively, also with the option to
## return the results grouped by sample instead of the default, which is
## grouped by spectrum. Finally, to extract all of the data we can use the
## spectra method which returns Spectrum objects containing all raw data.
## Note that all these methods read the information from the original input
## files and subsequently apply eventual data processing steps to them.
mzs <- mz(xod, bySample = TRUE)
length(mzs)
lengths(mzs)

## The full data could also be read using the spectra data, which returns
## a list of Spectrum object containing the mz, intensity and rt values.
## spctr <- spectra(xod)
## To get all spectra of the first file we can split them by file
## head(split(spctr, fromFile(xod))[[1]])

############
## Filtering
##
## XCMSnExp objects can be filtered by file, retention time, mz values or
## MS level. For some of these filter preprocessing results (mostly
## retention time correction and peak grouping results) will be dropped.
## Below we filter the XCMSnExp object by file to extract the results for
## only the second file.
xod_2 <- filterFile(xod, file = 2)
xod_2

## Now the objects contains only the idenfified peaks for the second file
head(chromPeaks(xod_2))

head(chromPeaks(xod)[chromPeaks(xod)[, "sample"] == 2, ])

##########
## Coercing to an xcmsSet object
##
## We can also coerce the XCMSnExp object into an xcmsSet object:
xs <- as(xod, "xcmsSet")
head(peaks(xs))
}
\seealso{
\code{\linkS4class{xcmsSet}} for the old implementation.
    \code{\link[MSnbase]{OnDiskMSnExp}}, \code{\link[MSnbase]{MSnExp}}
    and \code{\link[MSnbase]{pSet}} for a complete list of inherited methods.

    \code{\link{findChromPeaks}} for available peak detection methods
    returning a \code{XCMSnExp} object as a result.

    \code{\link{groupChromPeaks}} for available peak grouping
    methods and \code{\link{featureDefinitions}} for the method to extract
    the feature definitions representing the peak grouping results.
    \code{\link{adjustRtime}} for retention time adjustment methods.

    \code{\link[MSnbase]{chromatogram}} to extract MS data as
    \code{\link[MSnbase]{Chromatogram}} objects.

    \code{\link{extractMsData}} for the method to extract MS data as
    \code{data.frame}s.

\code{\link{fillChromPeaks}} for the method to fill-in eventually
    missing chromatographic peaks for a feature in some samples.
}
\author{
Johannes Rainer
}
