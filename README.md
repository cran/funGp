![](https://github.com/djbetancourt-gh/funGp/blob/master/docs/logo.png?raw=true)

Gaussian Process Models for Scalar and Functional Inputs
--------------------------------------------------------

**Description:** funGp is a regression package based on Gaussian process models. It allows inputs to be either scalar, functional (represented as vectors), or a combination of both. A dimension reduction functionality is implemented in order aid keeping the model light while keeping enough information about the inputs for the model to predict well. Moreover, funGp offers a model selection feature which allows to tune different characteristics of the model such as the active scalar and functional inputs, the type of kernel function and the family of basis function used for the projection of the inputs. This is an extension of the work presented in Betancourt et al. (2020).

**Main functionalities** <br />
:small_blue_diamond: Creation of regression models <br />
:small_blue_diamond: Output estimation at unobserved input points <br />
:small_blue_diamond: Random sampling from a Gaussian process model <br />
:small_blue_diamond: Heuristic optimization of model structure <br />

**Note:** funGp was first developed in the frame of the RISCOPE research project, funded by the French Agence Nationale de la Recherche (ANR) for the period 2017-2021 (ANR project No. 16CE04-0011, [RISCOPE.fr](https://perso.math.univ-toulouse.fr/riscope/)), and certified by SAFE Cluster.

This project is licensed under the GPL-3 License. <br /><br />

**Installation**

    # Install release version from CRAN
    install.packages("funGp")

    # Install release version from GitHub
    # way 1
    library(devtools)
    install_github("djbetancourt-gh/funGp", dependencies = TRUE)

    # way 2
    library(githubinstall)
    githubinstall("funGp", dependencies = TRUE)
    
    
    # Install development version from GitHub
    # way 1
    library(devtools)
    install_github("djbetancourt-gh/funGp@develop", dependencies = TRUE)

    # way 2
    library(githubinstall)
    githubinstall("funGp@develop", dependencies = TRUE)

<br />

**Manual** :book: <br /> [Gaussian Process Regression for Scalar and Functional Inputs with funGp - The in-depth tour](https://hal.science/hal-02536624) <br /><br />

**Authors:** José Betancourt :wrench: (IMT, ENAC), François Bachoc (IMT), Thierry Klein (IMT, ENAC) and Jérémy Rohmer (BRGM).

**Contributors:** Yves Deville (Alpestat) and Déborah Idier (BRGM).

:wrench: maintainer - <a href = "mailto: fungp.rpack@gmail.com">fungp.rpack@gmail.com</a> <br /><br />

**Acknowledgments:** we are grateful to Yves Deville from Alpestat for his advice on the documentation of R packages and to Juliette Garcia from ENAC for her assistance on the stabilization of the Ant Colony algorithm for structural parameter optimization. <br /><br />

**References** <br />

Betancourt, J., Bachoc, F., Klein, T., Idier, D., Rohmer, J., and Deville, Y. (2024), "funGp: An R Package for Gaussian Process Regression with Scalar and Functional Inputs". *Journal of Statistical Software*, **109**, 5, 1--51.
[[JSS](https://doi.org/10.18637/jss.v109.i05)]

Betancourt, J., Bachoc, F., Klein, T., Idier, D., Pedreros, R., and Rohmer, J. (2020), "Gaussian process metamodeling of functional-input code for coastal flood hazard assessment". *Reliability Engineering & System Safety*, **198**, 106870. [[RESS](https://doi.org/10.1016/j.ress.2020.106870)] - [[HAL](https://hal.science/hal-01998724)]

Betancourt, J., Bachoc, F., Klein, T., and Gamboa, F. (2020), Technical Report: "Ant Colony Based Model Selection for Functional-Input Gaussian Process Regression. Ref. D3.b (WP3.2)". *RISCOPE project*. [[HAL](https://hal.science/hal-02532713)]

Betancourt, J., Bachoc, F., and Klein, T. (2020), R Package Manual: "Gaussian Process Regression for Scalar and Functional Inputs with funGp - The in-depth tour". *RISCOPE project*. [[HAL](https://hal.science/hal-02536624)]
