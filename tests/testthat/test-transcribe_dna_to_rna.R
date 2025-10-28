test_that("transcribe_dna_to_rna works correctly", {
  expect_equal(transcribe_dna_to_rna("ATGCGT"), "AUGCGU")
  expect_equal(transcribe_dna_to_rna("TTTTTT"), "UUUUUU")
  expect_equal(transcribe_dna_to_rna("ACGT"), "ACGU")
})
