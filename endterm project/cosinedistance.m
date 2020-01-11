function [cosdist] = cosinedistance(K, trainsize, database, descriptor)
cosdist=[];
for i=1:1:trainsize
    totalxy=0;
    totalx=0;
    totaly=0;
    for j=1:1:K
      totalxy=totalxy+ (database(i,j)*descriptor(j));
      totalx=totalx +(database(i,j))^2;
      totaly=totaly +(descriptor(j))^2;     
    end
    ratio=sqrt(totalx)+sqrt(totaly);
    cosdist = [cosdist; 1-(totalxy/ratio)];
end
end

