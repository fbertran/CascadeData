\name{micro_US}
\alias{micro_US}
\docType{data}
\title{
Unstimulated control dataset
}
\description{
This is the unstimulated data part of the GSE39411 dataset, \url{https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE39411}. Data were normalized and are ready to use.
}
\usage{data(micro_US)}
\format{A data frame with 54613 probesets measured 6 times throught 4 time points.
}
\details{
5 leukemic CLL B-lymphocyte of aggressive form were stimulated in vitro with an anti-IgM antibody, activating the B-cell receptor (BCR). We analyzed the gene expression at 4 time points (60, 90, 210 and 390 minutes). Each gene expression measurement is performed both in stimulated cells and in control unstimulated cells. This is the unstimulated cells dataset.


Data were collected on HG-U133_Plus_2, Affymetrix Human Genome U133 Plus 2.0 Array.
}

\references{
Vallat, L., Kemper, C. A., Jung, N., Maumy-Bertrand, M., Bertrand, F., \dots, Bahram, S. (2013). Reverse-engineering the genetic circuitry of a cancer cell with predicted intervention in chronic lymphocytic leukemia. Proceedings of the National Academy of Sciences, 110(2), 459-464, \url{https://dx.doi.org/10.1073/pnas.1211130110}.}

\examples{
data(micro_US)
}
\keyword{datasets}
