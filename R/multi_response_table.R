#' Function for multiple-response question frequency table
#'
#' @description
#' `multi_response_table` creates a dataframe with frequency and percent of cases for multiple-response questions
#'
#' `multi_response_table_style` creates a GT styled multi-response table from the output of `multi_response_table`
#'
#' @param data Survey data with multireponse split into multiple columns
#' @param cross column variable
#' @param ... selection of variable using expss selection helpers
#'
#' @return Multi-response dataframe
#' @export
#' @importFrom expss ..p mdset_p vars_list perl
#'
#' @examples
#' # a simple multi-response table
#' multi_response_table(rchabits, expss::mdset(expss::..p("q5_\\d"))) |>
#'     multi_response_table_style("Types of Cuisine")
#'
#' # a multi-response table with a cross variable
#' multi_response_table(rchabits, cross = q1, expss::mdset(expss::..p("q5_\\d"))) |>
#'     multi_response_table_style("Types of Cuisine X Age")
#'
#'
multi_response_table = function(data, ..., cross = NULL) {
  if (missing(cross)) {
    x <- data |>
      expss::tab_cells(...) |>
      expss::tab_stat_cases(label = "n", total_row_position = "below") |> # Adds n columns
      expss::tab_stat_cpct(
        label = "percent of cases",
        total_row_position = "none"
      ) |> # adds percent of cases column
      expss::tab_pivot(stat_position = "inside_columns") |>
      expss::tab_sort_desc(
        excluded_rows = c(
          "Other",
          "#",
          ":",
          "None of the above",
          "Prefer not to answer"
        )
      ) |> # sort without including rows with #, a colon, and Other
      expss::split_table_to_df(remove_repeated = FALSE)
  } else {
    x <- eval(substitute({
      data |>
        expss::tab_cells(...) |>
        expss::tab_cols(cross) |>
        expss::tab_stat_cases(label = "n", total_row_position = "below") |> # Adds n columns
        expss::tab_stat_cpct(
          label = "percent of cases",
          total_row_position = "none"
        ) |> # adds percent of cases column
        expss::tab_pivot(stat_position = "inside_columns") |>
        expss::tab_sort_desc(
          excluded_rows = c(
            "Other",
            "#",
            ":",
            "None of the above",
            "Prefer not to answer"
          )
        ) |> # sort without including rows with #, a colon, and Other
        expss::split_table_to_df(remove_repeated = FALSE)
    }))
  }

  if (!missing(cross)) {
    x <- x |>
      stats::setNames(paste(x[2, ], x[3, ], sep = "_")) |>
      dplyr::rename("q" = 1) |>
      dplyr::filter(nchar(as.character(q)) > 0)
  } else {
    x <- x |>
      janitor::row_to_names(
        row_number = 2,
        remove_row = TRUE,
        remove_rows_above = TRUE
      ) |>
      dplyr::rename("q" = 1)
  }

  x |>
    dplyr::mutate(dplyr::across(
      tidyselect::matches("percent of cases"),
      ~ as.numeric(.x)
    )) |>
    dplyr::mutate(dplyr::across(
      tidyselect::matches("percent of cases"),
      ~ .x / 100
    )) |>
    dplyr::filter(!grepl('- Text', q)) |> #Remove row for Other - Text
    dplyr::mutate(
      q = stringr::str_replace_all(q, stringr::fixed("#"), ""), # remove # from Total row
      q = stringr::str_remove_all(q, stringr::regex(".* Selected Choice ")), # remove question stem
      q = stringr::str_remove_all(
        q,
        stringr::regex(".*\\(Select all that apply\\) ")
      )
    ) # remove question stem
}
