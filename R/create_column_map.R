#' Create column map
#'
#' @param data A data frame with variable labels
#' 
#' @return A dataframe
#' @export
#'
#' @examples
#' \dontrun{col_map <- create_column_map(survey_data)}
#'

create_column_map = function(data) {
  labelled::var_label(data) |>
    tibble::as_tibble() |>
    tidyr::pivot_longer(
      cols = tidyselect::everything(),
      names_to = "Item",
      values_to = "Label"
    ) |> 
    dplyr::mutate(Label = gsub(pattern = '.*. - ', "", Label))
}
