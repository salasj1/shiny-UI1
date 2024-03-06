# En Ejemplo1.R
library(shiny)
library(plotly)
library(DT)
library(leaflet)
library(shinyWidgets)
library(PaquetePrueba)
library(htmltools)
library(shinyjs)

ui <- fluidPage(
  useShinyjs(),
  mypackageDependencies(),#Importante para el boton
  sidebarPanel(sidebar()),
  mainPanel(
    hidden(textInput(inputId ="panel_state", label="",value="mis_tableros")),
    tags$div(id = "empresa-header", tags$img(id="miImagen",src="https://www.google.com/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png")),
    div(class="main-panel",
        actionBttn(inputId = "my_button1", label = cuadros("Mis Tableros"), class = "boton-vikua"),#Importante para el boton
        conditionalPanel(
          condition = "input.panel_state == 'mis_tableros'",
          div(class="Tablero 1",
              fluidRow(
                plotlyOutput("plot"),
                DTOutput("table")
              )
          )
        ),
        conditionalPanel(
          condition = "input.panel_state == 'tableros_vikua'",
          div(class="Tablero 2",
              fluidRow(
                leafletOutput("map"),
                pickerInput(inputId = "picker", label = "Elija una opción", choices = c("Opción 1", "Opción 2", "Opción 3")),
                tags$button(id = "myButton", "Haz clic en mí", class = "btn action-button")
              )
          )
        )
    )

  )
)

server <- function(input, output, session) {

  # Importante para el boton
  observe({
    shinyjs::runjs("resetClass('my_button1')")
  })
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

# Define la aplicación Shiny
app <- shinyApp(ui, server)

# Ejecuta la aplicación en un host y puerto específicos
runApp(app, host = "127.0.0.1", port = 8092)