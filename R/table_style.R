#' Add gt style to table
#'
#' @param x A dataframe
#' @param table_title Title for gt Table [SHOULD IDEALLY COME FROM DATA, NOT TEXT]
#' @param interactive Should the table be interactive
#'
#' @return Styled gt table
#' 
#' @export
#' 
#' @examples
#' survey_data |> 
#'   tabyl(q1) |> 
#'   table_style(., table_title = "Region")
#' 
#' survey_data |> 
#'   tabyl(q3_open_end) |> 
#'   table_style(., table_title = "Comments", interactive = TRUE)
#' 

table_style = function(x, table_title, interactive = FALSE) {
  
  table_output <- x |> 
  gt::gt() |> 
  gt::fmt_percent(columns = tidyselect::where(is.numeric) & !tidyselect::matches("^N$"),
  decimals = 0) |> 
  gt::cols_label(1 ~ "") |> 
  gt::cols_align(align = "left",
  columns = 1) |> 
  gt::tab_header(table_title) |> 
  gt::tab_style(style = list(gt::cell_text(color = "white",
                                       weight = "bold"),
                                       gt::cell_fill(color = "#5C068C")),
                locations = gt::cells_title("title")) |>
  gt::tab_options(table.align = "left",
                  data_row.padding = gt::px(5)) |>
  gt::opt_table_lines()
  
  if (interactive == TRUE) {
    table_output |>
      gt::opt_interactive(
            use_search = TRUE,
            use_highlight = TRUE,
            use_page_size_select = TRUE
            )
  } else {
    table_output
  }
}
