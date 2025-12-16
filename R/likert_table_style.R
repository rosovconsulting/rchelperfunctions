#' Add gt style to table
#'
#' @param x A dataframe
#' @param table_title Title for gt Table
#'
#' @return Styled gt table
#' @export
#'
likert_table_style = function(x, table_title) {
  x <- x |>
    dplyr::left_join(col_map) |>
    dplyr::select(-Item) |>
    dplyr::select(Label, tidyselect::everything()) |>
    dplyr::rename(Item = Label) |>
    dplyr::filter(dplyr::if_any(
      tidyselect::where(is.numeric) & !tidyselect::matches("^N$"),
      ~ .x != 0
    ))

  if ("Group" %in% colnames(x)) {
    x <- x |>
      gt::gt(rowname_col = "Group", groupname_col = "Item")
  } else {
    x <- x |>
      gt::gt(groupname_col = "Item")
  }
  x |>
    gt::fmt_percent(
      columns = tidyselect::where(is.numeric) & !tidyselect::matches("^N$"),
      decimals = 0
    ) |>
    gt::tab_header(table_title) |>
    gt::tab_style(
      style = list(
        gt::cell_text(color = "white", weight = "bold"),
        gt::cell_fill(color = "#5C068C")
      ),
      locations = gt::cells_title("title")
    ) |>
    gt::tab_options(table.align = "left", row_group.as_column = TRUE) |>
    gt::opt_table_lines()
}
