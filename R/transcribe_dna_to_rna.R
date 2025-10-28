#' Transcribes DNA to RNA
#'
#' Converts a DNA sequence to its corresponding RNA sequence
#' by replacing all thymine (T) bases with uracil (U).
#'
#' @param dna_sequence A character string containing a DNA sequence (e.g., "ATGCGT").
#' @return A character string with T replaced by U (e.g., "AUGCGU").
#' @examples
#' transcribe_dna_to_rna("ATGCGT")
#' @export
transcribe_dna_to_rna <- function(dna_sequence) {
  rna_sequence <- gsub("T", "U", dna_sequence)
  return(rna_sequence)
}
