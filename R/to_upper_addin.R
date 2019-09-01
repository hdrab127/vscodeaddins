#' Transform selected text to uppercase
#'
#' \code{to_upper_addin} uses the rstudioapi to get the selected text
#' then replace it with the uppercase version
#'
#' @importFrom rstudioapi getActiveDocumentContext insertText
#' @export
to_upper_addin <- function() {
  ctx <- rstudioapi::getActiveDocumentContext()
  STR <- toupper(ctx$selection[[1]]$text)
  # ctx$contents
  rstudioapi::insertText(location = ctx$selection[[1]]$range,
                         text = STR)
}
