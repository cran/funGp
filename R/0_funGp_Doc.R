#' @title Gaussian Process Models for Scalar and Functional Inputs
#'
#' @description Construction and smart selection of Gaussian process models with emphasis on treatment of functional inputs.
#'
#' @section Base functionalities:
#' \itemize{
#'  \item{\strong{Main methods}}{\cr
#'        \link[funGp]{fgpm}: creation of funGp regression models \cr
#'        \link[funGp]{predict}: output estimation at new input points based on a funGp model \cr
#'        \link[funGp]{simulate}: random sampling from a funGp Gaussian process model \cr
#'        \link[funGp]{update}: modification of data and hyperparameters of a funGp model
#'  }
#'  \item{\strong{Plotters}}{\cr
#'        \link[funGp]{plotLOO}: validation plot for a funGp model \cr
#'        \link[funGp]{plotPreds}: plot of predictions based on a funGp model \cr
#'        \link[funGp]{plotSims}: plot of simulations based on a funGp model
#'  }
#' }
#'
#' @section Model selection:
#' \itemize{
#'  \item{\strong{Main method}}{\cr
#'        \link[funGp]{fgpm_factory}: structural parameter optimization
#'  }
#'  \item{\strong{Plotters pre-optimization}}{\cr
#'        \link[funGp]{decay}: regularized initial pheromones \cr
#'        \link[funGp]{decay2probs}: normalized initial pheromones
#'  }
#'  \item{\strong{Plotters post-optimization}}{\cr
#'        \link[funGp]{plotX}: absolute and relative quality of the optimized model \cr
#'        \link[funGp]{plotEvol}: evolution of the algorithm
#'  }
#'  \item{\strong{Correction post-optimization of input data structures}}{\cr
#'        \link[funGp]{which_on}: indices of active inputs in a model structure delivered by \link[funGp]{fgpm_factory} \cr
#'        \link[funGp]{get_active_in}: extraction of active input data based on a model structure delivered by \link[funGp]{fgpm_factory}
#'  }
#' }
#'
#' @section Useful material:
#' \itemize{
#'  \item{\strong{Manual}}{
#'  \href{https://hal.archives-ouvertes.fr/hal-02536624}{
#'  Gaussian Process Regression for Scalar and Functional Inputs with funGp - The in-depth tour
#'  }}
#'  \item{\strong{Paper}}{
#'  \href{https://www.sciencedirect.com/science/article/abs/pii/S0951832019301693}{
#'  Gaussian process metamodeling of functional-input code for coastal flood hazard assessment
#'  }}
#'  \item{\strong{Tech. report}}{
#'  \href{https://hal.archives-ouvertes.fr/hal-02532713}{
#'  Ant Colony Based Model Selection for Functional-Input Gaussian Process Regression
#'  }}
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
#' @docType package
#' @name funGp-package
NULL
