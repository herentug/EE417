function [msedist] = MSEdist(K, trainsize, database, descriptor)
msedist=[];
for i=1:1:trainsize
    dist = 0;
    for j=1:1:K
        dist = dist + (database(i,j)-descriptor(j))^2;
    end
    msedist = [msedist; dist/K];
end
end
