function [ssddistance] = SSDdist(K, trainsize, database, descriptor)
ssddistance=[];
for i=1:1:trainsize
    dist = 0;
    for j=1:1:K
        dist = dist + (database(i,j)-descriptor(j))^2;
    end
    ssddistance = [ssddistance; dist];
end
end

