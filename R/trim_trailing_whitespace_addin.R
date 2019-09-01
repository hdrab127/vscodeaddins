#' Trim trailing whitespace
#'
#' \code{trim_trailing_whitespace_addin} uses the rstudioapi to get the selected text
#' then remove all trailing whitespace
#'
#' @importFrom rstudioapi getActiveDocumentContext insertText
#' @export
trim_trailing_whitespace_addin <- function() {
  ctx <- rstudioapi::getActiveDocumentContext()
  trimmed_text <- gsub('\\s*\n', '\n', ctx$selection[[1]]$text)
  rstudioapi::insertText(location = ctx$selection[[1]]$range,
                         text = trimmed_text)
}
