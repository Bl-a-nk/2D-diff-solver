function [ndim,hx,hy,tolerance,D,sigma,S]=stdin(filename)
format long
fID=fopen(filename,'r');
file=fscanf(fID,'%f');
ndim=file(1);

if length(file)>(ndim^2)*3+4
    error('Error 1: Too much data');
elseif length(file)<(ndim^2)*3+4
    error('Error 2: Not enough data');
end

%%
% Read parameters
hx=file(2);
hy=file(3);
tolerance=file(4);

%%
D=ones(ndim,ndim); sigma=ones(ndim,ndim); S=ones(ndim,ndim);

for i=1:ndim
    for j=1:ndim
        D_val=file((i-1)*ndim+j+4);
        sigma_val=file((i-1)*ndim+j+4+ndim^2);
        S_val=file((i-1)*ndim+j+4+2*(ndim^2));
        if D_val<0
            error('Error in D');
        elseif sigma_val<0
            error('Error in sigma');
        elseif S_val<0
            error('Eroor in S');
        end
        D(i,j)=D_val;
        sigma(i,j)=sigma_val;
        S(i,j)=S_val;
    end
end
end