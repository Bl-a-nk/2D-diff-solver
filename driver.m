function driver(infile,outfile)
[n,hx,hy,tolerance,D,sigma,S]=stdin(infile);
phi_solved=diffusion_solver(n,hx,hy,D,sigma,S,tolerance);
stdout(phi_solved,n,outfile);
