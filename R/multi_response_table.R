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
#' \dontrun{multi_response_table(data = survey_data, mdset_t("q1_2_{1:11}")) %>%
#'   multi_response_table_style()}
#'
#'
multi_response_table = function(data, ..., cross = NULL) {
  if (missing(cross)) {
    x <- data %>%
      expss::tab_cells(...) %>%
      expss::tab_stat_cases(label = "n", total_row_position = "below") %>% # Adds n columns
      expss::tab_stat_cpct(
        label = "percent of cases",
        total_row_position = "none"
      ) %>% # adds percent of cases column
      expss::tab_pivot(stat_position = "inside_columns") %>%
      expss::tab_sort_desc(excluded_rows = c("Other", "#", ":", "None of the above", "Prefer not to answer")) %>% # sort without including rows with #, a colon, and Other
      expss::split_table_to_df(remove_repeated = FALSE)
  } else {
    x <- eval(substitute({
      data %>%
        expss::tab_cells(...) %>%
        expss::tab_cols(cross) %>%
        expss::tab_stat_cases(label = "n", total_row_position = "below") %>% # Adds n columns
        expss::tab_stat_cpct(
          label = "percent of cases",
          total_row_position = "none"
        ) %>% # adds percent of cases column
        expss::tab_pivot(stat_position = "inside_columns") %>%
        expss::tab_sort_desc(excluded_rows = c("Other", "#", ":", "None of the above", "Prefer not to answer")) %>% # sort without including rows with #, a colon, and Other
        expss::split_table_to_df(remove_repeated = FALSE)
    }))
  }

  if (!missing(cross)) {
    x <- x %>%
      stats::setNames(paste(x[2, ], x[3, ], sep = "_")) %>%
      dplyr::rename("q" = 1) %>%
      filter(q != "")
  } else {
    x <- x %>%
      janitor::row_to_names(
        row_number = 2,
        remove_row = TRUE,
        remove_rows_above = TRUE
      ) %>%
      dplyr::rename("q" = 1)
  }

  x %>%
    dplyr::mutate(across(
      tidyselect::matches("percent of cases"),
      ~ as.numeric(.x)
    )) %>%
    dplyr::mutate(across(
      tidyselect::matches("percent of cases"),
      ~ .x / 100
    )) %>%
    dplyr::filter(!grepl('- Text', q)) %>% #Remove row for Other - Text
    dplyr::mutate(q = str_replace_all(q, stringr::fixed("#"), "")) # remove # from Total row
}
