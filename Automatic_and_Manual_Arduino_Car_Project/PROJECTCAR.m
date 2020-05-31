function varargout = PROJECTCAR(varargin)
% PROJECTCAR MATLAB code for PROJECTCAR.fig
%      PROJECTCAR, by itself, creates a new PROJECTCAR or raises the existing
%      singleton*.
%
%      H = PROJECTCAR returns the handle to a new PROJECTCAR or the handle to
%      the existing singleton*.
%
%      PROJECTCAR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROJECTCAR.M with the given input arguments.
%
%      PROJECTCAR('Property','Value',...) creates a new PROJECTCAR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before PROJECTCAR_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to PROJECTCAR_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help PROJECTCAR

% Last Modified by GUIDE v2.5 11-Feb-2020 08:04:24

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @PROJECTCAR_OpeningFcn, ...
                   'gui_OutputFcn',  @PROJECTCAR_OutputFcn, ...
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


% --- Executes just before PROJECTCAR is made visible.
function PROJECTCAR_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to PROJECTCAR (see VARARGIN)

% Choose default command line output for PROJECTCAR
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
set_param('carproject' , 'SimulationMode', 'External');
open_system('carproject.slx')
set_param('carproject' , 'SimulationCommand', 'Start');

% UIWAIT makes PROJECTCAR wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = PROJECTCAR_OutputFcn(hObject, eventdata, handles) 
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
set_param('carproject/one' , 'Value', '0');
set_param('carproject/two' , 'Value', '1');
set_param('carproject/three' , 'Value', '0');
set_param('carproject/four' , 'Value', '1');




% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set_param('carproject/one' , 'Value', '0');
set_param('carproject/two' , 'Value', '1');
set_param('carproject/three' , 'Value', '0');
set_param('carproject/four' , 'Value', '0');

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set_param('carproject/one' , 'Value', '0');
set_param('carproject/two' , 'Value', '0');
set_param('carproject/three' , 'Value', '0');
set_param('carproject/four' , 'Value', '1');

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set_param('carproject/one' , 'Value', '1');
set_param('carproject/two' , 'Value', '0');
set_param('carproject/three' , 'Value', '1');
set_param('carproject/four' , 'Value', '0');


% --- Executes on button press in pushbutton5.
global flag;
flag=1;
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global flag
if flag==1
set_param('carproject/Constant' , 'Value', num2str(flag));
flag=0;
else  
set_param('carproject/Constant' , 'Value', num2str(flag));
flag=1;
end


