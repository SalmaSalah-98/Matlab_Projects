function varargout = Ass2_2(varargin)
% ASS2_2 MATLAB code for Ass2_2.fig
%      ASS2_2, by itself, creates a new ASS2_2 or raises the existing
%      singleton*.
%
%      H = ASS2_2 returns the handle to a new ASS2_2 or the handle to
%      the existing singleton*.
%
%      ASS2_2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ASS2_2.M with the given input arguments.
%
%      ASS2_2('Property','Value',...) creates a new ASS2_2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Ass2_2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Ass2_2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Ass2_2

% Last Modified by GUIDE v2.5 30-Jan-2022 05:37:23

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Ass2_2_OpeningFcn, ...
                   'gui_OutputFcn',  @Ass2_2_OutputFcn, ...
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


% --- Executes just before Ass2_2 is made visible.
function Ass2_2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Ass2_2 (see VARARGIN)

% Choose default command line output for Ass2_2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
global op1;
global op2;
global operation;
global result;

global vector1;
global vector2;
global button_x_axis;
global button_y_axis;
global button_xy_axis;
global button_sinex_axis;
global button_cosinex_axis;
global button_Resultant_Plotting;
global button_Hold_plotting ;
button_Hold_plotting= 0;
global button_equation;
global hPlot;

