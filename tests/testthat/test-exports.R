test_that("Namespace is present", {
  # No explicit exports detected; ensure namespace exists
  expect_true(file.exists(system.file("NAMESPACE", package = "CascadeData")))
})
