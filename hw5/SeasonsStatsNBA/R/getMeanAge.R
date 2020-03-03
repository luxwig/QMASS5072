#' getMeanAge Function
#'
#' This function allows you to get stastical mean for the players' age for a certain year.
#' @param year The year of interest
#' @keywords age
#' @export
#' @examples
#' getMeanAge()


getMeanAge <- function(year) {
  require(tidyverse)

  d <- nba %>%
    filter(Year == year) %>%
    select(Age)
  colMeans(d)
}
