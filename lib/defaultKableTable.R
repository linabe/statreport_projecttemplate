mykable <- function(tab, ...) {
  knitr::kable(tab,
    booktabs = TRUE,
    linesep = "",
    row.names = FALSE,
    align = c(rep("l", ncol(tab))),
    ...
  ) %>%
    kable_styling(latex_options = c("striped", "hold_position", "repeat_header"), full_width = F)
}

## HTML option not used
# mykable <- function(tab) {
#   knitr::kable(tab,
#     booktabs = TRUE,
#     linesep = "",
#     row.names = FALSE,
#     align = c(rep("l", ncol(tab)))
#   ) %>%
#     kable_styling("striped", "hold_position", position = "left", full_width = F)
# }
