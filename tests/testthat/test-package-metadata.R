test_that("citation information is available", {
  cit <- utils::citation("CascadeData")
  expect_true(inherits(cit, "bibentry") || (is.list(cit) && all(vapply(cit, inherits, logical(1L), "bibentry"))))
})

test_that("CITATION file exists", {
  cit_file <- system.file("CITATION", package = "CascadeData")
  expect_true(file.exists(cit_file))
})