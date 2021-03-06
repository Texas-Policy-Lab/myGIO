# test IO layer
context("layer_functions")

df <- data.frame(zipcode = c("59801", "59802", "59803", "59804","59805", "59606", "59601", "59602"),
                 values = c(100,200,300,400,400,300,400,200),
                 stringsAsFactors = FALSE)

widget_list <- myGIO::myGIO()

testthat::test_that("add layer creates a list of eight", {
  testthat::expect_output(str(widget_list), "List of 8")
})

test_object <- myGIO::myGIO() %>%
  myGIO::addBase(base = "zipChloropleth",
                 data = df,
                 mapping = list(dataKey = "zipcode",
                                dataValue = "values",
                                mapKey = "zip"))

testthat::test_that("add layer creates a list of one", {
  testthat::expect_output(str(test_object$x$layers), "List of 1")
})

test_object_2 <- test_object %>%
  myGIO::addLayer(type = "polygon", label = "state", mapping = list(map = "us"))

testthat::test_that("add layer creates a list of two", {
  testthat::expect_output(str(test_object_2$x$layers), "List of 2")
})

testthat::test_that("assignPolygonFill creates a list of three", {
  testthat::expect_output(str(myGIO::assignPolygonFill(ids = "MT", propertyId = "NAME")), "List of 3")
})

testthat::test_that("setPolygonZoom creates a list of three", {
  testthat::expect_output(str(myGIO::setPolygonZoom()), "List of 3")
})
