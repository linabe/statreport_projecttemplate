mykable <- function(tab, fontsize = NULL, rownames = FALSE, ...) {
  parms <- list(...)
  if (any(names(parms) == "longtable")) {
    latexoptions = c("striped", "hold_position")
  } else{
    latexoptions = c("striped", "hold_position", "scale_down")
  }
  
  knitr::kable(tab,
               booktabs = TRUE,
               linesep = "",
               row.names = rownames,
               align = c(rep("l", ncol(tab))),
               ...
  ) %>%
    kable_styling(latex_options = latexoptions, 
                  font_size = fontsize, full_width = F) # "repeat_header"
}