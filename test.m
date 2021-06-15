clc;close all;clear
%% test
r = 90;
[xc,yc,p] = circle( 0,0,r );
axis equal
hold on
y = 0:10:90;
x = power(r^2-y.^2,0.5);


NH = find(yc>0);
SH = find(yc<0);
NHxc = xc(NH);
SHxc = xc(SH);
NHyc = yc(NH);
SHyc = yc(SH);

for n =1:9 %9
xline = -1*x(n):1:x(n);
xline2 =  -1*x(n+1):1:x(n+1);
yline = (n-1)*10*ones(size(xline));
yline2 = n*10*ones(size(xline));
if n ==9
    for nn = 1:size(NHxc(NHxc>xline(1)&NHxc<xline(end)))
        lxc = NHxc(NHxc>xline(1)&NHxc<xline(end)) ;
        NHxr = [ xline(1) lxc xline(end) ];
        lk = find(NHxc>xline(1)&NHxc<xline(end));
        lyc = NHyc(lk);
        NHyr = [  yline(1) lyc yline(end) ];
    end
    for nn = 1:size(SHxc(SHxc>xline(1)&SHxc<xline(end)))
        lxc = SHxc(SHxc>xline(1)&SHxc<xline(end)) ;
        SHxr = [ xline(1) lxc xline(end) ];
        lk = find(SHxc>xline(1)&SHxc<xline(end));
        lyc = SHyc(lk);
        SHyr = [ -yline(1) lyc -yline(end) ];
    end
else
    for nn = 1:size(NHxc(NHxc>xline(1)&NHxc<xline2(1)))
    lxc = NHxc(NHxc>xline(1)&NHxc<xline2(1)) ;
    lxr = [xline(1) lxc xline2(1)];
    rxc = NHxc(NHxc>xline2(length(xline2))&NHxc<xline(length(xline)));
    rxr = [xline2(length(xline2)) rxc  xline(length(xline)) ];
    NHxr = [lxr rxr];

    lk = find(NHxc>xline(1)&NHxc<xline2(1));
    lyc = NHyc(lk) ;
    lyr = [yline(1) lyc yline2(1)];
    rk = find(NHxc>xline2(length(xline2))&NHxc<xline(length(xline)));
    ryc = NHyc(rk);
    ryr = [yline2(length(yline2)) ryc yline(length(yline))];    
    NHyr = [ lyr ryr ];
    end
    for nn = 1:size(SHxc(SHxc>xline(1)&SHxc<xline2(1)))
    lxc = SHxc(SHxc>xline(1)&SHxc<xline2(1)) ;
    lxr = [xline(1) lxc xline2(1)];
    rxc = SHxc(SHxc>xline2(length(xline2))&SHxc<xline(length(xline)));
    rxr = [xline2(length(xline2)) rxc  xline(length(xline)) ];
    SHxr = [lxr rxr];

    lk = find(SHxc>xline(1)&SHxc<xline2(1));
    lyc = SHyc(lk) ;
    lyr = [-yline(1) lyc -yline2(1)];
    rk = find(SHxc>xline2(length(xline2))&SHxc<xline(length(xline)));
    ryc = SHyc(rk);
    ryr = [-yline2(length(yline2)) ryc -yline(length(yline))];    
    SHyr = [ lyr ryr ];
end
end
plot(xline,yline,'k','linewidth',2)
plot(xline,-yline,'k','linewidth',2)

[NHc,SHc] = colorselect(NHr,SHr);
fill(NHxr,NHyr,'color',NHc)
fill(SHxr,SHyr,'color',SHc)

end
hold off