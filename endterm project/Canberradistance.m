function [candist] = Canberradistance(K, trainsize, database, descriptor)
candist=[];
for i=1:1:trainsize
    dist = 0;
    for j=1:1:K
        dist = dist + (abs(database(i,j)-descriptor(j)))/ (abs(database(i,j))+ abs(descriptor(j)));
    end
    candist = [candist; dist];
end
end

