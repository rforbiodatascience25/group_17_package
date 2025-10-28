#' select_ribo
#' Select ribosome codons and concatenate them
#'
#' This function selects specific codons from the `ribo` vector and
#' concatenates them into a single string with no separator.
#'
#' @param codons A numeric or character vector indicating which codons to select from `ribo`.
#' @returns A character string containing the selected ribosome codons concatenated together.
#' @export
#'
#' @examples
#' ribo <- c("AUG", "GCU", "UAA", "CGG")
#' codons <- c(1, 2, 4)
#' select_ribo(codons)
#' # Returns: "AUGGCUCGG"
select_ribo <- function(codons){
  select_ribo2 <- paste0(ribo[codons], collapse = "")
  return(select_ribo2)
}
