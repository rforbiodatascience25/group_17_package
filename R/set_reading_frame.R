#' set_reading_frame
#'
#' @param RNA Give the RNA in a form of a string containing the nucleutide sequence
#' @param start Give the location of the +1 nucleutide in the string.
#'
#' @returns An ordered list of codons starting from the defined nucleutide.
#' @export
#'
#' @examples
#'
#' mRNA <- 'CAUGUUA'
#' codons <- set_reading_frame(RNA = mRNA, start = 2)
#'
set_reading_frame <- function(RNA, start = 1){
  len_RNA <- nchar(RNA)
  codons <- substring(RNA,
                      first = seq(from = start, to = len_RNA-3+1, by = 3),
                      last = seq(from = 3+start-1, to = len_RNA, by = 3))
  return(codons)
}
