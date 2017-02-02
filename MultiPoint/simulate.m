function Networks = simulate(Networks,forceFuncs,interval,time)
    eTime = 0;
    while eTime < time
        for N = 1:Networks
            TNET = Networks(N);
            for P = TNET
                TNET(P) = clearForces(TNET(P));
            end
            for F = 1:length(forceFuncs)
                TNET.pnts = forceFuncs{F}(TNET.pnts);
            end
            TNET = moveNet(TNET,interval);
            TNET = rotate(TNET,interval);
            Networks(N) = TNET;
        end
        eTime = eTime + interval;
   end
end