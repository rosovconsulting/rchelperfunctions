#' Create styled gt likert table
#'
#' @param x A dataframe
#' @param table_title Title for gt Table
#'
#' @return Styled gt table
#' @export
#' 
likert_tidy_table_style = function(x, table_title) {
  
  x %>% 
  purrr::list_rbind() %>% 
  dplyr::select(-tidyselect::one_of("NA")) %>% 
  dplyr::mutate(`N` = rowSums(dplyr::pick(tidyselect::where(is.integer)))) %>% 
  dplyr::mutate(dplyr::across(tidyselect::where(is.integer), ~.x/N)) %>% 
  dplyr::left_join(., merged_col_map) %>% 
  dplyr::select(-Item) %>% 
  dplyr::relocate(Label, .after = NULL) %>% 
  gt::gt() %>% 
  gt::tab_header(table_title) %>% 
  gt::fmt_percent(columns = tidyselect::where(is.numeric) & !tidyselect::matches("N$", ignore.case = FALSE), decimals = 0) %>% 
  gt::cols_label(1 ~ "") %>% 
  gt::sub_missing(missing_text = "-") %>% 
  gt::tab_options(table.align = "left",
  row_group.as_column = TRUE
)
}
