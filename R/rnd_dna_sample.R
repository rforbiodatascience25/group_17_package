#' Random DNA sample
#'
#' @param dna_size Given integer for DNA sample size
#'
#' @returns Returns a random DNA sample in string format
#' @export
#'
#' @examples
#' rnd_dna_sample(10)
#' rnd_dna_sample(15)
#' rnd_dna_sample(20)
rnd_dna_sample <- function(dna_size){
  dna_sample <- sample(c("A", "T", "G", "C"), size = dna_size, replace = TRUE)
  sample_str <- paste0(dna_sample, collapse = "")
  return(sample_str)
}
