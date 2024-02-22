library(shiny)
library(shinydashboard)
library(plotly)
library(DT)
library(leaflet)
library(shinyWidgets)
library(paqueteprueba)
library(htmltools)

ui <- dashboardPage(
  dashboardHeader(title = "Dashboard 1"),
  dashboardSidebar(
    sidebarMenu(
      menuItem("Tab 1", tabName = "tab1"),
      menuItem("Tab 2", tabName = "tab2")
    )
  ),
  dashboardBody(
    tags$head(mypackageDependencies()),
    tabItems(
      tabItem(tabName = "tab1",
              fluidRow(
                box(plotlyOutput("plot")),
                box(DTOutput("table"))
              )
      ),
      tabItem(tabName = "tab2",
              fluidRow(
                box(leafletOutput("map")),
                box(pickerInput(inputId = "picker", label = "Elija una opción", choices = c("Opción 1", "Opción 2", "Opción 3"))),
                box(tags$button(id = "myButton", "Haz clic en mí", class = "btn action-button"))
              )
      )
    )
  )
)

server <- function(input, output) {
  output$plot <- renderPlotly({
    plot_ly(data = iris, x = ~Sepal.Length, y = ~Petal.Length)
  })

  output$table <- renderDT({
    datatable(iris)
  })

  output$map <- renderLeaflet({
    leaflet() %>% addTiles() %>% setView(-93.65, 42.0285, zoom = 17)
  })
}

shinyApp(ui, server)
