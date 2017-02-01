PointA = struct('mass',100,'chrg',100.000,'loca',[0,0],'velo', [0,0], 'forc',[0,0]);
PointB = struct('mass',100 ,'chrg',100.000,'loca',[0,1],'velo', [0,0], 'forc',[0,0]);
%PointC = struct('mass',3000,'loca',[1.000,3.000],'velo', [0,0], 'forc',[[0,-9.8];[0,9.8]]);

global G;
global E;
G = 6.67408 * 10^-11; % m^3 kg^-1 s^-2
E = 8.8541878176*10^-12;
Points = [PointA PointB];

clear PointA
clear PointB