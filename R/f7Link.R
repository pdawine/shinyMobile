#' Create a Framework7 link
#'
#' Build a Framework7 link
#'
#' @param label Link text.
#' @param icon Link icon, if any.
#' @param src Link source, url.
#' @param external Whether switch to an external link. FALSE by default.
#'
#' @examples
#' if(interactive()){
#'  library(shiny)
#'  library(shinyF7)
#'
#'  shiny::shinyApp(
#'    ui = f7Page(
#'     title = "My app",
#'     f7Link(label = "Google", src = "https://www.google.com"),
#'     f7Link(label = "Google", src = "https://www.google.com", external = TRUE)
#'    ),
#'    server = function(input, output) {}
#'  )
#' }
#'
#' @author David Granjon, \email{dgranjon@@ymail.com}
#'
#' @export
f7Link <- function(label = NULL, icon = NULL, src = NULL, external = FALSE) {

  linkCl <- "link"
  if (external) linkCl <- paste0(linkCl, " external")

 shiny::a(
   href = src,
   target = "_blank",
   class = linkCl,
   if (!is.null(icon)) {
     shiny::tagList(
       shiny::tags$i(class = "icon", icon),
       shiny::span(label)
     )
   } else {
     label
   }
 )
}