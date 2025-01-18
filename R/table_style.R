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