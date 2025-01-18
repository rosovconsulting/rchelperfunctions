likert_table = function(x, include_ns = TRUE, cross = NULL) {
  
  ## x should already be a data frame with only the variables you want in this function call
  likert_list <- as.data.frame(x)
  
  ## If cross argument is missing then call regular likert() function. If there is a value for the cross argument then call a grouped likert() function 
  if(missing(cross)) {
    likert_list <- likert(likert_list)
  } else {
    cross_var <- deparse(substitute(cross)) ## this something about quoting and evaluation but it makes it work in the purrr style functions
    likert_list <- likert(likert_list[,-c(1), drop = FALSE], grouping = likert_list[[cross_var]])
  }
  
  ## unlist the likert() results to the function environment
  invisible(list2env(likert_list, envir = environment()))
  
  ## if include_ns argument is set to true then create valid_n df with the Ns
  if(include_ns == TRUE) {
    valid_n <- items %>% 
      summarise(across(everything(), ~sum(!is.na(.x)))) %>% 
      pivot_longer(cols = everything(),
                   names_to = "Item",
                   values_to = "N")
  }
  
  ## if include_ns argument is set to true and there is a value for the cross argument then create valid_n df with the Ns grouped by the cross variable
  if(include_ns == TRUE & !missing(cross)) {
    valid_n <- x %>% 
      group_by({{ cross }}) %>% 
      summarise(across(everything(), ~sum(!is.na(.x)))) %>% 
      pivot_longer(cols = -1,
                   names_to = "Item",
                   values_to = "N")
  }
  
  ## if include_ns argument is set to true and there is no value for the cross argument then divide all by 100 to get percents as decimals and join with the valid_n data frame to add the ns
  if(include_ns == TRUE & missing(cross)) {
    final_table <- results %>% 
      mutate(across(where(is.numeric), ~.x/100)) %>% 
      full_join(., valid_n, by = join_by(Item))
  }
  
  ## if include_ns argument is set to true and there is a value for the cross argument then divide all by 100 to get percents as decimals and join with the valid_n data frame by Item and Group to add the ns 
  if(include_ns == TRUE & !missing(cross)) {
    final_table <- results %>% 
      mutate(across(where(is.numeric), ~.x/100)) %>% 
      full_join(., valid_n, by = join_by(Item == Item, Group == {{ cross }}))
  }
  
  ## if include_ns argument is set to false then divide all by 100 to get percents as decimals
  if(include_ns == FALSE) {
    final_table <- results %>% 
      mutate(across(where(is.numeric), ~.x/100)) 
  }
  
  return(final_table)
  
  
}