function mOI = momentOfInertia(network)
    mOI = 0;
    cOM = centerOfMass(network);
    for P = network.pnts
       A = struct('loca',P.loca);
       B = struct('loca',cOM);
       mOI = mOI + P.mass * distance(A,B)^2; 
    end
end