function [hs]=hour_angle(lat,delta)
% This function caculate hour angle
% lt = local time
% lat = latitude
% delta = declination
% h = hour angle in an hour
% hs = hour angle in a day
% auther : minlunwu, Atmospheric Sciences, PCCU

if lat >90 | lat < -90
     error('LAT value MUST between -90 and 90')
end
rlat=(lat/180)*pi;

if abs(tan(rlat)*tan(delta)) >=1
    if rlat*delta > 0
    hs=pi;
    else
    hs=0;
    end
else
    hs=acos(-tan(rlat)*tan(delta)) ;
end


end