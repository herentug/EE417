function [saddist] = SADdist(K, trainsize, database, descriptor)
saddist=[];
for i=1:1:trainsize
    dist = 0;
    for j=1:1:K
        dist = dist + abs((database(i,j)-descriptor(j)));
    end
    saddist=[saddist; dist];
end
end

