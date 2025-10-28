#' select_ribo
#'
#' @param codons Selects the ribos codons, with a "" between them
#'
#' @returns returns ribosomes
#' @export
#'
#' @examples
#' ribo <- c("AUG", "GCU", "UAA", "CGG")
#' codons <- c(1, 2, 4)
#' select_ribo(codons)
#' returns "AUGGCUCGG"

select_ribo <- function(codons){
  select_ribo2 <- paste0(ribo[codons], collapse = "")
  return(select_ribo2)
}
