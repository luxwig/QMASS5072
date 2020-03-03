#' getOldestPlayer Function
#'
#' This function allows you to get the oldest player's name for a certain year. If multiple players share the same age, the one with
#' @param year The year of interest
#' @keywords oldest
#' @export
#' @examples
#' getOldestPlayer()


getOldestPlayer <- function(year) {
  require(tidyverse)

  result <- nba %>%
    filter(Year == year) %>%
    arrange(desc(Age), Player) %>%
    select(Player)
  as.character(result$Player[1])
}
