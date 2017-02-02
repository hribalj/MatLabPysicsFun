function cenOfMass = centerOfMass(network)
    sumX = 0;
    sumY = 0;
    sumM = 0;
    for P = network.pnts
        sumX = sumX + P.loc(1)*P.mass;
        sumY = sumY + P.loc(2)*P.mass;
        sumM = sumM + P.mass;
    end
    cenOfMass = [sumX/sumM sumY/sumM];
end