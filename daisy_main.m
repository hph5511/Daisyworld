close all ; clear ; clc;

%% Parameter set
%
S0 = 1370 ;%(w*m^-2)
asw = 0 ; %�j���SW�l���v
alw = 1 ; %�j���LW�l���v
Q = 5.67*power(10,-8) ; %�v����i���ұ`��
b_a(1) = 0.5 ; %�����⭱�n�ƶq(��Ӳv = 0.25)
w_a(1) = 0.5 ; %�����⭱�n�ƶq(��Ӳv = 0.75)
s_a(1) = 1 - w_a(1) - b_a(1) ; %�d�g���n���(��Ӳv = 0.5)
R = 0.12 ; %�ū�insulation(0~1)
Dr = 0.3 ; % ���`�v 
L = 1 ; %���ӫ� (0.65~1.65)(�i�վ�)
n = 500 ; %(days)
T_bi = 20 + 273.15 ; %������ideal�ū�(K)(Brith Rate = 1)
T_wi = 25 + 273.15 ; %������ideal�ū�(K)(Brith Rate = 1)
dt = 10 ; %�ū׮e�\
T_bmax = T_bi + dt ;
T_bmin = T_bi - dt ;
T_wmax = T_wi + dt ;
T_wmin = T_wi - dt ;
s_b = 1/power(T_bi - T_bmax,2);
s_w = 1/power(T_wi - T_wmax,2);
%% boundary condition
%
% A(n) = ��P�ϷӲv
% Ts4(n) = �a��ū�(K)�|����
% Ts(n) = �a��ū�(K)
% T_b4(n) = ������a��ūץ|����
% T_b(n) = ������a��ū�(K)
% T_w4(n) = ������a��ūץ|����
% T_w(n) = ������a��ū�
% T_s4(n) = �g�[�a��ūץ|����
% T_s(n) = �g�[�a��ū�
% Br_color(n) = ���C��X�Ͳv
%===========================================================================
for i = 1:n
A(i) = (b_a(i)*0.25) + (w_a(i)*0.75) + (s_a(i)*0.5) ;
Ts4(i) = L*(S0/(4*Q))*(1-(1-asw)*A(i))*((2-asw)/(2-alw)) ;
Ts(i) = power(Ts4(i),0.25) ;
T_b4(i) = R*L*S0/(4*Q)*(A(i)-0.25) + Ts4(i) ;
T_w4(i) = R*L*S0/(4*Q)*(A(i)-0.75) + Ts4(i) ; 
T_s4(i) = R*L*S0/(4*Q)*(A(i)-0.5) + Ts4(i) ;
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
iii(i) = i ;
end

%===========================================================================
%% Figure
figure(1)
subplot(2,2,1)
plot(iii,w_a(1:n))
axis([0 50 0 1])
subplot(2,2,2)
plot(iii,b_a(1:n))
axis([0 50 0 1])
subplot(2,2,3)
plot(iii,T_s)
axis([0 50 250 350])
subplot(2,2,4)
plot(iii,A)
axis([0 50 0.3 0.5])