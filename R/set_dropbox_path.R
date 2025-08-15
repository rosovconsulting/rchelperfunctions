#' Set path to Dropbox folder to DROPBOX_PATH in .Renviron
#'
#' @export
#' 
set_dropbox_path <- function() {
  dropbox_folder <- function() {
    if (Sys.info()["sysname"] != "Windows") {
      warning("Currently, 'dropbox_folder' works for Windows only. Sorry.")
      return(NULL)
    }

    file_name <- list.files(
      path = file.path(Sys.getenv("APPDATA"), "Dropbox"),
      pattern = "info*.json",
      full.names = TRUE
    )
    if (length(file_name) == 0) {
      file_name <- list.files(
        path = file.path(Sys.getenv("LOCALAPPDATA"), "Dropbox"),
        pattern = "info*.json",
        full.names = TRUE
      )
    }

    if (length(file_name) == 0) {
      warning("No Dropbox info file found.")
      return(NULL)
    }

    file_content <- jsonlite::fromJSON(txt = file_name)$business
    paste0(file_content$root_path, "/")
    
  }

  dropbox_path <- dropbox_folder()

   if (!is.null(dropbox_path)) {
    # Path to .Renviron
    renviron_path <- file.path(Sys.getenv("HOME"), ".Renviron")
    
    # Read existing content (if any)
    if (file.exists(renviron_path)) {
      renv <- readLines(renviron_path)
      # Remove any old DROPBOX_PATH lines
      renv <- renv[!grepl("^DROPBOX_PATH\\s*=\\s*", renv)]
    } else {
      renv <- character()
    }
    
    # Add the new line
    renv <- c(renv, paste0("DROPBOX_PATH = '", dropbox_path, "'"))
    
    # Write back to file
    writeLines(renv, renviron_path)
    
    message("DROPBOX_PATH permanently set in .Renviron: ", dropbox_path)
    message("Restart R or run `readRenviron('~/.Renviron')` to use it now.")
  }
}