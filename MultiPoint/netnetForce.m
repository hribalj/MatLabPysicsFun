function nnF = netnetForce(network)
    X = 0;
    Y = 0;
    for P = network.pnts
        nF = netForce(P);
        X = X + nF(1);
        Y = Y + nF(2);
    end
    nnF = [X Y];
end