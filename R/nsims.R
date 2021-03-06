#' Number of Simulations
#'
#' Gets the number of simulations (iterations * chains)
#' of an MCMC object.
#'
#' @inheritParams params
#' @return An integer scalar of the number of simulations.
#' @family MCMC dimensions
#' @export
nsims <- function(x, ...) {
  UseMethod("nsims")
}

#' @description
#' The default methods returns the product of [nchains()] and [niters()].
#' @rdname nsims
#' @export
nsims.default <- function(x, ...) {
  nchains(x, ...) * niters(x, ...)
}
