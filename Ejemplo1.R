#remove.packages("DisenoVikua")
#devtools::install_github("salasj1/DisenoVikua")
install.packages("C:/Users/aleja/Downloads/shiny-UI1/DisenoVikua", repos = NULL, type = "source")
library(DisenoVikua)
library(shiny)
library(plotly)
library(DT)
library(bsicons)
library(bslib)
library(shiny.semantic)
library(leaflet)
library(shinyWidgets)
library(devtools)
library(htmltools)
library(shinyjs)
library(bs4Dash)
ui <- fluidPage(
  useShinyjs(),
  mypackageDependencies(),
  DisenoVikua::sidebar(),
  DisenoVikua::titlePanel("https://www.google.com/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png","https://raw.githubusercontent.com/salasj1/DisenoVikua/49e83541c07648d68f3ea88b12abf9bed7fb4e12/inst/assets/img/perfil-ejemplo.svg"),
  mainPanel(
    div(class="main-panel",
        div(class="row",
            div(class="col",style="gap: 20px;",
                verbatimTextOutput("value"),
                hidden(textInput(inputId ="panel_state", label="",value="mis_tableros")),
                selectizeInput(
                  inputId = "selectize1",
                  label = div("Empresa",class="selectize-label"),
                  selected = NULL,
                  choices = c("","Opción 1", "Opción 2", "Opción 3"),
                  options = list(
                    placeholder = 'Seleccione una opción',
                    hideSelected = FALSE,
                    width = "25px",
                    plugins = list('remove_button')
                  )
                ),
                tags$br(),
                selectizeInput(
                  inputId = "selectize2",
                  label = div("Usuario",class="selectize-label"),
                  choices = c("Opción 1", "Opción 2", "Opción 3"),
                  multiple = TRUE,
                  options = list(
                    placeholder = 'Seleccione una opción',
                    hideSelected = FALSE,
                    width = "25px",
                    plugins = list('remove_button')
                  )
                ),
                tags$br(),
                textInput(inputId = "my_text_input", label = div(id="__nombre","Nombre",class="input-label"), value = ""),
                tags$br(),
                actionBttn(inputId = "my_button1", label = cuadros("Mis Tableros"), class = "boton-vikua"),
                tags$br(),
                textInput("search", label = "Search", value = ""),
                tags$br(),
                textInput(inputId = "my_text_input3", label = div("Ingresa el nombre del Tablero",class="input-label"), value = ""),
                actionButton(inputId = "show", label = "Show Notification")
            ),
            div( class="col",

                bs4Card(id="card1",
                        title =  tags$img(src = 'https://github.com/salasj1/DisenoVikua/blob/ce93c6aee2957f663730acc172f65b9ce75cb0bd/inst/assets/img/group-1.png?raw=true', alt = ""),
                        status = "primary",
                        solidHeader = FALSE,
                        collapsible = FALSE,
                        closable = FALSE,
                        body ="",
                        DisenoVikua::bodycard1("Card 1",
                                               "This is a card",
                                               "Presiona",
                                               HTML("<i class=\"fa-solid fa-pencil\" style=\"font-size: 15px;\"></i>"))
                )
            ),
            div(class="col",
                value_box(
                  class="value-box1",
                  title = div("Total Horas Trabajadas", class="value-box-title"),
                  value = div("82", class = "value-box-text-2"),
                  p("25% vs mes anterior", class="value-box-text-3"),
                  theme = value_box_theme(bg = "#FFFFFF", fg = "#000000"),
                  showcase = tags$img(src="https://github.com/salasj1/DisenoVikua/blob/e39f2bd1734c672a3df4f39bfabd53370db4f288/inst/assets/img/alarm.png?raw=true",class="value-box-icon"),
                  showcase_layout = "left center",
                  full_screen = TRUE, fill = FALSE, height = NULL,width = 4,

                )
            )
        ),
        tags$br(), 
        div(class="row",

            tags$br(), 
            div(class="col-sm-6",
                value_box(
                  class="value-box2",
                  title = div("Customer retention", class="value-box-title"),
                  value = div("87%", class = "value-box-text-2"),
                  theme = value_box_theme(bg = "#FFFFFF", fg = "#000000"),
                  showcase = tags$img(src="https://github.com/salasj1/PaquetePrueba/blob/e39f2bd1734c672a3df4f39bfabd53370db4f288/inst/assets/img/credito.png?raw=true",class="value-box-icon"),
                  showcase_layout = "left center",
                  full_screen = TRUE, fill = FALSE, height = NULL,width = 4,
                )
            ),
            tags$br(), 
            div(class="row",
                div(class="col-sm-3",
                    value_box(
                      class="value-box3",
                      title = div("Total de pacientes afiliados", class="value-box-title"),
                      value = div("82", class = "value-box-text-2"),
                      p("25% vs mes anterior", class="value-box-text-3"),
                      theme = value_box_theme(bg = "#FFFFFF", fg = "#000000"),
                      showcase_layout = "left center",
                      full_screen = TRUE, fill = FALSE, height = NULL,width = 4,
                    )

                ),
                div(class="col-sm-3",
                    value_box(
                      class="value-box3",
                      title = div("Total empresas", class="value-box-title"),
                      value = div("87", class = "value-box-text-2"),
                      theme = value_box_theme(bg = "#FFFFFF", fg = "#000000"),
                      showcase_layout = "left center",
                      full_screen = TRUE, fill = FALSE, height = NULL,width = 4,
                    )
                ),
                div(class="col-sm-3",
                    value_box(
                      class="value-box3",
                      title = div("Total Consultas", class="value-box-title"),
                      value = div("82", class = "value-box-text-2"),
                      p("25% vs mes anterior", class="value-box-text-3"),
                      theme = value_box_theme(bg = "#FFFFFF", fg = "#000000"),
                      showcase_layout = "left center",
                      full_screen = TRUE, fill = FALSE, height = NULL,width = 4,
                    )
                ),
                div(class="col-sm-3",
                    value_box(
                      class="value-box3",
                      title = div("Urgencias Emergencias", class="value-box-title"),
                      value = div("82", class = "value-box-text-2"),
                      p("25% vs mes anterior", class="value-box-text-3"),
                      theme = value_box_theme(bg = "#FFFFFF", fg = "#000000"),
                      showcase_layout = "left center",
                      full_screen = TRUE, fill = FALSE, height = NULL,width = 4,
                    )
                ),


            )
        ),
        div(class="row",style="gap: 20px;",
            div(class="col-sm-6",
                passwordInput(inputId = "password1",label=div("Contraseña",class="input-label"))),
            div(class="col-sm-6",
                passwordInput(inputId = "password2", label=div("Confirmar Contraseña",class="input-label"))),
            tags$br(),
        ),
        div(class="row",
            conditionalPanel(
              condition = "input.panel_state == 'mis_tableros'",

              fluidRow(
                div(
                  class="col-sm-6",

                  tags$div(style = "height:20px;"), # Agrega un espacio en blanco
                  div(
                    style="display: flex; flex-option: wrap;",
                      plotlyOutput("plot", height = "500px", width = "500px")
                  )
                ),
                div(
                  class="col-sm-6",
                  actionBttn(inputId = "my_button4", label = cuadros("Compañero"), class = "boton-vikua"),
                  tags$div(style = "height:20px;"), # Agrega un espacio en blanco
                  DTOutput("table")
                )
              )
            ),
            conditionalPanel(

              condition = "input.panel_state == 'tableros_vikua'",
              fluidRow(
                leafletOutput("map"),
                tags$br()
              )
            )
        )
    )
  )
)