% UIWAIT makes Ass2_2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Ass2_2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in operations_list.
function operations_list_Callback(hObject, eventdata, handles)
% hObject    handle to operations_list (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns operations_list contents as cell array
%        contents{get(hObject,'Value')} returns selected item from operations_list
global operation;
switch (operation)
    case 1
        
        set(handles.operation_static_text,'String','+');
    case 2
        
        set(handles.operation_static_text,'String','-');
    case 3
      
        set(handles.operation_static_text,'String','/');
    case 4
   
        set(handles.operation_static_text,'String','*');
    case 5
       
        set(handles.operation_static_text,'String','%');
    otherwise
        set(handles.operation_static_text,'String','Invalid');
end




% --- Executes during object creation, after setting all properties.
function operations_list_CreateFcn(hObject, eventdata, handles)
% hObject    handle to operations_list (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function opearand1_edit_text_Callback(hObject, eventdata, handles)
% hObject    handle to opearand1_edit_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of opearand1_edit_text as text
%        str2double(get(hObject,'String')) returns contents of opearand1_edit_text as a double


% --- Executes during object creation, after setting all properties.
function opearand1_edit_text_CreateFcn(hObject, eventdata, handles)
% hObject    handle to opearand1_edit_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function operand2_edit_text_Callback(hObject, eventdata, handles)
% hObject    handle to operand2_edit_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of operand2_edit_text as text
%        str2double(get(hObject,'String')) returns contents of operand2_edit_text as a double


% --- Executes during object creation, after setting all properties.
function operand2_edit_text_CreateFcn(hObject, eventdata, handles)
% hObject    handle to operand2_edit_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Equal_Button.
function Equal_Button_Callback(hObject, eventdata, handles)
% hObject    handle to Equal_Button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global op1;
global op2;
global result;
global operation;
op1 = str2double(get(handles.opearand1_edit_text,'String')); 
op2 = str2double(get(handles.operand2_edit_text,'String')); 
operation = get(handles.operations_list,'value'); %not 'String'


switch (operation)
    case 1
        result = op1 + op2
    case 2
        result = op1 - op2
        
    case 3
        if op2 == 0
            set(handles.Error_static_text,'String','Error');
        else    
            result = op1 / op2
            
        end 
    case 4
        result = op1 * op2 
       
    case 5
        result = mod(op1,op2)
       
    otherwise
        result = 'Invalid option'
end

set(handles.Result_static_text,'String',result);



function X_axis_edit_text_Callback(hObject, eventdata, handles)
% hObject    handle to X_axis_edit_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of X_axis_edit_text as text
%        str2double(get(hObject,'String')) returns contents of X_axis_edit_text as a double


% --- Executes during object creation, after setting all properties.
function X_axis_edit_text_CreateFcn(hObject, eventdata, handles)
% hObject    handle to X_axis_edit_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Y_axis_edit_text_Callback(hObject, eventdata, handles)
% hObject    handle to Y_axis_edit_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Y_axis_edit_text as text
%        str2double(get(hObject,'String')) returns contents of Y_axis_edit_text as a double


% --- Executes during object creation, after setting all properties.
function Y_axis_edit_text_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Y_axis_edit_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in vector_operations_list.
function vector_operations_list_Callback(hObject, eventdata, handles)
% hObject    handle to vector_operations_list (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns vector_operations_list contents as cell array
%        contents{get(hObject,'Value')} returns selected item from vector_operations_list


% --- Executes during object creation, after setting all properties.
function vector_operations_list_CreateFcn(hObject, eventdata, handles)
% hObject    handle to vector_operations_list (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in vector_Equal_Button.
function vector_Equal_Button_Callback(hObject, eventdata, handles)
global vector2;
global vector1;
global Vector_result;
global output;
global Vector_operation;

vector1 = str2num(get(handles.X_axis_edit_text,'String')); 
vector2 = str2num(get(handles.Y_axis_edit_text,'String')); 
Vector_operation = get(handles.vector_operations_list,'value'); %not 'String'


switch (Vector_operation)
    case 1
        if (size(vector1) == size(vector2))
            Vector_result = vector1 + vector2
            set(handles.operation_vector_static_text,'String',' + ');
            set(handles.Error_consol_vector,'String',' ');
            set(handles.text13,'String',num2str(Vector_result));
        else
            set(handles.Error_consol_vector,'String',' Matrix dimensions must agree ');
        end
    case 2
        if (size(vector1) == size(vector2))
            Vector_result = vector1 - vector2
            set(handles.operation_vector_static_text,'String',' - ');
            set(handles.Error_consol_vector,'String',' ');
            set(handles.text13,'String',num2str(Vector_result));
        else
            set(handles.Error_consol_vector,'String',' Matrix dimensions must agree ');
            
        end    
    case 3
        if vector2 == 0
            set(handles.Error_consol_vector,'String',' Error Division by 0 ');
             set(handles.operation_vector_static_text,'String',' / ');
        elseif (size(vector2) == 1 )    
            Vector_result = (vector1 / vector2);
            set(handles.operation_vector_static_text,'String',' / ');
            set(handles.Error_consol_vector,'String',' ');
            set(handles.text13,'String',num2str(Vector_result));    
        elseif (size(vector1) == size(vector2))    
            Vector_result = (vector1 / vector2);
            set(handles.operation_vector_static_text,'String',' / ');
            set(handles.Error_consol_vector,'String',' ');
            set(handles.text13,'String',num2str(Vector_result));
        else
            set(handles.Error_consol_vector,'String',' Matrix dimensions must agree ');
        end     
    case 4
        Vector_result = vector1 * vector2
        set(handles.operation_vector_static_text,'String',' * ');
        set(handles.Error_consol_vector,'String',' ');
        set(handles.text13,'String',num2str(Vector_result));
    otherwise
        Vector_result = 'Invalid option'
end




% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global hPlot;
delete(hPlot);

% --- Executes on button press in Enter_Plotting.
function Enter_Plotting_Callback(hObject, eventdata, handles)
global button_x_axis;
global button_y_axis;
global button_xy_axis;
global button_sinex_axis;
global button_cosinex_axis;
global button_Resultant_Plotting;
global button_equation;
global vector1;
global vector2;
global hPlot;
global button_Hold_plotting;

if (button_x_axis == 1)
    button_y_axis = 0;
    button_xy_axis = 0;
    y = 0;
    vector1 = str2num(get(handles.X_axis_edit_text,'String')); 
    if (button_Hold_plotting == 1)
        hold on;
        hPlot = plot(vector1,y,'y*','Parent' ,handles.axes1);
    else
        hPlot = plot(vector1,y,'y*','Parent' ,handles.axes1);
        title('X_Axis Plotting');
        xlabel('x_axis');
       
    end    
elseif (button_y_axis == 1)    
    x = 0;
    vector2 = str2num(get(handles.Y_axis_edit_text,'String')); 
    if (button_Hold_plotting == 1)
        hold on;
        hPlot = plot(x,vector2,'g*' ,'Parent', handles.axes1); 
    else
        hPlot = plot(x,vector2,'g*' ,'Parent', handles.axes1); 
    end    
elseif (button_xy_axis == 1)    
    
    vector1 = str2num(get(handles.X_axis_edit_text,'String'));
    vector2 = str2num(get(handles.Y_axis_edit_text,'String'));
    if (button_Hold_plotting == 1)
        hold on;
       hPlot = plot(vector1,vector2 ,'r','Parent', handles.axes1);
    else
       hPlot = plot(vector1,vector2 ,'r','Parent', handles.axes1);
    end
elseif (button_sinex_axis == 1)
    vector1 = str2num(get(handles.X_axis_edit_text,'String'));
    if (isempty(vector1))
        set(handles.Error_consol_vector,'String','Enter values of X ');
    else
        y = sind(vector1);
       set(handles.Error_consol_vector,'String',' ');
        if (button_Hold_plotting == 1)
            hold on;
            hPlot = plot(vector1,y,'c','Parent', handles.axes1);
        else
          hPlot = plot(vector1,y,'c','Parent', handles.axes1);
            title('Sine(X)');
            xlabel('x_axis');
            ylabel('sin(x)');
        end 
    end
elseif (button_cosinex_axis == 1)
    vector1 = str2num(get(handles.X_axis_edit_text,'String'));
    
    y = cosd(abs(vector1));
    set(handles.Error_consol_vector,'String','');
    if (button_Hold_plotting == 1)
        hold on;
        hPlot = plot(vector1,y,'b','Parent', handles.axes1);
    else
        hPlot = plot(vector1,y,'Color',[0.8500 0.3250 0.0980],'Parent', handles.axes1);
        title('Cosine(X)');
        xlabel('x_axis');
        ylabel('cos(x)'); 
    end    
elseif(button_Resultant_Plotting == 1)
    vector1 = str2num(get(handles.X_axis_edit_text,'String'));
    y = str2num(get(handles.text13,'String'));
    if (isempty(vector1)||isempty(y))
        set(handles.Error_consol_vector,'String','Enter values of X and Y axis and press Equal');
    else    
     if (button_Hold_plotting == 1)
        hold on;
        hPlot = plot(vector1,y,'Color',  [0.494,  0.184,  0.556],'Parent', handles.axes1); 
     else
        hPlot = plot(vector1,y,'Color',  [0.494,  0.184,  0.556],'Parent', handles.axes1); 
        title('Resultant');
        xlabel('x_axis');
        ylabel('Result(x)');
     end
    end
elseif  (button_equation == 1)
    
    syms x;
    y = get(handles.Equation_edit_text,'String');
    if (button_Hold_plotting == 1)
        hold on;
       hPlot =  ezplot(y,'Parent', handles.axes1);
        axis tight;
    else
       hPlot = ezplot(y,'Parent', handles.axes1);
        axis tight;
    end
end    
% --- Executes on button press in Sinx_plotting.
function Sinx_plotting_Callback(hObject, eventdata, handles)
global button_sinex_axis;

global button_y_axis;
global button_x_axis;
global button_xy_axis;
global button_Resultant_Plotting;
global button_cosinex_axis;
if (get(hObject,'Value') == get(hObject,'Max'))
    button_sinex_axis = 1;
    button_y_axis = 0;
    button_x_axis = 0;
    button_xy_axis = 0;
    button_Resultant_Plotting = 0;
    button_cosinex_axis = 0;
else
    button_sinex_axis = 0;
end
assignin('base','button_sinex_axis',button_sinex_axis);


% --- Executes on button press in Cosinex_Plotting.
function Cosinex_Plotting_Callback(hObject, eventdata, handles)
global button_cosinex_axis;

global button_y_axis;
global button_x_axis;
global button_xy_axis;
global button_Resultant_Plotting;
global button_sinex_axis;
if (get(hObject,'Value') == get(hObject,'Max'))
    button_cosinex_axis = 1;
    button_y_axis = 0;
    button_x_axis = 0;
    button_xy_axis = 0;
    button_Resultant_Plotting = 0;
    button_sinex_axis =0;
else
    button_cosinex_axis = 0;
end
assignin('base','button_cosinex_axis',button_cosinex_axis);



% --- Executes on button press in Resultant_Plotting.
function Resultant_Plotting_Callback(hObject, eventdata, handles)
global button_Resultant_Plotting;

global button_y_axis;
global button_x_axis;
global button_xy_axis;
global button_sinex_axis;
global button_cosinex_axis;
if (get(hObject,'Value') == get(hObject,'Max'))
    button_Resultant_Plotting = 1;
    button_y_axis = 0;
    button_x_axis = 0;
    button_xy_axis = 0;
    button_sinex_axis=0;
    button_cosinex_axis = 0;
else
    button_Resultant_Plotting = 0;
end
assignin('base','button_Resultant_Plotting',button_Resultant_Plotting);

% --- Executes on button press in XY_Axis_Plotting.
function XY_Axis_Plotting_Callback(hObject, eventdata, handles)
global button_xy_axis;

global button_x_axis;
global button_y_axis;
global button_Resultant_Plotting;
global button_sinex_axis;
global button_cosinex_axis;
if (get(hObject,'Value') == get(hObject,'Max'))
    button_xy_axis = 1;
    button_y_axis = 0;
    button_x_axis = 0;
    button_Resultant_Plotting = 0;
    button_sinex_axis = 0;
    button_cosinex_axis = 0;
else
    button_xy_axis = 0;
end
assignin('base','button_xy_axis',button_xy_axis);


function Equation_edit_text_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function Equation_edit_text_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in X_Axis_plooting.
function X_Axis_plooting_Callback(hObject, eventdata, handles)
global button_x_axis;

global button_y_axis;
global button_xy_axis;
global button_Resultant_Plotting;
global button_sinex_axis;
global button_cosinex_axis;
if (get(hObject,'Value') == get(hObject,'Max'))
    button_x_axis = 1;
    button_y_axis = 0;
    button_Resultant_Plotting = 0;
    button_xy_axis = 0;
    button_sinex_axis=0;
    button_cosinex_axis = 0;
else
    button_x_axis = 0;
end
assignin('base','button_x_axis',button_x_axis)


% --- Executes on button press in Y_Axis_Plotting.
function Y_Axis_Plotting_Callback(hObject, eventdata, handles)
global button_y_axis;

global button_x_axis;
global button_xy_axis;
global button_Resultant_Plotting;
global button_sinex_axis;
global button_cosinex_axis;
if (get(hObject,'Value') == get(hObject,'Max'))
    button_y_axis = 1;
    button_x_axis = 0;
    button_xy_axis =0;
    button_Resultant_Plotting = 0;
    button_sinex_axis = 0;
    button_cosinex_axis = 0;
else
    button_y_axis = 0;
end
assignin('base','button_y_axis',button_y_axis)


% --- Executes on button press in Hold_plotting.
function Hold_plotting_Callback(hObject, eventdata, handles)
global button_Hold_plotting;
if (button_Hold_plotting) == 0
    button_Hold_plotting = 1;
else
    button_Hold_plotting = 0;
end
assignin('base','Hold_plotting',button_Hold_plotting);
% --- Executes on button press in Equation_button.
function Equation_button_Callback(hObject, eventdata, handles)
global button_equation;
if (get(hObject,'Value') == get(hObject,'Max'))
    button_equation = 1;
else
    button_equation = 0;
end
assignin('base','button_equation',button_equation);

% --- Executes on button press in checkbox1.
function checkbox1_Callback(hObject, eventdata, handles)
