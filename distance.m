function [S,dis]=distance(jd,S0)
% This function caculate the distance between earth and sun
% S = corrected solar constant
% dis = (dm/d)^2 [Duffie and Beckman (1980)]
% So = solar constant
% auther : minlunwu, Atmospheric Sciences, PCCU

if jd >365 | jd < 0
     error('jd value MUST between 1 and 365')
end

dis=1+0.033*cos(2*pi*(jd./365));
S=S0*dis;

end