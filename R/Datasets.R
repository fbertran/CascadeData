#' Stimulated dataset
#' 
#' This is the stimulated data part of the GSE39411 dataset,
#' \url{https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE39411}. Data were
#' normalized and are ready to use.
#' 
#' 5 leukemic CLL B-lymphocyte of aggressive form were stimulated in vitro with
#' an anti-IgM antibody, activating the B-cell receptor (BCR). We analyzed the
#' gene expression at 4 time points (60, 90, 210 and 390 minutes). Each gene
#' expression measurement is performed both in stimulated cells and in control
#' unstimulated cells. This is the stimulated cells dataset.
#' 
#' Data were collected on HG-U133_Plus_2, Affymetrix Human Genome U133 Plus 2.0
#' Array.
#'
#' @format A data frame with 54613 probesets measured 6 times throught 4 time
#' points. It features 54613 rows and 24 numeric columns.
#' Columns are named **exactly** as:
#' \code{N1_S_T60}, \code{N1_S_T90}, \code{N1_S_T210}, \code{N1_S_T390},
#' \code{N2_S_T60}, \code{N2_S_T90}, \code{N2_S_T210}, \code{N2_S_T390},
#' \code{N3_S_T60}, \code{N3_S_T90}, \code{N3_S_T210}, \code{N3_S_T390},
#' \code{N4_S_T60}, \code{N4_S_T90}, \code{N4_S_T210}, \code{N4_S_T390},
#' \code{N5_S_T60}, \code{N5_S_T90}, \code{N5_S_T210}, \code{N5_S_T390},
#' \code{N6_S_T60}, \code{N6_S_T90}, \code{N6_S_T210}, \code{N6_S_T390}.
#'
#' The ordering is strict: for each replicate \code{N1}, \code{N2}, \code{N3}, 
#' \code{N4} , \code{N5}, {\code{N6}} the time points are 
#' ordered \code{T60}, \code{T90}, \code{T210}, \code{T390}.
#'
#' @name micro_S
#' @aliases micro_S
#' @docType data
#' @references Vallat, L., Kemper, C. A., Jung, N., Maumy-Bertrand, M.,
#' Bertrand, F., \dots{}, Bahram, S. (2013). Reverse-engineering the genetic
#' circuitry of a cancer cell with predicted intervention in chronic
#' lymphocytic leukemia. Proceedings of the National Academy of Sciences,
#' 110(2), 459-464, \doi{10.1073/pnas.1211130110}.
#' @keywords datasets
#' @examples
#' 
#' data(micro_S)
#' 
NULL


#' Unstimulated control dataset
#' 
#' This is the unstimulated data part of the GSE39411 dataset,
#' \url{https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE39411}. Data were
#' normalized and are ready to use.
#' 
#' 5 leukemic CLL B-lymphocyte of aggressive form were stimulated in vitro with
#' an anti-IgM antibody, activating the B-cell receptor (BCR). We analyzed the
#' gene expression at 4 time points (60, 90, 210 and 390 minutes). Each gene
#' expression measurement is performed both in stimulated cells and in control
#' unstimulated cells. This is the unstimulated cells dataset.
#' 
#' Data were collected on HG-U133_Plus_2, Affymetrix Human Genome U133 Plus 2.0
#' Array.
#' 
#' @format A data frame with 54613 probesets measured 6 times throught 4 time
#' points. It features 54613 rows and 24 numeric columns.
#' Columns are named **exactly** as:
#' \code{N1_US_T60}, \code{N1_US_T90}, \code{N1_US_T210}, \code{N1_US_T390},
#' \code{N2_US_T60}, \code{N2_US_T90}, \code{N2_US_T210}, \code{N2_US_T390},
#' \code{N3_US_T60}, \code{N3_US_T90}, \code{N3_US_T210}, \code{N3_US_T390},
#' \code{N4_US_T60}, \code{N4_US_T90}, \code{N4_US_T210}, \code{N4_US_T390},
#' \code{N5_US_T60}, \code{N5_US_T90}, \code{N5_US_T210}, \code{N5_US_T390},
#' \code{N6_US_T60}, \code{N6_US_T90}, \code{N6_US_T210}, \code{N6_US_T390}.
#'
#' The ordering is strict: for each replicate \code{N1}, \code{N2}, \code{N3}, 
#' \code{N4} , \code{N5}, {\code{N6}} the time points are 
#' ordered \code{T60}, \code{T90}, \code{T210}, \code{T390}.
#' 
#' @name micro_US
#' @aliases micro_US
#' @docType data
#' @format A data frame with 54613 probesets measured 6 times throught 4 time
#' points.
#' @references Vallat, L., Kemper, C. A., Jung, N., Maumy-Bertrand, M.,
#' Bertrand, F., \dots{}, Bahram, S. (2013). Reverse-engineering the genetic
#' circuitry of a cancer cell with predicted intervention in chronic
#' lymphocytic leukemia. Proceedings of the National Academy of Sciences,
#' 110(2), 459-464, \doi{10.1073/pnas.1211130110}.
#' @keywords datasets
#' @examples
#' 
#' data(micro_US)
#' 
NULL



