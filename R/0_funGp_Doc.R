#' @title Gaussian Process Models for Scalar and Functional Inputs
#'
#' @description Construction and smart selection of Gaussian process models for analysis of computer experiments with emphasis on treatment of functional inputs that are regularly sampled. Smart selection is based on Ant Colony Optimization ACO algorithm.
#'
#' @section Base functionalities:
#' \itemize{
#'  \item\strong{Main methods}\cr
#'        \link[funGp]{fgpm}: creation of funGp regression models \cr
#'        \link[funGp]{predict,fgpm-method}: output estimation at new input points based on a funGp model \cr
#'        \link[funGp]{simulate,fgpm-method}: random sampling from a funGp Gaussian process model \cr
#'        \link[funGp]{update,fgpm-method}: modification of data and hyperparameters of a funGp model
#'  \item\strong{Plotters}\cr
#'        \link[funGp]{plot,fgpm-method}: validation plot for a \code{fgpm} model \cr
#'        \link[funGp]{plot.predict.fgpm}: plot of predictions based on a \code{fgpm} model \cr
#'        \link[funGp]{plot.simulate.fgpm}: plot of simulations based on a \code{fgpm} model
#' }
#'
#' @section Model selection:
#' \itemize{
#'  \item\strong{Main method}\cr
#'        \link[funGp]{fgpm_factory}: structural parameter optimization
#'  \item\strong{Functions for pre-optimization}\cr
#'        \link[funGp]{decay}: regularized initial pheromones \cr
#'        \link[funGp]{decay2probs}: normalized initial pheromones
#'  \item\strong{Plotters post-optimization}\cr
#'        \link[funGp]{plot,Xfgpm-method}: plot of the evolution of the algorithm with \code{which = "evolution"}
#'        or of the absolute and relative quality of the optimized model with \code{which = "diag"}
#'  \item\strong{Correction post-optimization of input data structures}\cr
#'        \link[funGp]{which_on}: indices of active inputs in a model
#'        structure delivered by \link[funGp]{fgpm_factory}\cr
#'        \link[funGp]{get_active_in}: extraction of active input
#'        data based on a model structure delivered by \link[funGp]{fgpm_factory}
#' }
#'
#' @section Useful material:
#' \itemize{
#'  \item\strong{Manual:} funGp: An R Package for Gaussian Process Regression with Scalar and Functional Inputs
#'  (\doi{https://doi.org/10.18637/jss.v109.i05})
#'  \item\strong{Paper:} - Gaussian process metamodeling of functional-input code for coastal flood hazard assessment
#'  (\doi{https://doi.org/10.1016/j.ress.2020.106870})
#'  \item\strong{Tech. report:} Ant Colony Based Model Selection for Functional-Input Gaussian Process Regression
#'  (\url{https://hal.science/hal-02532713})
#' }
#'
#' @section Authors:
#' José Betancourt, François Bachoc and Thierry Klein
#'
#' @section Contributors:
#' Déborah Idier and Jérémy Rohmer
#'
#' @note This package was first developed in the frame of the RISCOPE research project, funded
#'   by the French Agence Nationale de la Recherche (ANR) for the period 2017-2021 (ANR,
#'   project No. 16CE04-0011,
#'   \href{https://perso.math.univ-toulouse.fr/riscope/}{
#'   RISCOPE.fr}), and certified by SAFE Cluster.
#'
#' @name funGp-package
"_PACKAGE"
NULL

