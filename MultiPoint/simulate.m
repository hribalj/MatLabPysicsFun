function Networks = simulate(Networks,forceFuncs,interval,time)
    eTime = 0;
    while eTime < time
        for N = 1:Networks
            TNET = Networks(N);
            for P = TNET
                TNET = construct(TNET);
            end
            for F = 1:length(forceFuncs)
                TNET.pnts = forceFuncs{F}(TNET.pnts);
            end
            TNET = moveNet(TNET,interval);
            TNET = netRotate(TNET,interval);
            Networks(N) = TNET;
        end
        eTime = eTime + interval;
   end
end