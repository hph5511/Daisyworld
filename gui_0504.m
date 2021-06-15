function varargout = gui_0504(varargin)
%GUI_0504 MATLAB code file for gui_0504.fig
%      GUI_0504, by itself, creates a new GUI_0504 or raises the existing
%      singleton*.
%
%      H = GUI_0504 returns the handle to a new GUI_0504 or the handle to
%      the existing singleton*.
%
%      GUI_0504('Property','Value',...) creates a new GUI_0504 using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to gui_0504_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      GUI_0504('CALLBACK') and GUI_0504('CALLBACK',hObject,...) call the
%      local function named CALLBACK in GUI_0504.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gui_0504

% Last Modified by GUIDE v2.5 17-May-2021 18:24:32

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gui_0504_OpeningFcn, ...
                   'gui_OutputFcn',  @gui_0504_OutputFcn, ...
                   'gui_LayoutFcn',  [], ...
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


% --- Executes just before gui_0504 is made visible.
function gui_0504_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)
handles.logo = imread('EWaC-logo.jpg');
image(handles.axes5,handles.logo)
set(handles.axes5,'visible','off')
set(handles.axes5,'XTick',[])
set(handles.axes5,'YTick',[])
image(handles.axes6,handles.logo)
set(handles.axes6,'XTick',[])
set(handles.axes6,'YTick',[])

set(handles.axes1,'visible','off')
set(handles.axes2,'visible','off')
set(handles.axes3,'visible','off')
set(handles.axes4,'visible','off')

set(handles.edit1,'String','100');       set(handles.edit7,'String','0.3');   set(handles.edit39,'String','0.5');
set(handles.edit2,'String','20');          set(handles.edit8,'String','0');      set(handles.edit40,'String','0.25');
set(handles.edit3,'String','25');          set(handles.edit9,'String','10');    set(handles.edit41,'String','0.75');
set(handles.edit4,'String','1370');     set(handles.edit10,'String','1');   set(handles.radiobutton1,'Value',0)
set(handles.edit5,'String','0.5');         set(handles.edit11,'String','0');   set(handles.radiobutton2,'Value',1)
set(handles.edit6,'String','0.5');         set(handles.edit12,'String','100')

handles.data = [100 20 25 1370 0.5 0.5 0.3 0 10 1 0 100 0.5 0.25 0.75 0 1];
% Choose default command line output for gui_0504
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes gui_0504 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = gui_0504_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes during object creation, after setting all properties.

function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

handles.data(1) = str2num(get(hObject,'String'));

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double
% Update handles structure
guidata(hObject, handles);

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

handles.data(2) = str2num(get(hObject,'String'));

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double
% Update handles structure
guidata(hObject, handles);

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

handles.data(3) = str2num(get(hObject,'String'));

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double
% Update handles structure
guidata(hObject, handles);

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

handles.data(4) = str2num(get(hObject,'String'));

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double
% Update handles structure
guidata(hObject, handles);

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

handles.data(5) = str2num(get(hObject,'String'));

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double
% Update handles structure
guidata(hObject, handles);

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
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

handles.data(6) = str2num(get(hObject,'String'));

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double
% Update handles structure
guidata(hObject, handles);

function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
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

handles.data(7) = str2num(get(hObject,'String'));

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double
% Update handles structure
guidata(hObject, handles);

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

handles.data(8) = str2num(get(hObject,'String'));

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double
% Update handles structure
guidata(hObject, handles);

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

handles.data(9) = str2num(get(hObject,'String'));

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double
% Update handles structure
guidata(hObject, handles);

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

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double

handles.data(10) = str2num(get(hObject,'String'));

% Update handles structure
guidata(hObject, handles);

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

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double
handles.data(11) = str2num(get(hObject,'String'));

% Update handles structure
guidata(hObject, handles);

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

% Hints: get(hObject,'String') returns contents of edit12 as text
%        str2double(get(hObject,'String')) returns contents of edit12 as a double
handles.data(12) = str2num(get(hObject,'String'));

% Update handles structure
guidata(hObject, handles);

function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.axes6,'visible','on')
image(handles.axes6,handles.logo)
set(handles.axes6,'XTick',[])
set(handles.axes6,'YTick',[])

set(handles.axes1,'visible','off');cla(handles.axes1)
set(handles.axes2,'visible','off');cla(handles.axes2)
set(handles.axes3,'visible','off');cla(handles.axes3)
set(handles.axes4,'visible','off');cla(handles.axes4)

