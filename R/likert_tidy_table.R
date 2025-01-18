likert_tidy_table = function(question){
  
  survey_data %>% 
    select(!!sym(question)) %>%
    mutate(across(everything(), ~fct_rev(.x))) %>% 
    count(!!sym(question), .drop = FALSE) %>%
    ungroup() %>% 
    pivot_wider(names_from = !!sym(question),
                values_from = "n",
    ) %>% 
    mutate(Item = question,
           .before = 1)
}