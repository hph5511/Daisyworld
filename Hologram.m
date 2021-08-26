clc,clear
A=cell(1,50);%存原圖
B=cell(1,50);%存二值
C=cell(1,50);%存全息
name = [0 90 180 270];
%% 
for i=1:1:50
    A{1,i}=cell(1,4);
    B{1,i}=cell(1,4);
    for j=1:1:4
        I=imread([num2str(name(j)),'.png']);
        if(j==4)
            I=imrotate(I,270);
        elseif(j==3)
            I=imrotate(I,180);
        elseif(j==2)
            I=imrotate(I,90);
        end
        A{i}{j}=I;
        J=rgb2gray(I);
        bw=im2bw(J,0.75);
        se=strel('disk',1,0);
        bw=imopen(bw,se);
        bw=bwareaopen(bw,60,8);
        B{i}{j}=bw;
    end
end
%% 
for i=1:1:1
    C{1,i}=zeros(1200,1200,3);
    for j=1:1:4
        [m,n]=size(B{i}{j});
        if(j==4)
            w=600;
            h=300;
        elseif(j==3)
            w=300;
            h=600;
        elseif(j==2)
            w=600;
            h=900;
        else
            w=900;
            h=600;
        end
        for x=1:1:m
            for y=1:1:n
                if (B{i}{j}(x,y)==0)
                    C{i}(w-round(m/2)+x,h-round(n/2)+y,1)=A{i}{j}(x,y,1);
                    C{i}(w-round(m/2)+x,h-round(n/2)+y,2)=A{i}{j}(x,y,2);
                    C{i}(w-round(m/2)+x,h-round(n/2)+y,3)=A{i}{j}(x,y,3);
                    C{i}=uint8(C{i});
                end
            end
        end
    end
end
%% 
% while(1)
%     for i=1:1:50
         imshow(C{1});
         print('3D220','-dpng')
%         pause(0.1);
%     end
% end