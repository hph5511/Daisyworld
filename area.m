function [ a ] = area(r)
theta = [10 20 30 40 50 60 70 80 90];

sa(1) = r * r * pi *(10/360);
ta(1) = sqrt(10^2-r^2)*10/2;
a(1) = sa(1) + ta(1);

for i = 2:9
    sa(i) = r * r * pi *(theta(i)/360);
    ta(i) = sqrt(theta(i)^2-r^2)*theta(i)/2;
    a(i) = sa(i) + ta(i) - sum(a(1:i-1));
end
a = 2*a;
end

