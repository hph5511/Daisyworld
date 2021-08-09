clc;close all;clear;

jd = 80;
n = 7;
S0 = 6000;
T_b = 18;
A_b = 0.6;
T_w = 25;
A_w = 0.2;
Dr = 0.3;
dt = 7;
asw = 0;
alw = 1;
abb = 0.25;
abw = 0.75;
abs = 0.5;
lat = -88:2:88;
r = 90;
zz = linspace(-88,88,89);
theta = acos(zz/r);
phy = linspace(0,2*pi,101);
array = linspace(1,100,100);
C_array = nan(89,100);
for i = 1:length(lat)
    [S,dis] = distance(jd,S0);
    [delta] = declination(jd);
    [hs(i)] = hour_angle(lat(i),delta);
    [qd(i)] = solar(S,delta,lat(i),hs(i));
    [iii,w_a,b_a,s_a,Ts,Ta,A,n] = daisy(n,qd(i),T_b,A_b,T_w,A_w,Dr,dt,asw,alw,abb,abw,abs);
    wa(i,:) = w_a;
    ba(i,:) = b_a;
    sa(i,:) = s_a;
    Tsa(i,:) = Ts;
    Taa(i,:) = Ta;
    Aa(i,:) = A;
end
for i = 1:n
    avg_wa(i) = mean(wa(:,i));
    avg_ba(i) = mean(ba(:,i));
    avg_sa(i) = mean(sa(:,i));
    avg_Tsa(i) = mean(Tsa(:,i));
    avg_Taa(i) = mean(Taa(:,i));
    avg_Aa(i) = mean(Aa(:,i));
end
sai = round(sa.*100);
wai = round(wa.*100);
bai = round(ba.*100);
daisymap = [0.64 0.38 0.13;1 1 1;0 0 0];

p1t = nan(89,n);
p4t = nan(89,n);
p5t = nan(89,n);

xx = linspace(0,100,100);
yy = linspace(-88,88,89);

[xs,ys] = meshgrid(xx,yy);
zs = zeros(89,100);
%%
tic
for day = 1:n%n5
    
    for i = 1:length(theta)
        for j = 1:length(phy)
            x(i,j) = r*sin(theta(i))*cos(phy(j));
            y(i,j) = r*sin(theta(i))*sin(phy(j));
            z(i,j) = r*cos(theta(i));
        end
        p1 = randperm(100,sai(i,day));
        C_array(i,p1(:)) = -1;
        p2 = setdiff(array,p1);
        p3 = randperm(length(p2),bai(i,day));
        p4 = p2(p3(:));
        C_array(i,p4(:)) = 1;
        p5 = setdiff(p2,p4);
        C_array(i,p5(:))= 0;
        
        p1t(i,day) = length(p1);
        p4t(i,day) = length(p4);
        p5t(i,day) = length(p5);
    end
    figure(day);
    axes;
    set(gca,'color','k','xcolor','none','ycolor','none','zcolor','none','xtick',[],'ytick',[],'ztick',[],'xticklabel','','yticklabel','','zticklabel','')
    lim = [-88 88]; ticks = -90:30:90;
    xlim([-90 90]); ylim([-90 90]); zlim(lim)
    hold on
    surf(x,y,z,'edgecolor','none','CData',C_array)
    colormap(daisymap)
    colorbar('Ticks',[-0.7,0,0.7],'TickLabels',{'Wasteland','White','Black'})
    hold off
    axis square;
    view(90,0)
    
    figure(day+n);

    axes
    xtick = 0:60:360;
    xlim([0 100]); ylim(lim);
    xticks(linspace(0,100,7));yticks(ticks);
    set(gca,'xticklabel',xtick);
    xlabel('Lon'); ylabel('Lat');
    hold on
    surf(xs,ys,zs,'edgecolor','none','CData',C_array)
    colormap(daisymap)
    colorbar('Ticks',[-0.7,0,0.7],'TickLabels',{'Wasteland','White','Black'})
    hold off

    figure(day+2*n);
    axes;
    set(gca,'color','k','xcolor','none','ycolor','none','zcolor','none','xtick',[],'ytick',[],'ztick',[],'xticklabel','','yticklabel','','zticklabel','')
    lim = [-88 88]; ticks = -90:30:90;
    xlim([-90 90]); ylim([-90 90]); zlim(lim)
    hold on
    T_array = nan(89,100);
    for nnn = 1:100
    T_array(:,nnn) = Tsa(:,day);
    end
    surf(x,y,z,'edgecolor','none','CData',T_array)
    colormap(jet)
    colorbar;
    hold off
    axis square;
    view(90,0)
    
end
toc

function [iii,w_a,b_a,s_a,Ts,Ta,A,n] = daisy(n,S0,T_b,A_b,T_w,A_w,Dr,dt,asw,alw,abb,abw,abs)
b_a(1) = A_b;
w_a(1) = A_w;
s_a(1) = 1 - w_a(1) - b_a(1);
Q = 5.67*power(10,-8) ; %史蒂芬波茲曼常數
R = 0.12;%溫度insulation(0~1)
L = 1;%光照度 (0.65~1.65)(可調整)
T_bi = T_b + 273.15 ; %黑雛菊ideal溫度(K)(Brith Rate = 1)
T_wi = T_w + 273.15 ; %白雛菊ideal溫度(K)(Brith Rate = 1)
T_bmax = T_bi + dt ;
T_bmin = T_bi - dt ;
T_wmax = T_wi + dt ;
T_wmin = T_wi - dt ;
s_b = 1/power(T_bi - T_bmax,2);
s_w = 1/power(T_wi - T_wmax,2);
for i = 1:n
    A(i) = (b_a(i)*abb) + (w_a(i)*abw) + (s_a(i)*abs) ;
    Ts4(i) = L*(S0/(4*Q))*(1-(1-asw)*A(i))*((2-asw)/(2-alw)) ;
    Ts(i) = power(Ts4(i),0.25) ;
    Ta4(i) = ((S0/(4*Q))*((1-A(i))*(1-asw)*alw)) + (((1+((1-asw)*A(i))))*asw);
    Ta(i)  =power(Ta4(i),0.25);
    T_b4(i) = R*L*S0/(4*Q)*(A(i)-abb) + Ts4(i) ;
    T_w4(i) = R*L*S0/(4*Q)*(A(i)-abw) + Ts4(i) ;
    T_s4(i) = R*L*S0/(4*Q)*(A(i)-abs) + Ts4(i) ;
    T_b(i) = power(T_b4(i),0.25) ;
    T_w(i) = power(T_w4(i),0.25) ;
    T_s(i) = power(T_s4(i),0.25) ;
    Br_b(i) = 1 - (s_b*power(T_b(i)-T_bi,2)) ;
    if Br_b(i) < 0
        Br_b(i) = 0;
    end
    Br_w(i) = 1 - (s_w*power(T_w(i)-T_wi,2)) ;
    if Br_w(i) < 0
        Br_w(i) = 0;
    end
    b_a(i+1) = b_a(i) + (b_a(i)*((Br_b(i)*s_a(i))-Dr)) ;
    if b_a(i+1) < 0.01
        b_a(i+1) = 0.01 ;
    else b_a(i+1) = b_a(i+1) ;
    end
    w_a(i+1) = w_a(i) + (w_a(i)*((Br_w(i)*s_a(i))-Dr)) ;
    if w_a(i+1) < 0.01
        w_a(i+1) = 0.01 ;
    else w_a(i+1) = w_a(i+1) ;
    end
    s_a(i+1) = 1 - b_a(i+1) - w_a(i+1) ;
    iii(i) = i-1 ;
end
end
