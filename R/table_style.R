table_style = function(x, table_title) {
  
  x %>% 
    gt::gt() %>% 
    fmt_percent(columns = where(is.numeric) & !matches("N$"),
                decimals = 0) %>% 
    cols_label(1 ~ "") %>% 
    cols_align(align = "left",
               columns = 1) %>% 
    tab_header(table_title) %>% 
    tab_options(table.align = "left")
}