set(handles.edit1,'String','100');         set(handles.edit7,'String','0.3');   set(handles.edit39,'String','0.5');
set(handles.edit2,'String','20');           set(handles.edit8,'String','0');   set(handles.edit40,'String','0.25');
set(handles.edit3,'String','25');           set(handles.edit9,'String','10');   set(handles.edit41,'String','0.75');
set(handles.edit4,'String','1370');      set(handles.edit10,'String','1');   set(handles.radiobutton1,'Value',0)
set(handles.edit5,'String','0.5');          set(handles.edit11,'String','0');   set(handles.radiobutton2,'Value',1)
set(handles.edit6,'String','0.5');          set(handles.edit12,'String','100')

handles.data = [100 20 25 1370 0.5 0.5 0.3 0 10 1 0 100 0.5 0.25 0.75 0 1];
% Update handles structure
guidata(hObject, handles);

function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla(handles.axes6);
cla(handles.axes1);cla(handles.axes2);cla(handles.axes3);cla(handles.axes4);
set(handles.axes6,'visible','off')
n = handles.data(1);              A_w = handles.data(6);       minx = handles.data(11);     mod = handles.data(16);
T_b = handles.data(2);          Dr = handles.data(7);           maxx = handles.data(12);
T_w = handles.data(3);         asw = handles.data(8);        abb = handles.data(14);
S0 = handles.data(4);            dt = handles.data(9);          abw = handles.data(15);
A_b = handles.data(5);         alw = handles.data(10);      abs = handles.data(13);
if mod == 0
    [iii,w_a,b_a,Ts,Ta,A,n] = daisy(n,S0,T_b,A_b,T_w,A_w,Dr,dt,asw,alw,abb,abw,abs);
    % Update handles structure
    guidata(hObject, handles);
    %Plot
    axes(handles.axes1);
    plot(iii,w_a(1:n),'g');
    hold on
    plot(iii,b_a(1:n),'k');
    hold off
    legend('white','black')
    axis([minx maxx 0 1]);title('Flower area percentage')

    axes(handles.axes2);

    axes(handles.axes3);
    plot(iii,Ts-273.15);
    hold on
    plot(iii,Ta-273.15);
    hold off
    legend('surface','atmosphere')
    axis([minx maxx -50 50 ]);title('surface/Atmos temperature( ^{o}C)')
    axes(handles.axes4);
    plot(iii,A);axis([minx maxx 0 1]);title('surface abedo')
else
    [iii,w_a,b_a,Ts,A,n] = daisy_na(n,S0,T_b,A_b,T_w,A_w,Dr,dt,abb,abw,abs);
    % Update handles structure
    guidata(hObject, handles);
    %Plot
    axes(handles.axes1);
    plot(iii,w_a(1:n),'g');
    hold on
    plot(iii,b_a(1:n),'k');
    hold off
    legend('white','black')
    axis([minx maxx 0 1]);title('Flower area percentage')

    axes(handles.axes2);

    axes(handles.axes3);
    plot(iii,Ts-273.15);
    hold on
    hold off
    ylim([-50 50]);yticks([-50 -40 -30 -20 -10 0 10 20 30 40 50]);
    axis([minx maxx -50 50 ]);title('surface temperature( ^{o}C)')
    axes(handles.axes4);
    plot(iii,A);axis([minx maxx 0 1]);title('surface abedo')
end
function [iii,w_a,b_a,Ts,Ta,A,n] = daisy(n,S0,T_b,A_b,T_w,A_w,Dr,dt,asw,alw,abb,abw,abs)
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
iii(i) = i-1 ;
end

function [iii,w_a,b_a,Ts,A,n] = daisy_na(n,S0,T_b,A_b,T_w,A_w,Dr,dt,abb,abw,abs)
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
iii(i) = i-1 ;
end

function edit39_Callback(hObject, eventdata, handles)
% hObject    handle to edit39 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit39 as text
%        str2double(get(hObject,'String')) returns contents of edit39 as a double
handles.data(13) = str2num(get(hObject,'String'));

% Update handles structure
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function edit39_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit39 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit40_Callback(hObject, eventdata, handles)
% hObject    handle to edit40 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit40 as text
%        str2double(get(hObject,'String')) returns contents of edit40 as a double
handles.data(14) = str2num(get(hObject,'String'));

% Update handles structure
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function edit40_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit40 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit41_Callback(hObject, eventdata, handles)
% hObject    handle to edit41 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit41 as text
%        str2double(get(hObject,'String')) returns contents of edit41 as a double
handles.data(15) = str2num(get(hObject,'String'));

% Update handles structure
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function edit41_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit41 (see GCBO)
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

% Hint: get(hObject,'Value') returns toggle state of radiobutton1
handles.data(16) = get(hObject,'Value');

% Update handles structure
guidata(hObject, handles);


% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2
handles.data(17) = get(hObject,'Value');

% Update handles structure
guidata(hObject, handles);
