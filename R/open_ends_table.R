open_ends_table = function(data, varname) {
  
  data %>% 
    filter(response_id != "R_1FE5Gk5OS5od4Zj") %>% 
    filter(response_id != "R_1jf6wct7rUym2aE") %>% 
    filter(response_id != "R_3ph78u473QJiZpF") %>% 
    filter(response_id != "R_2tcfHWORPspCmvg") %>% 
    tabyl({{varname}}) %>% 
    select(1) %>% 
    filter(str_length({{varname}}) >3) %>% 
    datatable(options = list(searching = TRUE, 
                             autoWidth = TRUE), 
              rownames = FALSE, 
              colnames = c(' ' = 1))
}