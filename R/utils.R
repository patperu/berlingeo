#' Title
#'
#' @param x The name of the WKS dataset
#'
#' @return A sf object
#' @export
#'
#'
sf_fisbroker <- function(x) {

  url <- get_url(x)
  print(url)
  s <- sf::read_sf(url)
  sf::st_crs(s) <- 25833
  s <- sf::st_transform(s, 4326)
  s <- get_X_Y_coordinates(s)
  s

}

get_url <- function(x) {

  u_data <- glue::glue("http://fbinter.stadt-berlin.de/fb/wfs/data/senstadt/{x}")
  u_geom <- glue::glue("http://fbinter.stadt-berlin.de/fb/wfs/geometry/senstadt/{x}")

  query <- glue::glue("?service=wfs&version=2.0.0&request=GetFeature&TYPENAMES={x}")

  url_data <- paste0(u_data, query)
  url_geom <- paste0(u_geom, query)

  if(!httr::http_error(url_data)) {
    url_data
  } else {
    url_geom
  }

}

get_X_Y_coordinates <- function(s) {

  sftype <- unique(as.character(sf::st_geometry_type(s)))

  if(sftype == "POINT") {

    xy <- as.data.frame(sf::st_coordinates(s))
    dplyr::bind_cols(s, xy)

  } else {
    s
  }

}

