context("Test")

test_that("Package can be tested with testthat not on search path", {
  testthat_pos <- which(search() == "package:testthat")
  if (length(testthat_pos) > 0) {
    testthat_env <- detach(pos = testthat_pos)
    on.exit(attach(testthat_env, testthat_pos), add = TRUE)
  }

  test("testTest")
  test("testTestWithDepends")
})
