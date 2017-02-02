function network = construct(network)
    netMass = 0;
    for P = network
        netMass = netMass + P.mass;
    end
    network.mass = netMass;
    network.loca = centerOfMass(network);
    network.mofi = momentOfInertia(network);
end