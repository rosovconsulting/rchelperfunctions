likert_tidy_table = function(question){
  
  survey_data %>% 
    dplyr::select(!!dplyr::sym(question)) %>%
    dplyr::mutate(dplyr::across(tidyselect::everything(), ~forcats::fct_rev(.x))) %>% 
    dplyr::count(!!dplyr::sym(question), .drop = FALSE) %>%
    dplyr::ungroup() %>% 
    tidyr::pivot_wider(names_from = !!dplyr::sym(question),
                values_from = "n",
    ) %>% 
      dplyr::mutate(Item = question,
           .before = 1)
}