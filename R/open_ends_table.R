#' Create searchable, paginated table of open-ended responses
#'
#' @param data dataframe
#' @param varname column name
#' 
#' @return searchable, paginated datatable of open-ended responses
#' @export 
#' 
open_ends_table = function(data, varname) {
  
  data |> 
    janitor::tabyl({{varname}}) |> 
    dplyr::select(1) |> 
    dplyr::filter(stringr::str_length({{varname}}) >3) |> 
    DT::datatable(options = list(searching = TRUE, 
                             autoWidth = TRUE), 
              rownames = FALSE, 
              colnames = c(' ' = 1))
}