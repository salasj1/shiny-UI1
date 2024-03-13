# En Ejemplo1.R
remove.packages("PaquetePrueba")
install.packages("C:/Users/aleja/Downloads/shiny-UI1/PaquetePrueba", repos = NULL, type = "source")
library(shiny)
library(plotly)
library(DT)
library(bsicons)
library(bslib)
library(leaflet)
library(shinyWidgets)
library(devtools)
library(PaquetePrueba)
library(htmltools)
library(shinyjs)
library(shiny.semantic)
library(bs4Dash)
ui <- fluidPage(
  useShinyjs(),
  mypackageDependencies(),#Importante para el boton
  #El sidebar
  sidebar(),
  mainPanel(


    div(class="main-panel",
        tags$div(id = "empresa-header", tags$img(id="miImagen",src="https://www.google.com/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png")),
        hidden(textInput(inputId ="panel_state", label="",value="mis_tableros")),
        actionBttn(inputId = "my_button1", label = cuadros("Mis Tableros"), class = "action-button boton-vikua"), # Asegúrate de que el botón tiene la clase 'action-button' y 'boton-vikua'
        # Card1
        bs4Card(id=1,
          title =  tags$img(src = 'https://github.com/salasj1/PaquetePrueba/blob/ce93c6aee2957f663730acc172f65b9ce75cb0bd/inst/assets/img/group-1.png?raw=true', alt = ""),
          status = "primary",
          solidHeader = FALSE,
          collapsible = FALSE,
          closable = FALSE,
          body ="",
          bodycard1("Card 1", "This is a card","Si funciona")
        ),
        # Card2 Info box alarm
        value_box(
          class="value-box1",
          title = div("Total Horas Trabajadas", class="value-box-title"),
          value = div("82", class = "value-box-text-2"),
          p("25% vs mes anterior", class="value-box-text-3"),
          theme = value_box_theme(bg = "#FFFFFF", fg = "#000000"),
          showcase = tags$img(src="https://github.com/salasj1/PaquetePrueba/blob/e39f2bd1734c672a3df4f39bfabd53370db4f288/inst/assets/img/alarm.png?raw=true",class="value-box-icon"),
          showcase_layout = "left center",
          full_screen = FALSE, fill = FALSE, height = NULL,width = 4,
        ),
        # Card2 Info box alarm
        value_box(
          class="value-box2",
          title = div("Customer retention", class="value-box-title"),
          value = div("87%", class = "value-box-text-2"),
          theme = value_box_theme(bg = "#FFFFFF", fg = "#000000"),
          showcase = tags$img(src="https://github.com/salasj1/PaquetePrueba/blob/e39f2bd1734c672a3df4f39bfabd53370db4f288/inst/assets/img/credito.png?raw=true",class="value-box-icon"),
          showcase_layout = "left center",
          full_screen = FALSE, fill = FALSE, height = NULL,width = 4,
        ),
        # Card2 Info box credit
        value_box(
          class="value-box3",
          title = div("Total empresas", class="value-box-title"),
          value = div("82", class = "value-box-text-2"),
          p("25% vs mes anterior", class="value-box-text-3"),
          theme = value_box_theme(bg = "#FFFFFF", fg = "#000000"),
          showcase_layout = "left center",
          full_screen = FALSE, fill = FALSE, height = NULL,width = 4,
        ),
        # Card3 Info box sin imagen
        conditionalPanel(
          condition = "input.panel_state == 'mis_tableros'",
          div(class="Tablero 1",
              fluidRow(
                plotlyOutput("plot"),
                actionBttn(inputId = "my_button3", label = "Compañero", class = "action-button boton-vikua"), # Asegúrate de que el botón tiene la clase 'action-button' y 'boton-vikua'
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

  # observe({
  #   shinyjs::runjs("resetButtons()")
  # })
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
runApp(app, host = "127.0.0.1", port = 8020)