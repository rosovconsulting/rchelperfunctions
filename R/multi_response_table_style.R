#' Function for styling Multiple-response question frequency table in RC branding 
#'
#' @param x result of multi_response_table
#'
#' @return Styled multi-response dataframe
#' @export
#' 
#' @examples
#' multi_response_table(data = survey_data, mdset_t("q1_2_{1:11}")) %>% 
#' multi_response_table_style()
#' 
#' 
multi_response_table_style = function(x) {
  x %>% 
    gt::gt() %>% 
    gt::sub_missing(columns = contains("percent of cases"),
                  missing_text = "-") %>% 
    gt::fmt_percent(columns = contains("percent of cases"),
                      decimals = 0) %>%
    gt::cols_label(q = "") %>% 
    gt::tab_style(style = list(cell_text(color = "white",
                                       weight = "bold"),
                                       gt::cell_fill(color = "#5C068C")),
                locations = cells_title("title")) %>% 
    gt::tab_style(style = gt::cell_borders(sides = c("top"),
                                     weight = px(2),
                                     style = "solid",
                                     color = "#D3D3D3"),
                  locations = gt::cells_body(columns = tidyselect::everything(),
                                             rows = tidyselect::last_col())) %>% 
    gt::opt_table_lines() %>% 
    gt::tab_options(table.align = "left",
                  data_row.padding = px(5)
                  )
  }
  
