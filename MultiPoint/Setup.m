PointA = struct('mass',1,'chrg',0,'loca',[0,1],'velo', [0,0], 'forc',[0,0]);
PointB = struct('mass',1,'chrg',0,'loca',[0,0],'velo', [0,0], 'forc',[0,0]);

PointC = struct('mass',1,'chrg',0,'loca',[1,1],'velo', [0,0], 'forc',[0,0]);
PointD = struct('mass',1,'chrg',0,'loca',[1,0],'velo', [0,0], 'forc',[0,0]);

Network1 = struct('pnts',[PointA PointB],'loca',[0 0],'velo',[0,0],'avel',0,'mass',0,'mofi',0,'forc',[0 0]);
Network2 = struct('pnts',[PointC PointD],'loca',[0 0],'velo',[0,0],'avel',0,'mass',0,'mofi',0,'forc',[0 0]);

Networks = [Network1 Network2];

for N = 1:length(Networks)
   Networks(N) = construct(Networks(N)); 
end

