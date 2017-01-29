function pointAfter = movePt(pointBefore, time)
%{
using the net Force from above, and the physics equations of motion
to calculate the factors of point after the given time interval 
%}
[NFx,NFy] = netForce(pointBefore)
accx = NFx/pointBefore.mass;
accy = NFy/pointBefore.mass;
Vx = pointBefore.velo + accx*time;
Delx = pointBefore.velo*time+(.5)*(accx)*(time)^2;
Vy = pointBefore.velo + accy*time;
Dely = pointBefore.velo*time+(.5)*(accy)*(time)^2;
newptx = Delx+pointBefore.loca (1);
newpty = Dely+pointBefore.loca(2);
pointAfter = struct('mass',pointBefore.mass,'loca',[1.000,-1.000],'velo', [0,0], 'forc',pointBefore.forc);
pointAfter.loca = [newptx, newpty];
pointAfter.velo = [Vx, Vy];
end 