
function varargout = untitled(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled_OutputFcn, ...
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

function setupPingPong
global   timerPing 
global   timerPong
global   Buffer1
Buffer1=zeros(6,2000);
timerPing = timer;
timerPong = timer;

timerPing.TimerFcn = @(~,~)pingPongActivity(true,  timerPing, timerPong);
timerPing.Name = 'PingTimer';

timerPong.TimerFcn = @(~,~)pingPongActivity(false, timerPing, timerPong);
timerPong.Name = 'PongTimer';

timerPing.StartDelay = 0;
start(timerPing);

function pingPongActivity(isPing, timerPing, timerPong)
 global t
 global   Buffer1
 global hand
    if isPing
       % disp(['PING (' datestr(now,'yyyy-mm-dd HH:MM:SS.FFF') ')']);
            Msg.Data = int16( [0 2 3 4 5 6 7 8 9 10 11 12 13]);
            Msg.Size = int16(1); % 8 bytes for Msg.Data and 4 for Msg.Size 
          
            TotalMsg = [ Msg.Data];% Msg.Data allready int8
            fwrite(t,TotalMsg,'int16');
            avalibleBytes=t.BytesAvailable;
            if(avalibleBytes>0)
            rawData = fread(t,fix((avalibleBytes/2)/20)*20,'int16');
            A=reshape(rawData,[20,fix((avalibleBytes/2)/20)]);
            [sa,sb]=size(Buffer1);
            [sa1,sb1]=size(A);
            Buffer1=[Buffer1(1:6,(sb1+1):1:(sb)) A(1:6,:)];
            cla(hand.axes1);
            %%axis(hand.axes1,[-2000 2000 -35000 3500])
            hold(hand.axes1,'on');
            plot(hand.axes1,Buffer1(1,:),'r');            
            plot(hand.axes1,Buffer1(2,:),'g');
            plot(hand.axes1,Buffer1(3,:),'b');
            cla(hand.axes2);
            hold(hand.axes2,'on');
            plot(hand.axes2,Buffer1(4,:),'r');            
            plot(hand.axes2,Buffer1(5,:),'g');
            plot(hand.axes2,Buffer1(6,:),'b');
            end
            
            
    else
       % disp(['PONG (' datestr(now,'yyyy-mm-dd HH:MM:SS.FFF') ')']);
         %   tr = tcpip('192.168.0.10',7,'NetworkRole','Client'); 
         %   tr.ByteOrder = 'littleEndian';
             
           % set(tr, 'InputBufferSize', 30000) 
            %%set(tr,'Timeout',30);
           % fopen(tr);
            %rawData = fread(t,20,'int16')
            %fclose(t);
    end
    delayTime = 0.2;
  %  display(['    delaying '  num2str(delayTime) ' sec.'])
    if isPing
       nextTimer = timerPong;
    else
        nextTimer = timerPing;
    end
    set(nextTimer,'StartDelay', delayTime);
   start(nextTimer);

% --- Executes just before untitled is made visible.
function untitled_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to untitled (see VARARGIN)
global hand
hand=handles;
% Choose default command line output for untitled
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes untitled wait for user response (see UIRESUME)
% uiwait(handles.figure1);
function utilityFcn()
    disp('laca')
    % some lengthy calculation/update done here


% --- Outputs from this function are returned to the command line.
function varargout = untitled_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
            
 global t
 t= tcpip('192.168.0.10'); 
 t.ByteOrder = 'littleEndian';
 set(t, 'RemotePort',7)  
 set(t, 'InputBufferSize', 30000) 
           
fopen(t)
setupPingPong;

function pushbutton2_Callback(hObject, eventdata, handles)
global t
%%stop(timerPing);
fclose(t);
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



