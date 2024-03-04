library(shiny)
library(shinydashboard)

css <- '.menu-administrador {
  width: 252px;
  height: 989px;
}

.menu-administrador .group {
  position: relative;
  height: 989px;
  background-color: #001232;
}

.menu-administrador .div {
  position: absolute;
  width: 193px;
  height: 833px;
  top: 117px;
  left: 25px;
}

.menu-administrador .frame {
  display: inline-flex;
  flex-direction: column;
  align-items: flex-start;
  gap: 26px;
  position: absolute;
  top: 254px;
  left: 15px;
}

.menu-administrador .div-wrapper {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  gap: 10px;
  padding: 0px 5px;
  position: relative;
  flex: 0 0 auto;
}

.menu-administrador .text-wrapper {
  position: relative;
  width: fit-content;
  margin-top: -1px;
  font-family: "Poppins-Regular", Helvetica;
  font-weight: 400;
  color: #6a7384;
  font-size: 12px;
  letter-spacing: 0.18px;
  line-height: 20.5px;
  white-space: nowrap;
}

.menu-administrador .frame-2 {
  display: inline-flex;
  flex-direction: column;
  align-items: flex-start;
  gap: 31px;
  position: relative;
  flex: 0 0 auto;
}

.menu-administrador .frame-3 {
  display: inline-flex;
  align-items: center;
  gap: 17px;
  position: relative;
  flex: 0 0 auto;
}

.menu-administrador .group-2 {
  position: relative;
  width: 15px;
  height: 15px;
}

.menu-administrador .rectangle {
  position: absolute;
  width: 7px;
  height: 15px;
  top: 0;
  left: 0;
  border-radius: 1px;
  border: 1px solid;
  border-color: #6a7384;
}

.menu-administrador .rectangle-2 {
  position: absolute;
  width: 7px;
  height: 8px;
  top: 0;
  left: 8px;
  border-radius: 1px;
  border: 1px solid;
  border-color: #6a7384;
}

.menu-administrador .rectangle-3 {
  position: absolute;
  width: 7px;
  height: 5px;
  top: 10px;
  left: 8px;
  border-radius: 1px;
  border: 1px solid;
  border-color: #6a7384;
}

.menu-administrador .text-wrapper-2 {
  position: relative;
  width: fit-content;
  margin-top: -1px;
  font-family: "Poppins-Regular", Helvetica;
  font-weight: 400;
  color: #6a7384;
  font-size: 13px;
  letter-spacing: 0.2px;
  line-height: 22.2px;
  white-space: nowrap;
}

.menu-administrador .frame-4 {
  display: inline-flex;
  flex-direction: column;
  align-items: flex-start;
  gap: 26px;
  position: absolute;
  top: 403px;
  left: 15px;
}

.menu-administrador .frame-5 {
  display: inline-flex;
  flex-direction: column;
  align-items: flex-start;
  gap: 26px;
  position: absolute;
  top: 552px;
  left: 15px;
}

.menu-administrador .group-3 {
  position: absolute;
  width: 195px;
  height: 227px;
  top: 0;
  left: 0;
}

.menu-administrador .text-wrapper-3 {
  position: absolute;
  top: 0;
  left: 20px;
  font-family: "Poppins-Regular", Helvetica;
  font-weight: 400;
  color: #6a7384;
  font-size: 12px;
  letter-spacing: 0.18px;
  line-height: 20.5px;
  white-space: nowrap;
}

.menu-administrador .frame-6 {
  display: flex;
  width: 193px;
  align-items: center;
  gap: 17px;
  padding: 10px 15px;
  position: absolute;
  top: 39px;
  left: 0;
  background-color: #0089ba;
  border-radius: 5px;
}

.menu-administrador .rectangle-4 {
  position: absolute;
  width: 7px;
  height: 15px;
  top: 0;
  left: 0;
  border-radius: 1px;
  border: 1px solid;
  border-color: #ffffff;
}

.menu-administrador .rectangle-5 {
  position: absolute;
  width: 7px;
  height: 8px;
  top: 0;
  left: 8px;
  border-radius: 1px;
  border: 1px solid;
  border-color: #ffffff;
}

.menu-administrador .rectangle-6 {
  position: absolute;
  width: 7px;
  height: 5px;
  top: 10px;
  left: 8px;
  border-radius: 1px;
  border: 1px solid;
  border-color: #ffffff;
}

.menu-administrador .text-wrapper-4 {
  position: relative;
  width: fit-content;
  margin-top: -1px;
  font-family: "Poppins-Medium", Helvetica;
  font-weight: 500;
  color: #ffffff;
  font-size: 13px;
  letter-spacing: 0.2px;
  line-height: 22.2px;
  white-space: nowrap;
}

.menu-administrador .frame-wrapper {
  display: inline-flex;
  flex-direction: column;
  align-items: flex-start;
  gap: 26px;
  position: absolute;
  top: 99px;
  left: 15px;
}

