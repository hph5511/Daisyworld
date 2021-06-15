function [NHc,SHc] = colorselect(NHr,SHr)
color = gray;
rr = [100 90 80 70 60 50 40 30 20 10  1 0.9 0.8 0.7 0.6 0.5 0.4 0.3 0.2 0.1];

for i = 1:length(rr)
    if i==length(rr)
        if NHr<rr(i)
            NHc = color(i*3,:);
        end
        if SHr<rr(i)
            SHc = color(i*3,:);
        end
    else
    if (NHr <= rr(i)) && (NHr>= rr(i+1))
        NHc = color(i*3,:);
    end
    if (SHr <= rr(i)) && (SHr>= rr(i+1))
        SHc = color(i*3,:);
    end
    end
end
end