#' Create table from likert function
#' 
#' @description
#' `likert_table` creates a dataframe with proportions and total n's for likert matrix questions
#'
#' `likert_table_style` creates a GT styled likert table from the output of `likert_table`
#'
#' @param x A dataframe with only the variables you want in this function call.
#' @param include_ns Should the table include N's.
#' @param cross What variable to cross table with.
#'
#' @return Likert result dataframe
#' @export
#' 
#' @examples
#' # a simple likert table
#' rchabits |>
#'    dplyr::select(tidyselect::starts_with("q3_")) |>
#'    likert_table()
#'
#' # a likert table with a cross variable
#' \dontrun{rchabits |>
#'     dplyr::select(q1, tidyselect::starts_with("q3_")) |>
#'     likert_table(cross = q1) |>
#'     likert_table_style("Title")}
#'
#'
likert_table = function(x, include_ns = TRUE, cross = NULL) {
  
  ## x should already be a data frame with only the variables you want in this function call
  likert_list <- as.data.frame(x)
  
  ## If cross argument is missing then call regular likert() function. If there is a value for the cross argument then call a grouped likert() function 
  if(missing(cross)) {
    likert_list <- likert::likert(likert_list)
  } else {
    cross_var <- deparse(substitute(cross)) ## this something about quoting and evaluation but it makes it work in the purrr style functions
    likert_list <- likert::likert(likert_list[,-c(1), drop = FALSE], grouping = likert_list[[cross_var]])
  }
  
  ## unlist the likert() results to the function environment
  invisible(list2env(likert_list, envir = environment()))
  
  ## if include_ns argument is set to true then create valid_n df with the Ns
  if(include_ns == TRUE) {
    valid_n <- items |> 
      dplyr::summarise(dplyr::across(tidyselect::everything(), ~sum(!is.na(.x)))) |> 
      tidyr::pivot_longer(cols = tidyselect::everything(),
                   names_to = "Item",
                   values_to = "N")
  }
  
  ## if include_ns argument is set to true and there is a value for the cross argument then create valid_n df with the Ns grouped by the cross variable
  if(include_ns == TRUE & !missing(cross)) {
    valid_n <- x |> 
      dplyr::group_by({{ cross }}) |> 
        dplyr::summarise(dplyr::across(tidyselect::everything(), ~sum(!is.na(.x)))) |> 
      tidyr::pivot_longer(cols = -1,
                   names_to = "Item",
                   values_to = "N")
  }
  
  ## if include_ns argument is set to true and there is no value for the cross argument then divide all by 100 to get percents as decimals and join with the valid_n data frame to add the ns
  if(include_ns == TRUE & missing(cross)) {
    final_table <- results |> 
      dplyr::mutate(dplyr::across(tidyselect::where(is.numeric), ~.x/100)) |> 
      dplyr::full_join(valid_n, by = dplyr::join_by(Item))
  }
  
  ## if include_ns argument is set to true and there is a value for the cross argument then divide all by 100 to get percents as decimals and join with the valid_n data frame by Item and Group to add the ns 
  if(include_ns == TRUE & !missing(cross)) {
    final_table <- results |> 
      dplyr::mutate(dplyr::across(tidyselect::where(is.numeric), ~.x/100)) |> 
        dplyr::full_join(valid_n, by = dplyr::join_by(Item == Item, Group == {{ cross }}))
  }
  
  ## if include_ns argument is set to false then divide all by 100 to get percents as decimals
  if(include_ns == FALSE) {
    final_table <- results |> 
      dplyr::mutate(dplyr::across(tidyselect::where(is.numeric), ~.x/100)) 
  }
  
  return(final_table)
  
  
}
