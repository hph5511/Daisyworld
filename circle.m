function [xx,yy,p] = circle( x,y,r )
ang = 0:0.01:2*pi;
xp = r*cos(ang);
yp = r*sin(ang);
xx = x+ xp ;
yy = y+yp ;
p = plot(xx,yy,'k','linewidth',2);
end

