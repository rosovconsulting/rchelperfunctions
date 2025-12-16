#' Function for multiple-response question frequency table
#'
#' @param x result of multi_response_table
#' @param table_title The text for the title of the table
#'
#' @return Styled multi-response dataframe
#' @export
#' 
#' @rdname multi_response_table
multi_response_table_style = function(x, table_title) {
  x |> 
    gt::gt() |> 
    gt::sub_missing(columns = tidyselect::contains("percent of cases"),
                  missing_text = "-") |> 
    gt::fmt_percent(columns = tidyselect::contains("percent of cases"),
                      decimals = 0) |>
    gt::cols_label(q = "") |> 
    gt::tab_header(table_title) |>
    gt::tab_style(style = list(gt::cell_text(color = "white",
                                       weight = "bold"),
                                       gt::cell_fill(color = "#5C068C")),
                locations = gt::cells_title("title")) |> 
    gt::tab_style(style = gt::cell_borders(sides = c("top"),
                                     weight = gt::px(2),
                                     style = "solid",
                                     color = "#D3D3D3"),
                  locations = gt::cells_body(columns = tidyselect::everything(),
                                             rows = tidyselect::last_col())) |> 
    gt::opt_table_lines() |> 
    gt::tab_options(table.align = "left",
                  data_row.padding = gt::px(5)
                  )
  }
  
