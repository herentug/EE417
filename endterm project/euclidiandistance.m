function [eucdistances] = euclidiandistance(K, trainsize, database, descriptor)
eucdistances = [];
for i=1:1:trainsize
    eucdist = 0;
    for j=1:1:K
        eucdist = eucdist + (database(i,j)-descriptor(j))^2;
    end
    eucdistances = [eucdistances; sqrt(eucdist)];
end
end

