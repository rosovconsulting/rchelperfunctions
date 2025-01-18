likert_tidy_table_style = function(x, table_title) {
  
  x %>% 
    list_rbind() %>% 
    select(-one_of("NA")) %>% 
    mutate(`N` = rowSums(pick(where(is.integer)))) %>% 
    mutate(across(where(is.integer), ~.x/N)) %>% 
    left_join(., merged_col_map) %>% 
    select(-Item) %>% 
    relocate(Label, .after = NULL) %>% 
    gt::gt() %>% 
    tab_header(table_title) %>% 
    fmt_percent(columns = where(is.numeric) & !matches("N$"),
                decimals = 0) %>% 
    cols_label(1 ~ "") %>% 
    sub_missing(missing_text = "-") %>% 
    tab_options(table.align = "left",
                row_group.as_column = TRUE
    )
}
