function [chebdist] = Chebyshevdist(K, trainsize, database, descriptor)
chebdist=[];
for i=1:1:trainsize
    dist = [];
    for j=1:1:K
        dist = [dist ;abs(database(i,j)-descriptor(j))];
    end
    chebdist = [chebdist; max(dist)];
end
end


