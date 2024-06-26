# ==========================================================================================================
# S4 class for structures linked to the kernel of a \code{fgpm} model
# ==========================================================================================================
#' @title S4 class for structures linked to the kernel of a \code{fgpm} model
#' @description This is the formal representation for data structures linked to the kernel of a Gaussian
#'   process model within the \link[=funGp-package]{funGp package}.
#'
#' @slot kerType Object of class \code{"character"}. Kernel type. To be set from \{"gauss", "matern5_2",
#'   "matern3_2"\}.
#' @slot f_disType Object of class \code{"character"}. Distance type. To be set from \{"L2_bygroup",
#'   "L2_index"\}.
#' @slot varHyp Object of class \code{"numeric"}. Estimated variance parameter.
#' @slot s_lsHyps Object of class \code{"numeric"}. Estimated length-scale parameters for scalar inputs.
#' @slot f_lsHyps Object of class \code{"numeric"}. Estimated length-scale parameters for functional
#'   inputs.
#' @slot f_lsOwners Object of class \code{"character"}. Index of functional input variable linked to each
#'   element in \emph{f_lsHyps}
#'
#' @rdname kernel-class
#'
#' @author José Betancourt, François Bachoc, Thierry Klein and Jérémy Rohmer
#' @export
setClass("fgpKern",
         representation(
                        kerType = "character",          # kernel type. To be chosen from {"gauss", "matern5_2", "matern3_2"}
                        f_disType = "character",        # distance type. To be chosen from {"scalar", "functional"}
                        varHyp = "numeric",             # estimated variance parameter
                        s_lsHyps = "numeric",           # estimated length-scale parameters for scalar inputs
                        f_lsHyps = "numeric",           # estimated length-scale parameters for functional inputs
                        f_lsOwners = "character"        # owner of each length scale parameter in f_lsHyps
                        ),
         validity = function(object) {TRUE})
# ==========================================================================================================



# ==========================================================================================================
# Printer
# ==========================================================================================================
#' @rdname show-methods
#' @importFrom knitr kable
#' @aliases show,fgpKern-method
setMethod("show", "fgpKern", function(object) show.fgpKern(kernel = object))

show.fgpKern <- function(kernel) {
  ds <- length(kernel@s_lsHyps)
  df <- length(unique(kernel@f_lsOwners))

  mainTxt <- "Kernel structure"
  cat(paste("\n", mainTxt, paste(rep("_", 13), collapse = ""), sep = ""))

  cat(paste("\n* Kernel type: ", kernel@kerType, "\n", sep = ""))
  if (ds > 0)
    cat("* Scalar distance: L2_byindex\n")

  if (df > 0) {
    cat("* Functional distance:")
    np <- min(df, 8)
    G <- cbind(paste("F", 1:np, sep = ""), kernel@f_disType)
    colnames(G) <- c("Input", "Distance")
    if (np < df) {
      G <- rbind(G, rep("...", 2))
    }
    print(kable(G, align = 'c', row.names = FALSE))
  }

  cat("\n* Hyperparameters:\n")
  cat(paste("  -> variance: ", format(kernel@varHyp, digits = 3, nsmall = 4), "\n", sep = ""))
  cat("  -> length-scale:\n")
  max.pr <- 8
  if (ds*df > 0) {
    # prepare lenght-scale parameters for printing (allows to print a maximum of 8 length-scale parameters)
    a <- paste("X", 1:ds, sep = "")
    b <- kernel@f_lsOwners
    all.owners <- c(a, b)[order(c(seq_along(a)*2 - 1, seq_along(b)*2))]
    a <- kernel@s_lsHyps
    b <- kernel@f_lsHyps
    all.ls <- c(a, b)[order(c(seq_along(a)*2 - 1, seq_along(b)*2))]
    top.owners <- all.owners[1:min(max.pr,length(all.owners))]
    top.ls <- all.ls[1:min(max.pr,length(all.owners))]
    ids.s <- grepl("X", top.owners)
    ids.f <- grepl("F", top.owners)
    s.ls <- top.ls[ids.s]
    s.owners <- top.owners[ids.s]
    f.ls <- top.ls[ids.f]
    f.owners <- top.owners[ids.f]

    for (i in 1:length(s.ls)) {
      cat(paste("\t ls(", s.owners[i], "): ", format(s.ls[i], digits = 3, nsmall = 4), "\n", sep = ""))
    }
    for (i in 1:length(f.ls)) {
      cat(paste("\t ls(", f.owners[i], "): ", format(f.ls[i], digits = 3, nsmall = 4), "\n", sep = ""))
    }
    if (length(all.ls) > max.pr)
      cat("\n Some length-scale parameters were not printed. Consider\n checking 'model@kern@s_lsHyps' and 'model@kern@f_lsHyps'\n")

  } else if (df > 0) {
    ids.f <- 1:min(max.pr,length(kernel@f_lsHyps))
    f.ls <- kernel@f_lsHyps[ids.f]
    f.owners <- kernel@f_lsOwners[ids.f]
    for (i in 1:length(f.ls)) {
      cat(paste("\t ls(", f.owners[i], "): ", format(f.ls[i], digits = 3, nsmall = 4), "\n", sep = ""))
    }
    if (length(f.ls) > max.pr)
      cat("\n Some length-scale parameters were not printed. Consider\n checking 'model@kern@f_lsHyps'\n")

  } else {
    ids.s <- 1:min(max.pr,length(kernel@s_lsHyps))
    s.ls <- kernel@s_lsHyps[ids.s]
    s.owners <- paste("X", 1:ds, sep = "")
    for (i in 1:length(s.ls)) {
      cat(paste("\t ls(", s.owners[i], "): ", format(s.ls[i], digits = 3, nsmall = 4), "\n", sep = ""))
    }
    if (length(s.ls) > max.pr)
      cat("\n Some length-scale parameters were not printed. Consider\n checking 'model@kern@s_lsHyps'\n")
  }
  cat(paste(rep("_", 29), collapse = ""))
}
# ==========================================================================================================
