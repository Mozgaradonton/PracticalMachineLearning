setwd("C:\\CS\\gitRep1\\DataProducts\\part1")

library(shiny)

shinyUI(pageWithSidebar(
  headerPanel("Sales Reporting"),
  sidebarPanel(
    checkboxGroupInput("columns", "Select additional columns to show: ",
                       c("Order Date" = "Order.Date",
                         "Order Priority" = "Order.Priority",
                         "Order Quantity" = "Order.Quantity",
                         "Ship mode" = "Ship.Mode",
                         "Customer Segment" = "Customer.Segment",
                         "Product Container" = "Product.Container",
                         "Ship Date" = "Ship.Date"
                         )),
      textInput(inputId = "rows", label = "Number of rows", 10)
  ),
  mainPanel(
    tableOutput("tableR")
  )
))