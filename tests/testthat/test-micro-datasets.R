test_that("micro_S loads and has expected shape/types", {
  expect_silent(data("micro_S", package = "CascadeData"))
  expect_true(exists("micro_S"))
  expect_s3_class(micro_S, "data.frame")
  # Rows as documented in ?micro_S
  expect_equal(nrow(micro_S), 54613)
  # At least some columns
  expect_gte(ncol(micro_S), 4)
  # All columns numeric
  expect_true(all(vapply(micro_S, is.numeric, logical(1L))))
  # Rownames are present and unique
  expect_equal(length(rownames(micro_S)), nrow(micro_S))
  expect_true(!anyDuplicated(rownames(micro_S)) > 0)
})

test_that("micro_US loads and has expected shape/types", {
  expect_silent(data("micro_US", package = "CascadeData"))
  expect_true(exists("micro_US"))
  expect_s3_class(micro_US, "data.frame")
  expect_equal(nrow(micro_US), 54613)
  expect_gte(ncol(micro_US), 4)
  expect_true(all(vapply(micro_US, is.numeric, logical(1L))))
  expect_equal(length(rownames(micro_US)), nrow(micro_US))
  expect_true(!anyDuplicated(rownames(micro_US)) > 0)
})

test_that("micro_S and micro_US have the same probeset ordering", {
  # Ensure both datasets are loaded
  if (!exists("micro_S")) data("micro_S", package = "CascadeData")
  if (!exists("micro_US")) data("micro_US", package = "CascadeData")
  expect_equal(rownames(micro_S), rownames(micro_US))
  # And same number of columns (paired samples across time points)
  expect_equal(ncol(micro_S), ncol(micro_US))
})

test_that("datalist enumerates datasets", {
  dl <- system.file("data/datalist", package = "CascadeData")
  expect_true(file.exists(dl))
  lines <- readLines(dl, warn = FALSE)
  expect_true("micro_S" %in% lines)
  expect_true("micro_US" %in% lines)
})

test_that("No obvious non-finite values in datasets (allowing a small fraction)", {
  if (!exists("micro_S")) data("micro_S", package = "CascadeData")
  if (!exists("micro_US")) data("micro_US", package = "CascadeData")
  ms_mat <- as.matrix(micro_S)
  mu_mat <- as.matrix(micro_US)
  # Allow up to 0.1% non-finite values to avoid over-strict failures
  frac_nonfinite_ms <- mean(!is.finite(ms_mat))
  frac_nonfinite_mu <- mean(!is.finite(mu_mat))
  expect_lt(frac_nonfinite_ms, 1e-3)
  expect_lt(frac_nonfinite_mu, 1e-3)
})