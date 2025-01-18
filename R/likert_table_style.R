likert_table_style = function(x, table_title) {
  
  x %>% 
    left_join(., merged_col_map) %>% 
    select(-Item) %>% 
    select(Label, everything()) %>% 
    rename(Item = Label) %>% 
    filter(if_any(where(is.numeric) & !matches("N$"), ~.x != 0)) %>% 
    # arrange(Group, desc(across(names(.)[3]))) %>% ## this line sorts descending on third column, this syntax allows the name of the third column to differ
    # arrange(desc(.[[2]]), desc(.[[3]]))
    gt::gt(rowname_col = "Group",
           groupname_col = "Item") %>% 
    fmt_percent(columns = where(is.numeric) & !matches("N$"),
                decimals = 0) %>% 
    tab_header(table_title) %>% 
    # data_color(columns = where(is.numeric) & !matches("N$"),
    #            rows = Group == "Supervisor",
    #            direction = "row",
    #            method = "numeric",
    #            palette = rc_green) %>% 
    # data_color(columns = where(is.numeric) & !matches("N$"),
    #            rows = Group == "Early career professional",
    #            direction = "row",
    #            method = "numeric",
    #            palette = rc_purple) %>% 
    tab_options(table.align = "left",
                row_group.as_column = TRUE
    )
}