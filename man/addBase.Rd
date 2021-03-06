% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/addBase.R
\name{addBase}
\alias{addBase}
\title{addBase()}
\usage{
addBase(myGIO, base, data = NULL, mapping = NULL, options = NULL)
}
\arguments{
\item{base}{a string indicating the base map to be used}

\item{data}{is a dataframe to be mapped tot he base layer}

\item{mapping}{is a list object mapping the data to the map features; requires a data key and map key}

\item{options}{is a vector of objects to set and assign layer behaviors}

\item{myGIo}{the widget object}
}
\value{
myGIO object with base layer attached
}
\description{
Adds the base layer map
}
