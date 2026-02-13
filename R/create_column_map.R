#' Create a column map for use as a codebook. Functions like `likert_table_style` use a column map to add variable labels to a table.
#'
#' @param data A data frame with variable labels
#'
#' @return A dataframe with question numbers and labels. Columns in the output data frame are:
#'  \describe{
#'    \item{Item}{variable name}
#'    \item{Label}{variable label}
#'    }
#' @export
#'
#' @examples
#' \dontrun{col_map <- create_column_map(survey_data)}
#'

create_column_map = function(data) {
  labelled::var_label(data, null_action = "fill") |>
    tibble::as_tibble() |>
    tidyr::pivot_longer(
      cols = tidyselect::everything(),
      names_to = "Item",
      values_to = "Label"
    ) |>
    dplyr::mutate(Label = gsub(pattern = '.*. - ', "", Label))
}
