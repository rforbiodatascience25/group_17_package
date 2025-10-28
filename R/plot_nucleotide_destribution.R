#' nucleotide destribution
#' @import ggplot2
#' @import stringr
#'
#' @param nucleotide_sequences Matrix with vectors of nucleotides sequences
#'
#' @returns A plot with the destribution of nucleotides in each sequence
#' @export
#'
#' @examples
nucleotide_destribution <- function(nucleotide_sequences){
  # Split the input string into individual characters (nucleotides)
  # Then convert to a simple character vector and keep only unique nucleotides
  unique_sequence_matrix <- nucleotide_sequences |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  # For each unique nucleotide (A, T, G, C, etc.), count how many times it appears
  # 'sapply()' applies the anonymous function to each nucleotide and collects the counts
  counts <- sapply(unique_sequence_matrix, function(amino_acid)
    stringr::str_count(string = nucleotide_sequences, pattern = amino_acid)
  ) |> as.data.frame()

  # Rename the column to "Counts"
  colnames(counts) <- c("Counts")

  # Add a new column with the nucleotide names (taken from the row names)
  counts[["nucleotide_sequences"]] <- rownames(counts)

  # Create a bar plot showing the count of each nucleotide
  destribution_plot <- counts |>
    ggplot2::ggplot(
      ggplot2::aes(x = nucleotide_sequences, y = Counts, fill = nucleotide_sequences)
    ) +
    ggplot2::geom_col() +           # Draw bars
    ggplot2::theme_bw() +           # Use a clean black-and-white theme
    ggplot2::theme(legend.position = "none")  # Hide the legend (since x-axis already labels nucleotides)

  # Return the ggplot object so it can be displayed or modified later
  return(destribution_plot)
}