server <- function(input, output, session) {

  observeEvent(input$my_text_input, {
    # Si el campo de texto 'my_text_input' está vacío
    if (input$my_text_input == "") {
      # Agrega un mensaje de error al campo de texto llamando a la funcion addErrorMessage
      session$sendCustomMessage(type = 'addErrorMessage', message = list(ids = c('my_text_input'), messageText = 'Este campo es obligatorio'))
    } else {
      # Si el campo de texto no está vacío, elimina el mensaje de error
      session$sendCustomMessage(type = 'removeErrorMessage', message = list(ids = c('my_text_input')))
    }
  })




  observeEvent(list(input$password1, input$password2), {
    # Si los campos de texto 'password1' y 'password2' no son iguales
    if (input$password1 != input$password2) {
      # Agrega un mensaje de error a ambos campos de texto llamando a la funcion addErrorMessage
      session$sendCustomMessage(type = 'addErrorMessage', message = list(ids = c('password1', 'password2'), messageText = 'Las contraseñas no coinciden'))
    } else {
      # Si las contraseñas coinciden, elimina el mensaje de error
      session$sendCustomMessage(type = 'removeErrorMessage', message = list(ids = c('password1', 'password2')))
    }
  })
  observeEvent(input$show, {
    shiny::showNotification(
      "Error: Por favor, introduce un texto.",
      type = "error"  # Esto hará que el mensaje se muestre en rojo
    )
    print("El evento show ha sido activado")  # Agrega esta línea
  })

  output$map <- renderLeaflet({
    leaflet() %>% addTiles() %>% setView(-93.65, 42.0285, zoom = 17)
  })



  session$onSessionEnded(function() {
    updateSelectizeInput(session, "selectize1", selected = NULL)
  })

  output$plot <- renderPlotly({
    p <- plot_ly(data = iris, x = ~Sepal.Length, y = ~Petal.Length) %>%
      layout(autosize = TRUE) %>%
      config(responsive = TRUE)
    p
  })

  output$table <- renderDT({
    datatable(iris)
  })

}

# Define la aplicación Shiny
app <- shinyApp(ui, server)

# Ejecuta la aplicación en un host y puerto específicos
runApp(app, host = "127.0.0.1", port = 8190)