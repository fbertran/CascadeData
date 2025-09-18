expected_rows <- 54613L
expected_cols <- 24L
expected_timepoints <- c("60","90","210","390")

.check_colnames_timepoints <- function(nms) {
  # Try to extract timepoint tokens from column names
  # Accept patterns like T60, tp_90, 210m, time390, or bare numbers
  if (is.null(nms) || anyNA(nms) || any(nchar(nms) == 0L)) return(FALSE)
  tp_tokens <- gsub(".*?(60|90|210|390).*", "\\1", nms, perl = TRUE)
  # If a name didn't match, token equals original; detect such cases
  matched <- grepl("(60|90|210|390)", nms, perl = TRUE)
  if (!all(matched)) return(FALSE)
  # Require each timepoint to appear exactly 6 times (6 replicates x 4 TP = 24 cols)
  tab <- table(tp_tokens)
  all(expected_timepoints %in% names(tab)) &&
    all(tab[expected_timepoints] == 6L)
}

test_that("micro_S has exactly expected dimensions and types", {
  expect_silent(data("micro_S", package = "CascadeData"))
  expect_true(exists("micro_S"))
  expect_s3_class(micro_S, "data.frame")
  expect_equal(nrow(micro_S), expected_rows)
  expect_equal(ncol(micro_S), expected_cols)
  # All numeric columns
  expect_true(all(vapply(micro_S, is.numeric, logical(1L))))
  # Rownames present, unique, no empty strings
  expect_equal(length(rownames(micro_S)), nrow(micro_S))
  expect_false(anyDuplicated(rownames(micro_S)) > 0)
  expect_false(any(rownames(micro_S) == ""))
  # No NA/Inf in data
  expect_false(any(!is.finite(as.matrix(micro_S))))
  # Non-zero variance in each column
  expect_true(all(vapply(micro_S, function(x) stats::var(x, na.rm=TRUE) > 0, logical(1L))))
  # Column names present, unique, no empty strings
  expect_equal(length(colnames(micro_S)), ncol(micro_S))
  expect_false(anyDuplicated(colnames(micro_S)) > 0)
  expect_false(any(colnames(micro_S) == ""))
})

test_that("micro_US has exactly expected dimensions and types", {
  expect_silent(data("micro_US", package = "CascadeData"))
  expect_true(exists("micro_US"))
  expect_s3_class(micro_US, "data.frame")
  expect_equal(nrow(micro_US), expected_rows)
  expect_equal(ncol(micro_US), expected_cols)
  expect_true(all(vapply(micro_US, is.numeric, logical(1L))))
  expect_equal(length(rownames(micro_US)), nrow(micro_US))
  expect_false(anyDuplicated(rownames(micro_US)) > 0)
  expect_false(any(rownames(micro_US) == ""))
  expect_false(any(!is.finite(as.matrix(micro_US))))
  expect_true(all(vapply(micro_US, function(x) stats::var(x, na.rm=TRUE) > 0, logical(1L))))
  expect_equal(length(colnames(micro_US)), ncol(micro_US))
  expect_false(anyDuplicated(colnames(micro_US)) > 0)
  expect_false(any(colnames(micro_US) == ""))
})

test_that("Stimulated and unstimulated datasets are aligned", {
  # Ensure loaded
  if (!exists("micro_S")) data("micro_S", package = "CascadeData")
  if (!exists("micro_US")) data("micro_US", package = "CascadeData")
  # Same probeset order and identifiers
  expect_identical(rownames(micro_S), rownames(micro_US))
})

test_that("Column naming encodes 4 time points with 6 replicates each", {
  # This test enforces a meaningful naming scheme; if it fails, please rename columns accordingly.
  if (!exists("micro_S")) data("micro_S", package = "CascadeData")
  cn <- colnames(micro_S)
  expect_true(.check_colnames_timepoints(cn))
})