 function cenOfMass = centerOfMass(network)
    sumX = 0;
    sumY = 0;
    sumM = 0;
    for P = network.pnts
        sumX = sumX + P.loca(1)*P.mass;
        sumY = sumY + P.loca(2)*P.mass;
        sumM = sumM + P.mass;
    end
    cenOfMass = [sumX sumY]./sumM;
end