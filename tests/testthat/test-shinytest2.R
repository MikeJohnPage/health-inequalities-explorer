library(shinytest2)

test_that("{shinytest2} recording: England: Local Authorities", {
  app <- AppDriver$new(name = "England: Local Authorities", seed = 2023, height = 802, 
      width = 1165)
  app$set_inputs(`areas-selectAreas` = "Adur")
  app$set_inputs(`areas-selectAreas` = c("Adur", "Allerdale"))
  app$expect_values()
})


test_that("{shinytest2} recording: England: Integrated Care Board selections", {
  app <- AppDriver$new(name = "England: Integrated Care Board selections", seed = 2023, 
      height = 802, width = 1165)
  app$set_inputs(`geography-selectGeography` = "england_icb_shp")
  app$set_inputs(`areas-selectAreas` = c("North East and North Cumbria", "Humber and North Yorkshire", 
      "Hampshire and Isle of Wight"))
  app$expect_values()
})


test_that("{shinytest2} recording: Scotland: Local Authorities selections", {
  app <- AppDriver$new(name = "Scotland: Local Authorities selections", height = 802, 
      width = 1165)
  app$set_inputs(`geography-selectGeography` = "scotland_ltla_shp")
  app$set_inputs(`areas-selectAreas` = c("Highland", "East Lothian"))
  app$expect_values()
})


test_that("{shinytest2} recording: Scotland: Health Boards selections", {
  app <- AppDriver$new(name = "Scotland: Health Boards selections", seed = 2023, 
      height = 802, width = 1165)
  app$set_inputs(`geography-selectGeography` = "scotland_hb_shp")
  app$set_inputs(`areas-selectAreas` = c("Grampian", "Borders"))
  app$expect_values()
})


test_that("{shinytest2} recording: Nothern Ireland: Local Authorities selection", {
  app <- AppDriver$new(name = "Nothern Ireland: Local Authorities selection", seed = 2023, 
      height = 802, width = 1165)
  app$set_inputs(`geography-selectGeography` = "northern_ireland_ltla_shp")
  app$set_inputs(`areas-selectAreas` = "Ards and North Down")
  app$expect_values()
})
