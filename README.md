# 2D-diff-solver
2D diffusion solver w/ SOR

2D Diffusion solver, formulated under the FEM, using the SOR method to solve for the flux.

The solver is made up of 4 component routines: diffusion_solver, driver, stdin, stdout

The input file needs to contain the following variables :
* n,  dimension of the system
* D, matrix of diffusion coefficient
* \Sigma, matrix of absorption cross section
* S, matrix of source values
* \delta, cell width (FEM)
* \epsilon, cell height (FEM)
* \xi, tolerance (SOR)

A user only needs to call 'driver' to solve for the flux; all the other routines are called internally.

## Example run
Given an input file called 'my_Input' and desired output file name 'my_Output'
