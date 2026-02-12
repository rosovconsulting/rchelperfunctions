#' @title Create a new report
#'
#' @description
#' Init a new directory for a report based on Rosov
#' Consulting Typst template defined here:
#' https://github.com/rosovconsulting/rosov-report-template
#'
#' @param dir Directory for the report
#' @param token A Github token with read access of the
#' github.com/rosovconsulting/rosov-report-template repository.
#' Default to the GIT_ROSOV environment variable.
#'
#' @examples
#' \dontrun{
#' new_report("example-report")
#' }
#'
#' @export
new_report <- function(dir, token = Sys.getenv("GIT_ROSOV")) {
    if (token == "") {
        stop(
            "Github token not found. You need to have a Github token with read content access of the github.com/rosovconsulting/rosov-report-template repository. Create a new one here: https://github.com/settings/tokens. It's recommended to set it as the GIT_ROSOV environment variable with usethis::edit_r_environ()."
        )
    }

    download_files <- function(path_in_repo, files, dest_dir) {
        req <- gh::gh(
            "GET /repos/{owner}/{repo}/contents/{path}",
            owner = "rosovconsulting",
            repo = "rosov-report-template",
            path = path_in_repo,
            .token = token
        )

        dir.create(dest_dir, showWarnings = FALSE, recursive = TRUE)

        for (file_name in files) {
            file_info <- Filter(function(x) x$name == file_name, req)
            if (length(file_info) == 1) {
                content <- gh::gh(
                    "GET /repos/{owner}/{repo}/contents/{path}",
                    owner = "rosovconsulting",
                    repo = "rosov-report-template",
                    path = file.path(path_in_repo, file_name),
                    .token = token
                )
                writeBin(
                    jsonlite::base64_dec(content$content),
                    file.path(dest_dir, file_name)
                )
                message("Saving: ", file.path(dest_dir, file_name))
            } else {
                warning("File not found in repo: ", file_name)
            }
        }
    }

    root_files <- c(
        "_brand.yaml",
        "template.qmd"
    )
    download_files("", root_files, dir)

    asset_files <- c(
        "RCAvatar.png",
        "RCLogo-Color.svg",
        "RCLogo-Color_LG.png",
        "RCLogo-Color_SM.png",
        "RCLogo-Grayscale_LG.png",
        "RCLogo-ReversedOut_LG.png",
        "bottom_line.svg",
        "top_line.svg"
    )
    download_files("logos", asset_files, file.path(dir, "logos"))

    extension_files <- c(
        "typst-template.typ",
        "typst-show.typ",
        "_extension.yml"
    )
    download_files(
        "_extensions/rosov",
        extension_files,
        file.path(dir, "_extensions/rosov")
    )

    file.edit(file.path(dir, "template.qmd"))
}
