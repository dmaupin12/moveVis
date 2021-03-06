% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/add_timestamps.R
\name{add_timestamps}
\alias{add_timestamps}
\title{Add timestamps to frames}
\usage{
add_timestamps(frames, m, x = NULL, y = NULL, ..., verbose = TRUE)
}
\arguments{
\item{frames}{list of \code{ggplot2} objects, crated with \code{\link{frames_spatial}}.}

\item{m}{\code{move} or \code{moveStack} used to create \code{frames} with \code{\link{frames_spatial}} of uniform time scale and time lag, e.g. prepared with \code{\link{align_move}}.}

\item{x}{numeric, optioanl, position of timestamps on the x scale. By default, timestamps will be displayed in the top center.}

\item{y}{numeric, optioanl, position of timestamps on the y scale.}

\item{...}{optional, arguments passed to \code{\link{add_text}}, such as \code{colour}, \code{size}, \code{type}.}

\item{verbose}{logical, if \code{TRUE}, messages on the function's progress are displayed (default).}
}
\value{
List of frames.
}
\description{
This function adds timestamps to animation frames created with \code{\link{frames_spatial}}.
}
\examples{
library(moveVis)
library(move)

data("move_data", "basemap_data")
m <- align_move(move_data, res = 4, unit = "mins")

# create spatial frames using a custom NDVI base layer
r_list <- basemap_data[[1]]
r_times <- basemap_data[[2]]
frames <- frames_spatial(m, r_list = r_list, r_times = r_times, r_type = "gradient",
                         fade_raster = TRUE)

# add timestamps as text
frames.a <- add_timestamps(frames, m, type = "text")
frames.a[[100]]

\dontrun{
# or use the ggplot2 "label" type:
frames.b <- add_timestamps(frames, m, type = "label")
frames.b[[100]]
}

}
\seealso{
\code{\link{frames_spatial}} \code{\link{frames_graph}} \code{\link{animate_frames}}
}
\author{
Jakob Schwalb-Willmann
}
