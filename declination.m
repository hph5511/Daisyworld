function [delta]=declination(jd)
% This function transform the day of the year into declination
% jd = the day of the year
% gamma = the position of earth in a year
% delta = declination [Spencer (1971)]
% auther : minlunwu, Atmospheric Sciences, PCCU

if jd >365 | jd < 0
     error('jd value MUST between 1 and 365')
end

gamma=2*pi*(jd-1)/365;
delta=0.006918-0.399912*cos(gamma)+0.070257*sin(gamma)-0.006758*cos(2*gamma)+0.000907*sin(2*gamma)-0.002697*cos(3*gamma)+0.00148*sin(3*gamma);

end