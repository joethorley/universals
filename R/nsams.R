#' Number of Samples
#'
#' Gets the number of sample values (simulations * terms)
#' of an MCMC object.
#'
#' @inheritParams params
#' @return An integer scalar of the number of samples.
#' @family MCMC dimensions
#' @export
nsams <- function(x, ...) UseMethod("nsams")

#' @description
#' The default methods returns the product of [nsims()] and [nterms()].
#' @rdname nsams
#' @export
nsams.default <- function(x, ...) {
  nsims(x, ...) * nterms(x, ...)
}
