#' @title Irfan says
#'
#' @author Christoph Stepper
#'
#' @param saying \code{character}. You can specify, which saying you'd like
#'   to be printed. By default (\code{NULL}), it takes a random sample.
#'
#' @return NULL
#'
#' @examples
#'  irfan_says(saying = "coffee")
#'
#' @importFrom cli cat_rule get_spinner symbol
#'
#' @export
irfan_says = function(saying = NULL) {

  if (is.null(saying)) {
    saying = sample(sayings, size = 1)
  }

  monkey = sample(cli::get_spinner("monkey")$frames, size = 1)

  cli::cat_rule(left = paste("Irfan says", cli::symbol$ellipsis))
  cli::cat_rule(right = paste(monkey, saying[[1]]), line = " ")
  cli::cat_rule()

}
