#' Add gt style to table
#'
#' @param x A dataframe
#' @param table_title Title for gt Table
#'
#' @return Styled gt table
#' 
#' @export
#' 
#' @examples
#' survey_data %>% 
#'   tabyl(q1) %>% 
#'   table_style(., "Region")
#' 

table_style = function(x, table_title) {
  
  x %>% 
  gt::gt() %>% 
  gt::fmt_percent(columns = tidyselect::where(is.numeric) & !tidyselect::matches("N$"),
  decimals = 0) %>% 
  gt::cols_label(1 ~ "") %>% 
  gt::cols_align(align = "left",
  columns = 1) %>% 
  gt::tab_header(table_title) %>% 
  gt::tab_options(table.align = "left")
}