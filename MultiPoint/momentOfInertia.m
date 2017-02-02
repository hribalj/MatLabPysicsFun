function mOI = momentOfInertia(network)
    mOI = 0;
    cOM = centerOfMass(network);
    for P = network.pnts
       mOI = mOI + P.mass * distance(P.loc,cOM)^2; 
    end
end