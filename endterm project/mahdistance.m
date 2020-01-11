function [mahdistances] = mahdistance(K, trainsize, database, descriptor,D)  
mahdistances = [];
for i=1:1:trainsize    
    mahdist = 0;
    for j=1:1:K
        mahdist = mahdist + ((database(i,j)-descriptor(j))^2)/D(j,j);
    end
    mahdistances = [mahdistances; mahdist];
end
end

