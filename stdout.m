function stdout(phi,n,outfile)
fID=fopen(outfile,'w');

for i=1:n
    for j=1:n-1
        fprintf(fID,'%.8f ',phi(i,j));
    end
    fprintf(fID,'%.8f \n',phi(i,n));
end
end