#' Function for Multiple-response question frequency table
#'
#' @param data Survey data with multireponse split into multiple columns
#' @param cross column variable
#' @param ... expss selection
#'
#' @return Multi-response dataframe
#' @export
#'
#' @examples
#' multi_response_table(data = survey_data, mdset_t("q1_2_{1:11}")) %>% 
#' multi_response_table_style()
#' 
#' 
multi_response_table = function(data, ...) {
  data %>% 
    expss::tab_cells(...) %>%
    expss::tab_stat_cases(label = "n",
                   total_row_position = "below") %>% # Adds n columns
    expss::tab_stat_cpct(label = "percent of cases",
                  total_row_position = "none") %>% # adds percent of cases column
    expss::tab_pivot(stat_position = "inside_columns") %>% 
    expss::tab_sort_desc(excluded_rows = c("Other", "#")) %>% # sort without including rows with # and Other
    expss::split_table_to_df() %>% # transform to dataframe so you can use gt()
    janitor::row_to_names(row_number = 2, remove_row = TRUE, remove_rows_above = TRUE) %>% 
    dplyr::rename("q" = 1) %>% 
    dplyr::mutate(`percent of cases` = as.numeric(`percent of cases`)) %>% 
    dplyr::mutate(`percent of cases` = `percent of cases`/100) %>% 
    dplyr::filter(!grepl('- Text', q)) %>% #Remove row for Other - Text
    dplyr::mutate(q = str_replace_all(q, stringr::fixed("#"), "")) # remove # from Total row
}
