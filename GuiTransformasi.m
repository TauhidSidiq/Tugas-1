function varargout = GuiTransformasi(varargin)
% GUITRANSFORMASI MATLAB code for GuiTransformasi.fig
%      GUITRANSFORMASI, by itself, creates a new GUITRANSFORMASI or raises the existing
%      singleton*.
%
%      H = GUITRANSFORMASI returns the handle to a new GUITRANSFORMASI or the handle to
%      the existing singleton*.
%
%      GUITRANSFORMASI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUITRANSFORMASI.M with the given input arguments.
%
%      GUITRANSFORMASI('Property','Value',...) creates a new GUITRANSFORMASI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GuiTransformasi_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GuiTransformasi_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GuiTransformasi

% Last Modified by GUIDE v2.5 06-Sep-2021 11:32:48

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GuiTransformasi_OpeningFcn, ...
                   'gui_OutputFcn',  @GuiTransformasi_OutputFcn, ...
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


% --- Executes just before GuiTransformasi is made visible.
function GuiTransformasi_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GuiTransformasi (see VARARGIN)

% Choose default command line output for GuiTransformasi
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GuiTransformasi wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GuiTransformasi_OutputFcn(hObject, eventdata, handles) 
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
%Gambar Asli
axes(handles.axes1)
a = imread('Spiderman.jpg');
imshow(a)

%RGB Ke Greyscale(rata-rata)
I_grey = (a(:,:,1)+a(:,:,2)+a(:,:,3))/3;
axes(handles.axes2)
imshow(I_grey)
title('Rumus rata-rata')

%RGB Ke Greyscale(komposisi)
I_komp = 0.4*a(:,:,1)+0.32*a(:,:,2)+0.2*a(:,:,3);
axes(handles.axes3)
imshow(I_komp)
title('Rumus komposisi')

%Brightness Citra Keabuan
t_brgth = 75;
I_brght = I_komp + t_brgth;
axes(handles.axes4)
imshow(I_brght)
title('Citra keabuan')

%Mengatur Contras Citra
t_cont = 2;
I_cont = I_komp * t_cont;
axes(handles.axes5)
imshow(I_cont)
title('Citra biner')


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
delete(handles.figure1)
