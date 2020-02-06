mykable <- function(tab, fontsize = NULL, rownames = FALSE, ...) {
  knitr::kable(tab,
               booktabs = TRUE,
               linesep = "",
               row.names = rownames,
               align = c(rep("l", ncol(tab))),
               ...
  ) %>%
    kable_styling(latex_options = c("striped", "hold_position", "scale_down"), 
                  font_size = fontsize, full_width = F) # "repeat_header"
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
