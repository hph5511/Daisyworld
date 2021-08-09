function jd=julian_date(yyyy,mm,dd)
% This function caculate the day of the year
% jd value in range of 1 to 365
% i.e. the jd of 2020/1/1 = 1, 2020/12/31 = 365
% auther : minlunwu, Atmospheric Sciences, PCCU

if  mm<=0 | mm >12 | dd <= 0 | dd > 31 
     error('invalid date value')
end

jd=juliandate(datetime(yyyy,mm,dd))-juliandate(datetime(yyyy,1,1))+1;

end
