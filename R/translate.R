#' translate
#' Select ribosome codons and makes them into AA
#'
#' This function selects specific codons from the `ribo` vector and
#' makes them into Aminoacids
#'
#' @param codons A numeric or character vector indicating which codons to select from `ribo`.
#' @returns A character string containing the selected ribosome codons concatenated together.
#' @export
#'
#' @examples
#' ribo <- c("AUG", "GCU", "UAA", "CGG")
#' codons <- c(1, 2, 4)
#' select_ribo(codons)
#' # Returns: ""
translate <- function(codons){
  select_ribo2 <- paste0(ribo[codons], collapse = "")
  return(select_ribo2)
}
