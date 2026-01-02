#' Create dataframe summary and view in browser
#'
#' @param data dataframe to summarize
#'
#' @returns Opens a browser window with the dataframe summary
#'
#' @export
view_summary <- function(data) {
  summarytools::view(
    summarytools::dfSummary(data),
    method = "browser",
    report.title = deparse(substitute(data))
  )
}
