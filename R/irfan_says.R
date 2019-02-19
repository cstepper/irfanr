#' @title Irfan says
#'
#' @author Christoph Stepper
#'
#' @param x \code{numeric} vector of values whose weighted mean is to be coputed.
#' @param w \code{numeric} vector of weights with the same length as \code{x}.
#' @param na.rm \code{logical}; if \code{TRUE} (default), \code{NA} values
#'   in \code{x} are stripped before the computation proceeds.
#'
#' @return \code{numeric} vector of length one.
#'
#' @examples
#'   x =  rnorm(n = 10, mean = 100, sd = 20)
#'   w = sample(x = 10:30, size = 10, replace = TRUE)
#'   wtd_mean(x, w)
#'
#' @seealso See \code{\link[stats]{weighted.mean}} for the corresponding
#'   \code{stats} function.
#'
#' @importFrom Hmisc wtd.mean
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
