function netTorq = netTorq(network)
   netTorq = 0;
   com = centerOfMass(network);
   for P = network.pnts
       cp = cross([disVec(com,P) 0],[netForce(P) 0]);
       netTorq = netTorq + cp(3);
   end
end