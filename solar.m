function [qd]=solar(S,delta,lat,hs)
% This function caculate solar radiation on the top of the troposphere
% S = corrected solar constant
% delta = declination
% lat = latitude
% hs = hour angle in a day
% h = hour angle in an hour
% coszen = cos(zenieth angle)
% qh = solar radiation of particular time
% qd = total solar radiation of a day 
% auther : minlunwu, Atmospheric Sciences, PCCU

if lat >90 | lat < -90
     error('LAT value MUST between -90 and 90')
end
rlat=(lat/180)*pi;

qd=S/pi*(hs*sin(delta)*sin(rlat)+cos(delta)*cos(rlat)*sin(hs));


end
