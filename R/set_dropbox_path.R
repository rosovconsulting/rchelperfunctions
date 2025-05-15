set_dropbox_path <- function() {
  dropbox_folder <- function() {
    if (Sys.info()["sysname"] != "Windows") {
      warning("Currently, 'dropbox_folder' works for Windows only. Sorry.")
      return(NULL)
    }
    
    file_name <- list.files(
      path = paste(Sys.getenv(x = "APPDATA"), "Dropbox", sep = "/"),
      pattern = "info*.json",
      full.names = TRUE
    )
    if (length(file_name) == 0) {
      file_name <- list.files(
        path = paste(Sys.getenv(x = "LOCALAPPDATA"), "Dropbox", sep = "/"),
        pattern = "info*.json",
        full.names = TRUE
      )
    }
    
    if (length(file_name) == 0) {
      warning("No Dropbox info file found.")
      return(NULL)
    }
    
    file_content <- jsonlite::fromJSON(txt = file_name)$business
    path <- paste0(file_content$root_path, "/")
    path
  }
  
  dropbox_path <- dropbox_folder()
  if (!is.null(dropbox_path)) {
    Sys.setenv(DROPBOX_PATH = dropbox_path)
    message(paste("DROPBOX_PATH successfully set: ", dropbox_path))
  }
}