.menu-administrador .overlap-group {
  position: absolute;
  width: 252px;
  height: 103px;
  top: 0;
  left: 0;
  background-color: #001232;
}

.menu-administrador .overlap {
  position: absolute;
  width: 48px;
  height: 48px;
  top: 35px;
  left: 25px;
  border-radius: 5px;
}

.menu-administrador .rectangle-7 {
  position: absolute;
  width: 48px;
  height: 48px;
  top: 0;
  left: 0;
  background-color: #0089c8;
  border-radius: 5px;
  opacity: 0.2;
}

.menu-administrador .img {
  position: absolute;
  width: 34px;
  height: 34px;
  top: 7px;
  left: 7px;
}

.menu-administrador .group-4 {
  position: absolute;
  width: 14px;
  height: 15px;
  top: 45px;
  left: 204px;
}

.menu-administrador .rectangle-8 {
  position: absolute;
  width: 7px;
  height: 15px;
  top: 0;
  left: 0;
  background-color: #fcd900;
  border-radius: 3px 0px 0px 3px;
}

.menu-administrador .rectangle-9 {
  position: absolute;
  width: 7px;
  height: 15px;
  top: 0;
  left: 7px;
  background-color: #566178;
  border-radius: 3px 0px 0px 3px;
  transform: rotate(180deg);
}
'

ui <- dashboardPage(

  dashboardHeader(),

  dashboardSidebar(

    tags$head(
      tags$style(HTML(css))
    ),

    tags$div(class = "menu-administrador",

             tags$div(class = "overlap-group",
                      tags$div(class = "overlap",

                               tags$div(class = "rectangle-7"),

                               tags$img(src = "logo.png", class = "img")

                      ),

                      tags$div(class = "group-4",

                               tags$div(class = "rectangle-8"),

                               tags$div(class = "rectangle-9")

                      )

             ),

             tags$div(class = "group-3",

                      tags$div(class = "text-wrapper-3", "ADMINISTRADOR"),

                      tags$div(class = "frame-6",

                               tags$div(class = "group-2",

                                        tags$div(class = "rectangle-4"),

                                        tags$div(class = "rectangle-5"),

                                        tags$div(class = "rectangle-6")

                               ),

                               tags$div(class = "text-wrapper-4", "Tablero")

                      )

             ),

             tags$div(class = "div"),

             tags$div(class = "frame",

                      lapply(1:5, function(i)

                        tags$div(class = "div-wrapper",

                                 tags$div(class="group-2",

                                          tags$div(class = "rectangle"),

                                          tags$div(class = "rectangle-2"),

                                          tags$div(class = "rectangle-3")

                                 ),

                                 tags$div(class="text-wrapper", "Item de Menu")

                        )

                      )

             ),

             tags$div(class = "frame-2",

                      lapply(1:2, function(i)

                        tags$div(class = "frame-3",

                                 tags$div(class="group-2",

                                          tags$div(class = "rectangle"),

                                          tags$div(class = "rectangle-2"),

                                          tags$div(class = "rectangle-3")

                                 ),

                                 tags$div(class="text-wrapper-2", "Item de Menu")

                        )

                      )

             ),

             tags$div(class = "frame-4",

                      tags$div(class = "div-wrapper",

                               tags$div(class="text-wrapper", "MIEMBROS")

                      ),

                      lapply(1:2, function(i)

                        tags$div(class = "frame-3",

                                 tags$div(class="group-2",

                                          tags$div(class = "rectangle"),

                                          tags$div(class = "rectangle-2"),

                                          tags$div(class = "rectangle-3")

                                 ),

                                 tags$div(class="text-wrapper-2", "Item de Menu")

                        )

                      )

             ),

             tags$div(class = "frame-5",

                      tags$div(class = "div-wrapper",

                               tags$div(class="text-wrapper", "CONFIGURACIONES")

                      ),

                      lapply(1:5, function(i)

                        tags$div(class = "frame-3",

                                 tags$div(class="group-2",

                                          tags$div(class = "rectangle"),

                                          tags$div(class = "rectangle-2"),

                                          tags$div(class = "rectangle-3")

                                 ),

                                 tags$div(class="text-wrapper-2", "Item de Menu")

                        )

                      )

             ),

             tags$div(class = "frame-wrapper",

                      lapply(1:3, function(i)

                        tags$div(class = "frame-3",

                                 tags$div(class="group-2",

                                          tags$div(class = "rectangle"),

                                          tags$div(class = "rectangle-2"),

                                          tags$div(class = "rectangle-3")

                                 ),

                                 tags$div(class="text-wrapper-2", "Item de Menu")

                        )

                      )

             ),

             tags$div(class = "group")

    )

  ),

  dashboardBody()

)

server <- function(input, output) { }

shinyApp(ui, server)