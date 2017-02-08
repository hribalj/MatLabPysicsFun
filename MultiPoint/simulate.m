function Networks = simulate(Networks,pntForceFuncs,interval,time,options)
    eTime = 0;
    while eTime < time
        for N = 1:length(Networks)
            TNET = Networks(N);
            for P = TNET
                TNET = construct(TNET);
            end
            for F = 1:length(pntForceFuncs)
                TNET.pnts = pntForceFuncs{F}(TNET.pnts);
            end
            for F = 1:length(netwForceFuncs)
                TNET = netwForceFuncs{F}(TNET);
            end
            TNET = moveNet(TNET,interval);
            TNET = netRotate(TNET,interval);
            Networks(N) = TNET;
        end
        eTime = eTime + interval;
        drawGUI(networks,options);
   end
end