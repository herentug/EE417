function [nomdist] = nomdistance1(K, trainsize, database, descriptor)
nomdist=[];
for i=1:1:trainsize
    dist = 0;
    for j=1:1:K
        dist = dist + (database(i,j)-descriptor(j));
    end
    nomdist=[nomdist; dist]; 
end
end
