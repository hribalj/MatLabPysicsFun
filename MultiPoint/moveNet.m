function network = moveNet(network,time)
    [NFx,NFy] = netnetForce(network);
    accx = NFx/network.mass;
    accy = NFy/network.mass;
    Vx = network.velo(1) + accx*time;
    Delx = network.velo(1)*time+(.5)*(accx)*(time)^2;
    Vy = network.velo(2) + accy*time;
    Dely = network.velo(2)*time+(.5)*(accy)*(time)^2;
    newptx = Delx+network.loca(1);
    newpty = Dely+network.loca(2);
    network.loca = [newptx, newpty];
    network.velo = [Vx, Vy];
end 
