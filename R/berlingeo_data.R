#' Geometry Prognoseraum
#'
#' An `sf` object containing the geometry and other attributes
#'
#' @format A data frame with 60 rows and 7 variables:
#' \describe{
#'   \item{gml_id}{}
#'   \item{RAUMID}{}
#'   \item{PGRNAME}{}
#'   \item{BEZNAME}{}
#'   \item{DATUM}{}
#'   \item{SHAPE_AREA}{}
#'   \item{geometry}{}
#' }
#' @source \url{https://fbinter.stadt-berlin.de/fb/berlin/service_intern.jsp?id=s_lor_prog@senstadt&type=WFS}
"lor_pgr_sf"

#' Geometry Bezirksregion
#'
#' An `sf` object containing the geometry and other attributes
#'
#' @format A data frame with 130 rows and 8 variables:
#' \describe{
#' \item{gml_id}{}
#' \item{RAUMID}{}
#' \item{BEZIRKSREGION}{}
#' \item{PROGNOSERAUM}{}
#' \item{BEZIRK}{}
#' \item{DATUM_GUELTIG_AB}{}
#' \item{FLAECHENGROESSE_IN_M2}{}
#' \item{geometry}{}
#' }
#' @source \url{https://fbinter.stadt-berlin.de/fb/berlin/service_intern.jsp?id=s_lor_bez@senstadt&type=WFS}
"lor_bzr_sf"

#' Geometry Planungsraum
#'
#' An `sf` object containing the geometry and other attributes
#'
#' @format A data frame with 447 rows and 9 variables:
#' \describe{
#'  \item{gml_id}{}
#'  \item{RAUMID}{}
#'  \item{PLANUNGSRAUM}{}
#'  \item{BEZIRKSREGION}{}
#'  \item{PROGNOSERAUM}{}
#'  \item{BEZIRK}{}
#'  \item{DATUM_GUELTIG_AB}{}
#'  \item{FLAECHENGROESSE_IN_M2}{}
#'  \item{geometry}{}
#' }
#' @source \url{https://fbinter.stadt-berlin.de/fb/berlin/service_intern.jsp?id=s_lor_plan@senstadt&type=WFS}
"lor_plr_sf"
