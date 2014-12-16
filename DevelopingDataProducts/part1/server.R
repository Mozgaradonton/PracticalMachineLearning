setwd("C:\\CS\\gitRep1\\DataProducts\\part1")


library(shiny)
data <- read.csv(file = "sales.csv", sep = ";", header = TRUE, dec = ",")
data$Order.Date <- as.Date(data$Order.Date, format = "%d.%m.%Y")
data$Ship.Date <- as.Date(data$Ship.Date, format = "%d.%m.%Y")

defaultColumns <- c("Order.ID", "Sales")

shinyServer(function(input, output) {
    output$tableR <- renderTable({head(data[, c(defaultColumns, input$columns)], n = input$rows)})
})