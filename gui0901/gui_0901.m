function varargout = gui_0901(varargin)
% GUI_0901 MATLAB code for gui_0901.fig
%      GUI_0901, by itself, creates a new GUI_0901 or raises the existing
%      singleton*.
%
%      H = GUI_0901 returns the handle to a new GUI_0901 or the handle to
%      the existing singleton*.
%
%      GUI_0901('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI_0901.M with the given input arguments.
%
%      GUI_0901('Property','Value',...) creates a new GUI_0901 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gui_0901_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gui_0901_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gui_0901

% Last Modified by GUIDE v2.5 02-Sep-2021 21:07:49

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gui_0901_OpeningFcn, ...
                   'gui_OutputFcn',  @gui_0901_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before gui_0901 is made visible.
function gui_0901_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gui_0901 (see VARARGIN)
cla(handles.axes6);
cla(handles.axes2);cla(handles.axes3);cla(handles.axes4);

handles.logo = imread('EWaC-logo.jpg');
image(handles.axes1,handles.logo)
set(handles.axes1,'visible','off')
set(handles.axes1,'XTick',[])
set(handles.axes1,'YTick',[])
image(handles.axes6,handles.logo)
set(handles.axes6,'XTick',[])
set(handles.axes6,'YTick',[])

set(handles.axes2,'visible','off')
set(handles.axes3,'visible','off')
set(handles.axes4,'visible','off')

set(handles.radiobutton1,'value',1);%set(handles.radiobutton2,'value',0)

set(handles.edit1,'String','30');set(handles.edit2,'String','7000');
set(handles.edit3,'String','20');set(handles.edit4,'String','25');set(handles.edit5,'String','5');
set(handles.edit6,'String','0.5');set(handles.edit7,'String','0.5');
set(handles.edit8,'String','0.25');set(handles.edit9,'String','0.75');set(handles.edit10,'String','0.5');

set(handles.edit11,'String','1');set(handles.edit12,'String','30');set(handles.edit13,'String','30');
set(handles.slider1,'visible','on','max',30,'min',1,'value',30,'sliderstep',[1/30 0.1]);

handles.mods  = [1 0];
handles.basic = [30 7000];
handles.temp  = [20 25 5];
handles.ratio = [0.5 0.5];
handles.abedo = [0.25 0.75 0.5];
handles.graphic  = [1 30 30];
% Choose default command line output for gui_0901
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes gui_0901 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = gui_0901_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
image(handles.axes1,handles.logo)
set(handles.axes1,'visible','off')
set(handles.axes1,'XTick',[])
set(handles.axes1,'YTick',[])
image(handles.axes6,handles.logo)
set(handles.axes6,'XTick',[])
set(handles.axes6,'YTick',[])

cla(handles.axes2,'reset');set(handles.axes2,'visible','off')
cla(handles.axes3,'reset');set(handles.axes3,'visible','off')
cla(handles.axes4,'reset');set(handles.axes4,'visible','off')


set(handles.radiobutton1,'value',1);%set(handles.radiobutton2,'value',0)

set(handles.edit1,'String','30');set(handles.edit2,'String','7000');
set(handles.edit3,'String','20');set(handles.edit4,'String','25');set(handles.edit5,'String','5');
set(handles.edit6,'String','0.5');set(handles.edit7,'String','0.5');
set(handles.edit8,'String','0.25');set(handles.edit9,'String','0.75');set(handles.edit10,'String','0.5');
set(handles.edit11,'String','1');set(handles.edit12,'String','30');set(handles.edit13,'String','30');
set(handles.slider1,'visible','on','max',30,'min',1,'value',30,'sliderstep',[1/30 0.1]);

handles.mods  = [1 0];
handles.basic = [30 7000];
handles.temp  = [20 25 5];
handles.ratio = [0.5 0.5];
handles.abedo = [0.25 0.75 0.5];
handles.graphic  = [1 30 30];

guidata(hObject, handles);

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla(handles.axes6);
cla(handles.axes2);cla(handles.axes3);cla(handles.axes4);
set(handles.axes2,'visible','on');set(handles.axes3,'visible','on');set(handles.axes4,'visible','on');
set(handles.axes6,'visible','off')

if handles.ratio(1)+handles.ratio(2)>1 
    warndlg('The ratio of black daisies to white daisies must be equal or smaller to one','Error 404')
else
    Dr = 0.3; asw = 0; alw = 1;jd = 80; lat = -88:2:88;r = 90;zz = linspace(-88,88,89);
    sc = [0.64 0.38 0.13];
    xx = linspace(0,100,100);yy = linspace(-88,88,89);[xs,ys] = meshgrid(xx,yy);zs = zeros(89,100);
    
    mod = handles.mods(2);
    n = handles.basic(1); S0 = handles.basic(2);
    T_b = handles.temp(1); T_w = handles.temp(2);  dt = handles.temp(3);
    A_b = handles.ratio(1); A_w = handles.ratio(2);
    abb = handles.abedo(1); abw = handles.abedo(2); abs = handles.abedo(3);
    minx = handles.graphic(1); maxx = handles.graphic(2);
    
    set(handles.slider1,'max',n,'min',1,'value',n)
    set(handles.slider1,'visible','on','sliderstep',[1/n 0.1])
    set(handles.edit12,'string',mat2str(n))
    set(handles.edit13,'string',mat2str(n))
    
    theta = acos(zz/r);
    phy = linspace(0,2*pi,101);
    array = linspace(1,100,100);
    C_array = nan(89,100,n);
    
    switch mod
        case 0
            
            for i = 1:length(lat)
                [S,dis] = distance(jd,S0);
                [delta] = declination(jd);
                [hs(i)] = hour_angle(lat(i),delta);
                [qd(i)] = solar(S,delta,lat(i),hs(i));
                [iii,w_a,b_a,s_a,Ts,A,n] = daisy_na(n,qd(i),T_b,A_b,T_w,A_w,Dr,dt,abb,abw,abs);
                wa(i,:) = w_a;
                ba(i,:) = b_a;
                sa(i,:) = s_a;
                Tsa(i,:) = Ts;
                Aa(i,:) = A;
            end
            for i = 1:n
                avg_wa(i) = mean(wa(:,i));
                avg_ba(i) = mean(ba(:,i));
                avg_sa(i) = mean(sa(:,i));
                avg_Tsa(i) = mean(Tsa(:,i));
                avg_Aa(i) = mean(Aa(:,i));
            end
            sai = round(sa.*100);
            wai = round(wa.*100);
            bai = round(ba.*100);
            for day = 1:n
                for i = 1:length(theta)
                    for j = 1:length(phy)
                        x(i,j) = r*sin(theta(i))*cos(phy(j));
                        y(i,j) = r*sin(theta(i))*sin(phy(j));
                        z(i,j) = r*cos(theta(i));
                    end
                    p1 = randperm(100,sai(i,day));
                    C_array(i,p1(:),day) = -1;
                    p2 = setdiff(array,p1);
                    p3 = randperm(length(p2),bai(i,day));
                    p4 = p2(p3(:));
                    C_array(i,p4(:),day) = 1;
                    p5 = setdiff(p2,p4);
                    C_array(i,p5(:),day) = 0;
                    
                    p1t(i,day) = length(p1);
                    p4t(i,day) = length(p4);
                    p5t(i,day) = length(p5);
                end
            end
            handles.C_array = C_array;handles.xs = xs;handles.ys = ys;handles.zs = zs;handles.Tsa = Tsa;
            
            %Plot
            axes(handles.axes2)
            set(handles.axes2,'visible','on')
            plot(iii,avg_wa(1:n),'g');
            hold on
            plot(iii,avg_ba(1:n),'k');
            plot(iii,avg_sa(1:n),'color',sc);
            hold off
            axis([handles.graphic(1) n 0 1])
            xlabel('days')
            ylabel('ratio')
            legend('white','black','wasteland')
            title('Flower area percentage')
            
            axes(handles.axes3)
            set(handles.axes3,'visible','on')
            mapsurf(xs,ys,zs,C_array,n)
            
            
            axes(handles.axes4)
%             set(handles.axes4,'visible','on','ytick',-70:35:70)
%             plot(iii,avg_Tsa-273.15);
%             hold on
%             hold off
%             axis([handles.graphic(1) handles.graphic(2) -70 70])
%             legend('surface')
%             title('surface/Atmos temperature( ^{o}C)')
 %            disp(iii)
             set(handles.axes4,'visible','on')
             plot(Tsa(:,n)-273.15,lat)
             axis([min(Tsa(:,n)-273.15) max(Tsa(:,n)-253.15) -90 90])
             
             xlabel('Temp( ^{o}C)')
             ylabel('Lat')
             legend('surface')
             title('surface/Atmos temperature( ^{o}C)')     
        case 1
            
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
        for day = 1:n
            for i = 1:length(theta)
                for j = 1:length(phy)
                    x(i,j) = r*sin(theta(i))*cos(phy(j));
                    y(i,j) = r*sin(theta(i))*sin(phy(j));
                    z(i,j) = r*cos(theta(i));
                end
                p1 = randperm(100,sai(i,day));
                C_array(i,p1(:),day) = -1;
                p2 = setdiff(array,p1);
                p3 = randperm(length(p2),bai(i,day));
                p4 = p2(p3(:));
                C_array(i,p4(:),day) = 1;
                p5 = setdiff(p2,p4);
                C_array(i,p5(:),day) = 0;
                
                p1t(i,day) = length(p1);
                p4t(i,day) = length(p4);
                p5t(i,day) = length(p5);
            end
        end
        handles.C_array = C_array;handles.xs = xs;handles.ys = ys;handles.zs = zs;handles.Tsa = Tsa;handles.Taa = Taa;
        
        %Plot
        axes(handles.axes2)
        set(handles.axes2,'visible','on')
        plot(iii,avg_wa(1:n),'g');
        hold on
        plot(iii,avg_ba(1:n),'k');
        plot(iii,avg_sa(1:n),'color',sc);
        hold off
        axis([handles.graphic(1) n 0 1])
        xlabel('days')
        ylabel('ratio')
        legend('white','black','wasteland')
        title('Flower area percentage')
        
        axes(handles.axes3)
        set(handles.axes3,'visible','on')
        mapsurf(xs,ys,zs,C_array,n)

        
        axes(handles.axes4)
%         set(handles.axes4,'visible','on','xtickmode','manual','ytickmode','manual','xlim',handles.graphic(1:2),'ylim',[-50 50],'ytick',-50:25:50)
%         set(handles.axes4,'visible','on','ytick',-70:35:70)
%         plot(iii,avg_Tsa-273.15);
%         hold on
%         plot(iii,avg_Taa-273.15);
%         hold off
%         axis([handles.graphic(1) handles.graphic(2) -70 70])
%         legend('surface','atmosphere')
        set(handles.axes4,'visible','on','ytick',-90:30:90)
        plot(Tsa(:,n)-273.15,lat)
        hold on
        plot(Taa(:,n)-273.15,lat)
        hold off
        axis([min(Taa(:,n)-273.15) max(Tsa(:,n)-253.15) -90 90])
        xlabel('Temp( ^{o}C)')
        ylabel('Lat')
        legend('surface','atmosphere')
        title('surface/Atmos temperature( ^{o}C)')
%         disp(iii)
    end
    
    
end
guidata(hObject, handles);

% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
handles.graphic(3) = round(get(hObject,'value'));
set(handles.edit13,'String',mat2str(handles.graphic(3)));
xs = handles.xs;ys = handles.ys;zs = handles.zs;C_array = handles.C_array;
axes(handles.axes3)
mapsurf(xs,ys,zs,C_array,handles.graphic(3))
mod = handles.mods(2);
n = handles.graphic(3);
switch mod
    case 0
        axes(handles.axes4)
        cla
        Tsa = handles.Tsa; lat = -88:2:88;
        plot(Tsa(:,n)-273.15,lat)
        axis([min(Tsa(:,n)-273.15) max(Tsa(:,n)-253.15) -90 90])
        legend('surface')
        title('surface/Atmos temperature( ^{o}C)')
    case 1
        axes(handles.axes4)
        cla
        Tsa = handles.Tsa;Taa = handles.Taa; lat = -88:2:88;
        plot(Tsa(:,n)-273.15,lat)
        hold on 
        plot(Taa(:,n)-273.15,lat)
        hold off
        axis([min(Taa(:,n)-273.15) max(Tsa(:,n)-253.15) -90 90])
        legend('surface','atmosphere')
        title('surface/Atmos temperature( ^{o}C)')
end
guidata(hObject, handles);
% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if fix(str2double(get(hObject,'string')))~=str2double(get(hObject,'string')) || str2double(get(hObject,'string'))<1
    warndlg('Days must be Positive Integer')
    set(hObject,'string','30')
    handles.basic(1) = str2double(get(hObject,'string'));
else
    handles.basic(1) = str2double(get(hObject,'string'));
end
guidata(hObject, handles);
% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if fix(str2double(get(hObject,'string')))~=str2double(get(hObject,'string')) || str2double(get(hObject,'string'))<1
    warndlg('Solar R must be Positive Integer')
    set(hObject,'string','3000')
    handles.basic(2) = str2double(get(hObject,'string'));
else
    handles.basic(2) = str2double(get(hObject,'string'));
end
guidata(hObject, handles);
% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double

% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.temp(1) = str2double(get(hObject,'string'));
guidata(hObject, handles);
% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.temp(2) = str2double(get(hObject,'string'));
guidata(hObject, handles);
% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.temp(3) = str2double(get(hObject,'string'));
guidata(hObject, handles);
% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if str2double(get(hObject,'string'))<0 || str2double(get(hObject,'string'))>1
    warndlg('Raito must between 0~1')
    set(hObject,'string','0.5')
    handles.ratio(1) = str2double(get(hObject,'string'));
else
    handles.ratio(1) = str2double(get(hObject,'string'));
end
guidata(hObject, handles);
% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if str2double(get(hObject,'string'))<0 || str2double(get(hObject,'string'))>1
    warndlg('Raito must between 0~1')
    set(hObject,'string','0.5')
    handles.ratio(2) = str2double(get(hObject,'string'));
else
    handles.ratio(2) = str2double(get(hObject,'string'));
end
guidata(hObject, handles);
% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if str2double(get(hObject,'string'))>1 || str2double(get(hObject,'string'))<0
    warndlg('Abedo must between 0~1 !!!','Error 404')
    set(hObject,'string','0.25')
    handles.abedo(1) = str2double(get(hObject,'string'));
else
    handles.abedo(1) = str2double(get(hObject,'string'));
end
guidata(hObject, handles);
% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if str2double(get(hObject,'string'))>1 || str2double(get(hObject,'string'))<0
    warndlg('Abedo must between 0~1 !!!','Error 404')
    set(hObject,'string','0.75')
    handles.abedo(2) = str2double(get(hObject,'string'));
else
    handles.abedo(2) = str2double(get(hObject,'string'));
end
guidata(hObject, handles);
% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if str2double(get(hObject,'string'))>1 || str2double(get(hObject,'string'))<0
    warndlg('Abedo must between 0~1 !!!','Error 404')
    set(hObject,'string','0.5')
    handles.abedo(3) = str2double(get(hObject,'string'));
else
    handles.abedo(3) = str2double(get(hObject,'string'));
end
guidata(hObject, handles);
% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if  str2double(get(hObject,'string')) < 1 || fix(str2double(get(hObject,'string')))~=str2double(get(hObject,'string'))
    warndlg('Axis number must be Positive Integer !','Error 404')
    set(handles.edit11,'string','1')
    handles.graphic(1) = str2double(get(hObject,'string'));
else
    handles.graphic(1) = str2double(get(hObject,'string'));
end
if  str2double(get(hObject,'string'))>str2double(get(handles.edit12,'string'))
    warndlg('second number must greater than first number !','Error 404')
    set(handles.edit11,'string','1')
    handles.graphic(1) = str2double(get(hObject,'string'));
else
    handles.graphic(1) = str2double(get(hObject,'string'));
end
guidata(hObject, handles);
set(handles.axes2,'xlim',handles.graphic(1:2))
set(handles.axes4,'xlim',handles.graphic(1:2))
guidata(hObject, handles);
% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit12_Callback(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if  str2double(get(hObject,'string')) < 1 || fix(str2double(get(hObject,'string')))~=str2double(get(hObject,'string'))
    warndlg('Axis number must be Positive Integer !','Error 404')
    set(handles.edit11,'string','30')
    handles.graphic(2) = str2double(get(hObject,'string'));
else
    handles.graphic(2) = str2double(get(hObject,'string'));
end
if  str2double(get(hObject,'string'))<str2double(get(handles.edit11,'string'))
    warndlg('second number must greater than first number !','Error 404')
    set(handles.edit12,'string',mat2str(handles.basic(1)))
    handles.graphic(2) = str2double(get(hObject,'string'));
else
    handles.graphic(2) = str2double(get(hObject,'string'));
end
guidata(hObject, handles);

set(handles.axes2,'xlim',handles.graphic(1:2))
set(handles.axes4,'xlim',handles.graphic(1:2))
guidata(hObject, handles);
% Hints: get(hObject,'String') returns contents of edit12 as text
%        str2double(get(hObject,'String')) returns contents of edit12 as a double


% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function edit13_Callback(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.graphic(3) = str2double(get(hObject,'string'));

if handles.graphic(3)>handles.basic(1) || handles.graphic(3)<1 || fix(str2double(get(hObject,'string')))~=str2double(get(hObject,'string'))
   warndlg(['picture number must between 1~' mat2str(handles.basic(1)) ' integer !!!'],'Error 404')
   handles.garphic(3) = handles.basic(1);
   set(handles.slider1,'value',handles.garphic(3))
   set(handles.edit13,'string',mat2str(handles.garphic(3)))
else
    set(handles.slider1,'value',handles.graphic(3))
end
xs = handles.xs;ys = handles.ys;zs = handles.zs;C_array = handles.C_array;
axes(handles.axes3)
mapsurf(xs,ys,zs,C_array,handles.graphic(3))
mod = handles.mods(2);
n = handles.graphic(3);
switch mod
    case 0
        axes(handles.axes4)
        cla(handles.axes4)
        Tsa = handles.Tsa; lat = -88:2:88;
        plot(Tsa(:,n)-273.15,lat)
        axis([min(Tsa(:,n)-273.15) max(Tsa(:,n)-253.15) -90 90])
        legend('surface')
        title('surface/Atmos temperature( ^{o}C)')
    case 1
        axes(handles.axes4)
        cla(handles.axes4)
        Tsa = handles.Tsa;Taa = handles.Taa; lat = -88:2:88;
        plot(Tsa(:,n)-273.15,lat)
        hold on 
        plot(Taa(:,n)-273.15,lat)
        hold off
        axis([min(Taa(:,n)-273.15) max(Tsa(:,n)-253.15) -90 90])
        legend('surface','atmosphere')
        title('surface/Atmos temperature( ^{o}C)')
end

guidata(hObject, handles);

% Hints: get(hObject,'String') returns contents of edit13 as text
%        str2double(get(hObject,'String')) returns contents of edit13 as a double


% --- Executes during object creation, after setting all properties.
function edit13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.mods(1) = get(hObject,'value');
guidata(hObject, handles);
% Hint: get(hObject,'Value') returns toggle state of radiobutton1


% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.mods(2) = get(hObject,'value');
guidata(hObject, handles);
% Hint: get(hObject,'Value') returns toggle state of radiobutton2

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
    iii(i) = i ;
end

function [iii,w_a,b_a,s_a,Ts,A,n] = daisy_na(n,S0,T_b,A_b,T_w,A_w,Dr,dt,abb,abw,abs)
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
Ts4(i) = S0*(1-A(i))/(4*Q);
Ts(i) = power(Ts4(i),0.25) ;
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
iii(i) = i ;
end

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

function mapsurf(xs,ys,zs,C_array,n)

daisymap = [0.64 0.38 0.13;1 1 1;0 0 0];
xtick = 0:60:360;
xlim([0 100]); ylim([-88 88]);
xticks(linspace(0,100,7));yticks(-90:30:90);
set(gca,'xticklabel',xtick);
xlabel('Lon'); ylabel('Lat');
hold on
surf(xs,ys,zs,'edgecolor','none','CData',C_array(:,:,n))
colormap(daisymap)
title('MAP')
hold off
