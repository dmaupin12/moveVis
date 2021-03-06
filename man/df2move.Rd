% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/df2move.R
\name{df2move}
\alias{df2move}
\title{Convert a data.frame into a move or moveStack object}
\usage{
df2move(df, proj, x, y, time, track_id = NULL, data = NULL, ...)
}
\arguments{
\item{df}{data.frame, a data.frame with rows representing observations and columns representing x and y coordinates, time and optionally track IDs, if multiple tracks are contained.}

\item{proj}{projection, character (proj4string) or CRS object, indicating the projection that the coordinates of \code{df} represent.}

\item{x}{character, name of the column in \code{df} that represents x coordinates.}

\item{y}{character, name of the column in \code{df} that represents y coordinates.}

\item{time}{character, name of the column in \code{df} that represents timestamps.}

\item{track_id}{character, optional, name of the column in \code{df} that represents track names or IDs. If set, a \code{moveStack} is returned, otherwise, a \code{move} object is returned.}

\item{data}{data.frame, optional, to add additional data such as path colours (see \code{\link{move}}). Number of rows must equal number of rows of \code{df}.}

\item{...}{additional arguments passed to \code{move}.}
}
\value{
A \code{move} or \code{moveStack} object.
}
\description{
This function is a simple wrapper that converts a \code{data.frame} into a \code{move} or \code{moveStack} object. Both can be used as inputs to \code{\link{frames_spatial}} or \code{\link{frames_graph}}.
}
\examples{
library(moveVis)
library(move)

# load the example data and convert them into a data.frame
data("move_data")
move_df <- methods::as(move_data, "data.frame")

# use df2move to convert the data.frame into a moveStack
df2move(move_df,
        proj = "+init=epsg:4326 +proj=longlat +datum=WGS84 +no_defs +ellps=WGS84 +towgs84=0,0,0", 
        x = "coords.x1", y = "coords.x2", time = "timestamps", track_id = "trackId")
}
\seealso{
\code{\link{frames_spatial}} \code{\link{frames_graph}} \code{\link{subset_move}}
}
