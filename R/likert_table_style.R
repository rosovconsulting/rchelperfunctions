#' Add gt style to table
#'
#' @param x A dataframe
#' @param table_title Title for gt Table
#'
#' @return Styled gt table
#' @export
#'
likert_table_style = function(x, table_title) {
  
  x |> 
    dplyr::left_join(., merged_col_map) |> 
      dplyr::select(-Item) |> 
        dplyr::select(Label, tidyselect::everything()) |> 
          dplyr::rename(Item = Label) |> 
            dplyr::filter(dplyr::if_any(tidyselect::where(is.numeric) & !tidyselect::matches("^N$"), ~.x != 0)) |> 
    # arrange(Group, desc(across(names(.)[3]))) |> ## this line sorts descending on third column, this syntax allows the name of the third column to differ
    # arrange(desc(.[[2]]), desc(.[[3]]))
    gt::gt(rowname_col = "Group",
           groupname_col = "Item") |> 
    gt::fmt_percent(columns = tidyselect::where(is.numeric) & !tidyselect::matches("^N$"),
                decimals = 0) |> 
                  gt::tab_header(table_title) |> 
    # data_color(columns = tidyselect::where(is.numeric) & !tidyselect::matches("N$"),
    #            rows = Group == "Supervisor",
    #            direction = "row",
    #            method = "numeric",
    #            palette = rc_green) |> 
    # data_color(columns = tidyselect::where(is.numeric) & !tidyselect::matches("N$"),
    #            rows = Group == "Early career professional",
    #            direction = "row",
    #            method = "numeric",
    #            palette = rc_purple) |> 
    gt::tab_options(table.align = "left",
                row_group.as_column = TRUE
    )
}
