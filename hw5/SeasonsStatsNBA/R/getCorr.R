#' getCorr Function
#'
#' This function allows you to get the correlation matrix for all numeric variables for a certain year.
#' @param year The year of interest
#' @keywords correlation
#' @export
#' @examples
#' getCorr()


getCorr <- function(year) {
  require(tidyverse)
  require(corrplot)
  data <- filter(nba, Year == year) %>%
    keep(is.numeric)
  corrplot(corr = cor(data), method="color")
}
