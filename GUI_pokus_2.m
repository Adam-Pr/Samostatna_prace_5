function varargout = GUI_pokus_2(varargin)
% GUI_POKUS_2 MATLAB code for GUI_pokus_2.fig
%      GUI_POKUS_2, by itself, creates a new GUI_POKUS_2 or raises the existing
%      singleton*.
%
%      H = GUI_POKUS_2 returns the handle to a new GUI_POKUS_2 or the handle to
%      the existing singleton*.
%
%      GUI_POKUS_2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI_POKUS_2.M with the given input arguments.
%
%      GUI_POKUS_2('Property','Value',...) creates a new GUI_POKUS_2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUI_pokus_2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUI_pokus_2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUI_pokus_2

% Last Modified by GUIDE v2.5 02-Sep-2014 19:29:03

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI_pokus_2_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI_pokus_2_OutputFcn, ...
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


% --- Executes just before GUI_pokus_2 is made visible.
function GUI_pokus_2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUI_pokus_2 (see VARARGIN)

% Choose default command line output for GUI_pokus_2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUI_pokus_2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUI_pokus_2_OutputFcn(hObject, eventdata, handles) 
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
pocet_prvku = round(get(handles.slider1,'Value'));
maximum = 0;
if get(handles.radiobutton1,'Value') maximum = 16; end
if get(handles.radiobutton2,'Value') maximum = 32; end
if get(handles.radiobutton3,'Value') maximum = 64; end
genvect(pocet_prvku,maximum,'vect.mat');

% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
pocet_prvku = round(get(hObject,'Value'));
set(handles.text4,'String',pocet_prvku);

% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1


% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2


% --- Executes on button press in radiobutton3.
function radiobutton3_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton3


% --- Executes on slider movement.
function slider2_Callback(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
noise_level = get(hObject,'Value');
set(handles.text5,'String',noise_level);

% --- Executes during object creation, after setting all properties.
function slider2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
vect = load('vect.mat');
if get(handles.radiobutton1,'Value') 
sig=qam16modul(vect.vect);
figure(1)
plot(sig)
grid on
xlim ([-7 7])
ylim ([-7 7])
xlabel('I')
ylabel('Q')
end
if get(handles.radiobutton2,'Value')
sig=qam32modul(vect.vect);
figure(1)
plot(sig)
grid on
xlim ([-7 7])
ylim ([-7 7])
xlabel('I')
ylabel('Q')
end
if get(handles.radiobutton3,'Value')
sig=qam64modul(vect.vect);
figure(1)
plot(sig)
grid on
xlim ([-9 9])
ylim ([-9 9])
xlabel('I')
ylabel('Q')
end

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
vect = load('vect.mat');
if get(handles.radiobutton1,'Value') 
noise_level = get(handles.slider2,'Value');
sig=qam16modul(vect.vect);
sigN=addnoise(sig, noise_level);
sigD=qam16demodul(sigN);
figure(2)
plot(sigN)
grid on
xlim ([-7 7])
ylim ([-7 7])
xlabel('I')
ylabel('Q')
end
if get(handles.radiobutton2,'Value')
noise_level = get(handles.slider2,'Value');
sig=qam32modul(vect.vect);
sigN=addnoise(sig, noise_level);
sigD=qam32demmodul(sigN);
figure(2)
plot(sigN)
grid on
xlim ([-7 7])
ylim ([-7 7])
xlabel('I')
ylabel('Q')
end
if get(handles.radiobutton3,'Value')
noise_level = get(handles.slider2,'Value');
sig=qam64modul(vect.vect);
sigN=addnoise(sig, noise_level);
sigD=qam64demmodul(sigN);
figure(2)
plot(sigN)
grid on
xlim ([-9 9])
ylim ([-9 9])
xlabel('I')
ylabel('Q')
end

