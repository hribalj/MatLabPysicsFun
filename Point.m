PointA = struct('mass',1.000,'loca',[1.000,1.000],'velo', [0,0], 'forc',[[0,9.8]]);
PointB = struct('mass',2.000,'loca',[1.000,2.000],'velo', [0,0], 'forc',[[0,-9.8];[0,9.8]]);
PointC = struct('mass',3.000,'loca',[1.000,3.000],'velo', [0,0], 'forc',[[0,-9.8];[0,9.8]]);

global G;
G = 6.67408 * 10^-11; % m^3 kg^-1 s^-2

Points = [PointA PointB PointC]