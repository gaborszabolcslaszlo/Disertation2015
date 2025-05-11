function varargout =untitled(varargin)
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
function setupPingPong
global   timerPing 
global   timerPong
global   BufferGiro1
global   BufferGiro2
global   MotorBuffer
global logData
global datalogEnable
global joy
global ujoy
ujoy=0;
joy = vrjoystick(1)
joy = vrjoystick(1,'forcefeedback');
datalogEnable=0;
 logData.motor=[];
 logData.giro=[];
MotorBuffer=zeros(24,2000);
BufferGiro1=zeros(10,2000);
BufferGiro2=zeros(10,2000);
timerPing = timer;
timerPong = timer;

timerPing.TimerFcn = @(~,~)pingPongActivity(true,  timerPing, timerPong);
timerPing.Name = 'PingTimer';

timerPong.TimerFcn = @(~,~)pingPongActivity(false, timerPing, timerPong);
timerPong.Name = 'PongTimer';

timerPing.StartDelay = 0.2;
start(timerPing);
function pingPongActivity(isPing, timerPing, timerPong)
 global t
 global t2
 global datalogEnable
 global logData
 global BufferGiro1
 global BufferGiro2
 global MotorBuffer
 global hand
    if isPing
       % disp(['PING (' datestr(now,'yyyy-mm-dd HH:MM:SS.FFF') ')']);
            
            Msg2.Data = int32([1]);
            Msg2.Size = int32(1); % 8 bytes for Msg.Data and 4 for Msg.Size
          
            TotalMsg2 = [ Msg2.Data];% Msg.Data allready int8
            avalibleBytes=t.BytesAvailable;
            fwrite(t2,TotalMsg2,'int32');
            
            if(avalibleBytes>0)
            rawData = fread(t,fix((avalibleBytes/2)/20)*20,'int16');
            A=reshape(rawData,[20,fix((avalibleBytes/2)/20)]);
            [sa,sb]=size(BufferGiro1);
            [sa1,sb1]=size(A);
            BufferGiro1=[BufferGiro1(1:10,(sb1+1):1:(sb)) A(1:10,:)];
            if(datalogEnable)                
            %logData.giro=[logData.giro A];
            end
           %% BufferGiro2=[Buffer1(11:20,(sb1+1):1:(sb)) A(11:20,:)];
           
         
            
            popup_sel_index = get(hand.popupmenu1, 'Value');
            switch popup_sel_index
                case 1
                       
                        h=subplot(3,1,1,'Parent',hand.uipanel1);
                        cla(h);
                        plot(h, BufferGiro1(1,:),'r');            
                        plot(h, BufferGiro1(2,:),'g');
                        plot(h, BufferGiro1(3,:),'b'); 
                        legend(h,'X','Y','Z');
                        h=subplot(3,1,2,'Parent',hand.uipanel1);                       
                        cla(h);
                        plot(h, BufferGiro1(4,:),'r');            
                        plot(h, BufferGiro1(5,:),'g');
                        plot(h, BufferGiro1(6,:),'b');
                        legend(h,'X','Y','Z');
                        h=subplot(3,1,3,'Parent',hand.uipanel1);
                        cla(h);
                        plot(h, BufferGiro1(10,:)./10,'r');
                case 2
                        h=subplot(2,1,1,'Parent',hand.uipanel1);
                        cla(h);
                        plot(h, BufferGiro2(1,:),'r');            
                        plot(h, BufferGiro2(2,:),'g');
                        plot(h, BufferGiro2(3,:),'b'); 
                        legend(h,'X','Y','Z');
                        h=subplot(2,1,2,'Parent',hand.uipanel1);                       
                        cla(h);
                        plot(h, BufferGiro2(4,:),'r');            
                        plot(h, BufferGiro2(5,:),'g');
                        plot(h, BufferGiro2(6,:),'b');
                        legend(h,'X','Y','Z');
                case 3
                    for i=1:4
                        h=subplot(2,4,i,'Parent',hand.uipanel1);
                        cla(h);
                        plot(h,  MotorBuffer(3+(4*(i-1)),:),'r','LineWidth',2) 
                        plot(h, MotorBuffer(17+(2*(i-1)),:),'--b','LineWidth',2) 
                        h=subplot(2,4,i+4,'Parent',hand.uipanel1);                       
                        cla(h);
                        plot(h, MotorBuffer(4+(4*(i-1)),:),'g','LineWidth',2);                        
                    end;   
                       
                case 4
                      for i=1:4
                        h=subplot(2,4,i,'Parent',hand.uipanel1);
                        cla(h);
                        plot(h,  MotorBuffer(1+(4*(i-1)),:),'r','LineWidth',2)
                        plot(h, MotorBuffer(17+1+(2*(i-1)),:),'--b','LineWidth',2) 
                        h=subplot(2,4,i+4,'Parent',hand.uipanel1);
                        cla(h);
                        plot(h, MotorBuffer(2+(4*(i-1)),:),'g','LineWidth',2); 
                    end;                      
                case 5
                        h=subplot(2,1,1,'Parent',hand.uipanel1);
                        cla(h);
                        plot(h,  MotorBuffer(1,:),'r','LineWidth',2);
                        plot(h, MotorBuffer(17+1,:),'--b','LineWidth',2); 
                        h=subplot(2,1,2,'Parent',hand.uipanel1); 
                        cla(h);
                        plot(h, MotorBuffer(2,:),'g','LineWidth',2);
                case 6
                        h=subplot(2,1,1,'Parent',hand.uipanel1);
                        cla(h);
                        plot(h,  MotorBuffer(3,:),'r','LineWidth',2); 
                        plot(h,  MotorBuffer(17,:),'--b','LineWidth',2);            
                        h=subplot(2,1,2,'Parent',hand.uipanel1);
                        cla(h);
                        plot(h, MotorBuffer(4,:),'g','LineWidth',2);  
                        
            end
            
            end
             
            delayTime = 0.2;
            
    else
             Msg.Data = int16( [0 2 3 4 5 6 7 8 9 10 11 12 13]);
             Msg.Size = int16(1); % 8 bytes for Msg.Data and 4 for Msg.Size          
          
             TotalMsg = [ Msg.Data];% Msg.Data allready int8
             fwrite(t,TotalMsg,'int16');
             avalibleBytes2=t2.BytesAvailable
             if(avalibleBytes2>0 )
             rawData = fread(t2,fix((avalibleBytes2/4)/24)*24,'int32');
             if(((avalibleBytes2/4)-(fix((avalibleBytes2/4)/24)*24))~=0)
             %%fread(t2,(avalibleBytes2/4)-(fix((avalibleBytes2/4)/24)*24),'int32');
             end
            %% rawData=fread(t2,fix((avalibleBytes2/4)),'int32')'
             A=reshape(rawData,[24,fix((avalibleBytes2/4)/24)]);
             [sa,sb]=size(MotorBuffer);
             [sa1,sb1]=size(A);
             for i=1:2:16
             A(i,:)= typecast(uint16(A(i,:)),'int16');
             end
            MotorBuffer=[MotorBuffer(1:24,(sb1+1):1:(sb)) A(1:24,:)];
         
             if(datalogEnable)   
             logData.motor=[logData.motor A];
             end
            % MotorBuffer
           
             end
       % disp(['PONG (' datestr(now,'yyyy-mm-dd HH:MM:SS.FFF') ')']);
         %   tr = tcpip('192.168.0.10',7,'NetworkRole','Client'); 
         %   tr.ByteOrder = 'littleEndian';
             
           % set(tr, 'InputBufferSize', 30000) 
            %%set(tr,'Timeout',30);
           % fopen(tr);
            %rawData = fread(t,20,'int16')
            %fclose(t);
            delayTime = 0.2;
    end
    
    global joy
    global ujoy
    [a b pov]=read(joy);
    uj=a(1);
    if(abs(uj)>0.2)
        ujoy=ujoy+5*uj;
    else
        ujoy=0;
    end;

global t3
 
     speed=a(1)*15

global pos
if(b(5)==1)
     pos=pos+2;
end

if(b(7)==1)
     pos=pos-2;
end

 
 data =str2num(char(get(hand.P,'String')));
 if(length(data)>0)
     P=data;
 end
 data =str2num(char(get(hand.I,'String')));
 if(length(data)>0)
     I=data;
 end
 data =str2num(char(get(hand.D,'String')));
 if(length(data)>0)
     D=data;
 end
 data =str2num(char(get(hand.sarany,'String')));
 if(length(data)>0)
     sarany=data;
 end
 data =str2num(char(get(hand.qsav,'String')));
 if(length(data)>0)
     qsav=data;
 end
  data =str2num(char(get(hand.Ts,'String')));
 if(length(data)>0)
     Ts=data;
     TsSpar=data*1000000000/20;
 end
  data =str2num(char(get(hand.Ts,'String')));
 if(length(data)>0)
     Ts=data;
     TsSpar=data*1000000000/20;
 end
 %global speed

 %%PWM Coolers panel
 b1=get(hand.radiobutton1,'value');
 b2=get(hand.radiobutton2,'value');
 b3=get(hand.radiobutton3,'value');
 b4=get(hand.radiobutton4,'value');
 b5=get(hand.radiobutton5,'value');
 b6=get(hand.radiobutton6,'value');
 config=bi2de([ b1 b2 b3 b4 b5 b6 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0]); %% LSB MSB
 Q0=P*(1+(D/Ts)+(Ts/I));
 Q1=P*(-1-(2*D/Ts));
 Q2=P*(D*Ts);
 csomagid=1;
 regAddres=0;
 regData=0;
Msg3.Data = int32([csomagid 4 speed pos config Q0 Q1 Q2 TsSpar sarany qsav regAddres regData]);
Msg3.Size = int32(4); % 8 bytes for Msg.Data and 4 for Msg.Size          
TotalMsg3 = [ Msg3.Data];% Msg.Data allready int8

fwrite(t3,TotalMsg3,'int32');
    
  %  display(['    delaying '  num2str(delayTime) ' sec.'])
    if isPing
       nextTimer = timerPong;
    else
        nextTimer = timerPing;
    end
    set(nextTimer,'StartDelay', delayTime);
   start(nextTimer);
function untitled_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);
global hand
hand=handles;
initDisplay
function utilityFcn()
    disp('laca')
function varargout = untitled_OutputFcn(hObject, eventdata, handles) 

varargout{1} = handles.output;
function pushbutton1_Callback(hObject, eventdata, handles)
            
 global t
 t= tcpip('192.168.0.10'); 
 t.ByteOrder = 'littleEndian';
 set(t, 'RemotePort',7)  
 set(t, 'InputBufferSize', 3000000)
 
 global t2
 t2= tcpip('192.168.0.10'); 
 t2.ByteOrder = 'littleEndian';
 set(t2, 'RemotePort',8)  
 set(t2, 'InputBufferSize', 3000000) 
 
 global t3
 t3= tcpip('192.168.0.10'); 
 t3.ByteOrder = 'littleEndian';
 set(t3, 'RemotePort',9)  
 set(t3, 'InputBufferSize', 30000) 
           
fopen(t)
fopen(t2)
fopen(t3)
setupPingPong;
function pushbutton2_Callback(hObject, eventdata, handles)
global t
global t2
global t3
%%stop(timerPing);
fclose(t);
fclose(t2);
fclose(t3);
function popupmenu1_Callback(hObject, eventdata, handles)
initDisplay
function popupmenu1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
set(hObject, 'String', {'Giro1', 'Giro2', 'Pozicio', 'Sebesseg','Ipmag0 Sebesseg','Ipmag0 Pozicio'});
initDisplay
function case3
        global hand
                    for i=1:4
                        h=subplot(2,4,i,'Parent',hand.uipanel1);
                        %%ylabel(h,'Gyorsulás', 'FontSize', 12);
                        title(h,strcat('Pozicio IpMag',num2str(i-1)), 'FontSize', 12);
                        xlabel(h,'ido', 'FontSize', 12);
                        hold(h,'on');
                        grid(h, 'on')
                        set(h,'ylim',[-200 200]);
                        set(h,'xtick',[ 0  1000  2000]);
                        set(h,'XTickLabel',{ '10s';  '5s'; '0s'});
                        h=subplot(2,4,i+4,'Parent',hand.uipanel1);
                       %% ylabel(h,'Giroszkop', 'FontSize', 12);
                        title(h,strcat('Beavatkozo Jel IpMag',num2str(i-1)), 'FontSize', 12);
                        xlabel(h,'ido', 'FontSize', 12);
                        hold(h,'on');
                        grid(h,'on');
                        set(h,'ytick',[ -65535  0 65535 ])
                        set(h,'YTickLabel',{ 'Umax';'0' ;'Umax'; })
                        set(h,'ylim',[-65600 65600]);
                        set(h,'xtick',[ 0  1000  2000]);
                        set(h,'XTickLabel',{ '10s';  '5s'; '0s'});
                      end
function case4
        global hand
                    for i=1:4
                        h=subplot(2,4,i,'Parent',hand.uipanel1);
                        %%ylabel(h,'Gyorsulás', 'FontSize', 12);
                        title(h,strcat('Sebesseg IpMag',num2str(i-1)), 'FontSize', 12);
                        xlabel(h,'ido', 'FontSize', 12);
                        hold(h,'on');
                        grid(h, 'on')
                        set(h,'ylim',[-100 100]);
                        set(h,'xtick',[ 0  1000  2000]);
                        set(h,'XTickLabel',{ '10s';  '5s'; '0s'});
                        h=subplot(2,4,i+4,'Parent',hand.uipanel1);
                       %% ylabel(h,'Giroszkop', 'FontSize', 12);
                       title(h,strcat('Beavatkozo Jel IpMag',num2str(i-1)), 'FontSize', 12);
                        xlabel(h,'ido','FontSize', 11);
                        hold(h,'on');
                        grid(h,'on');
                        set(h,'ytick',[ -65535  0 65535 ])
                        set(h,'YTickLabel',{ 'Umax';'0' ;'Umax'; })
                        set(h,'xtick',[ 0  1000  2000]);
                        set(h,'XTickLabel',{ '10s';  '5s'; '0s'});
                        set(h,'ylim',[-65600 65600]);
                      end                     
function case5 
     global hand
                        h=subplot(2,1,1,'Parent',hand.uipanel1);
                        %%ylabel(h,'Gyorsulás', 'FontSize', 12);
                        title(h,strcat('Sebesseg IpMag0 Sebesseg'), 'FontSize', 12);
                        xlabel(h,'ido', 'FontSize', 12);
                        hold(h,'on');
                        grid(h, 'on')
                        set(h,'ylim',[-1000 1000]);   
                        set(h,'xtick',[ 0 400 800 1200 1600 2000]);
                        set(h,'XTickLabel',{ '10s'; '8s' ;'6s' ;'4s'; '2s'; '0s'});
                        h=subplot(2,1,2,'Parent',hand.uipanel1);
                       %% ylabel(h,'Giroszkop', 'FontSize', 12);
                        title(h,strcat('Beavatkozo Jel IpMag0 '), 'FontSize', 12);
                        xlabel(h,'ido', 'FontSize', 12);
                        hold(h,'on');
                        grid(h,'on');
                        set(h,'ytick',[ -65535  0 65535 ])
                        set(h,'YTickLabel',{ 'Umax';'0' ;'Umax'; })
                        set(h,'ylim',[-65600 65600]);  
                        set(h,'xtick',[ 0 400 800 1200 1600 2000]);
                        set(h,'XTickLabel',{ '10s'; '8s' ;'6s' ;'4s'; '2s'; '0s'});
function case6
 global hand
                        h=subplot(2,1,1,'Parent',hand.uipanel1);
                        %%ylabel(h,'Gyorsulás', 'FontSize', 12);
                        title(h,strcat('Pozicio IpMag0 '), 'FontSize', 12);
                        xlabel(h,'ido', 'FontSize', 12);
                        hold(h,'on');
                        grid(h, 'on')
                        set(h,'ylim',[-1000 1000]);
                        set(h,'xtick',[ 0 400 800 1200 1600 2000]);
                        set(h,'XTickLabel',{ '10s'; '8s' ;'6s' ;'4s'; '2s'; '0s'});
                        h=subplot(2,1,2,'Parent',hand.uipanel1);
                       %% ylabel(h,'Giroszkop', 'FontSize', 12);
                        title(h,strcat('Beavatkozo Jel IpMag0 '), 'FontSize', 12);
                        xlabel(h,'ido', 'FontSize', 12);
                        hold(h,'on');
                        grid(h,'on');
                        set(h,'ytick',[ -65535  0 65535 ])
                        set(h,'YTickLabel',{ 'Umax';'0' ;'Umax'; })
                        set(h,'ylim',[-65600 65600]);    
                        set(h,'xtick',[ 0 400 800 1200 1600 2000]);
                        set(h,'XTickLabel',{ '10s'; '8s' ;'6s' ;'4s'; '2s'; '0s'});
function popupmenu2_Callback(hObject, eventdata, handles)
global hand
global ipMagId
popup_sel_index = get(hand.popupmenu2, 'Value');
            switch popup_sel_index
                case 1
                    ipMagId=1
                case 2 
                    ipMagId=2
                case 3
                    ipMagId=3
                case 4
                    ipMagId=4
            end
function popupmenu2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
set(hObject, 'String', {'IPmad0', 'IPmad1', 'IPmad2', 'IPmad3'});
function pushbutton3_Callback(hObject, eventdata, handles)
global ipMagId
global hand
global t3
 data =str2num(char(get(hand.edit1,'String')));
 if(length(data)>0)
     speed=data;
 end
 data =str2num(char(get(hand.edit2,'String')));
 if(length(data)>0)
     pos=data;
 end
 data =str2num(char(get(hand.P,'String')));
 if(length(data)>0)
     P=data;
 end
 data =str2num(char(get(hand.I,'String')));
 if(length(data)>0)
     I=data;
 end
 data =str2num(char(get(hand.D,'String')));
 if(length(data)>0)
     D=data;
 end
 data =str2num(char(get(hand.sarany,'String')));
 if(length(data)>0)
     sarany=data;
 end
 data =str2num(char(get(hand.qsav,'String')));
 if(length(data)>0)
     qsav=data;
 end
  data =str2num(char(get(hand.Ts,'String')));
 if(length(data)>0)
     Ts=data;
     TsSpar=data*1000000000/20;
 end
  data =str2num(char(get(hand.Ts,'String')));
 if(length(data)>0)
     Ts=data;
     TsSpar=data*1000000000/20;
 end
 
 %%PWM Coolers panel
 b1=get(handles.radiobutton1,'value');
 b2=get(handles.radiobutton2,'value');
 b3=get(handles.radiobutton3,'value');
 b4=get(handles.radiobutton4,'value');
 b5=get(handles.radiobutton5,'value');
 b6=get(handles.radiobutton6,'value');
 config=bi2de([ b1 b2 b3 b4 b5 b6 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0]); %% LSB MSB
 Q0=P*(1+(D/Ts)+(Ts/I));
 Q1=P*(-1-(2*D/Ts));
 Q2=P*(D*Ts);
 csomagid=1;
 regAddres=0;
 regData=0;
Msg3.Data = int32([csomagid ipMagId speed pos config Q0 Q1 Q2 TsSpar sarany qsav regAddres regData]);
Msg3.Size = int32(4); % 8 bytes for Msg.Data and 4 for Msg.Size          
TotalMsg3 = [ Msg3.Data];% Msg.Data allready int8
fwrite(t3,TotalMsg3,'int32');
function edit2_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function edit1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function qsav_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function sarany_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function P_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function I_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function D_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function Ts_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function initDisplay
global hand
 popup_sel_index = get(hand.popupmenu1, 'Value');
            switch popup_sel_index
                case 1
                       h=subplot(3,1,1,'Parent',hand.uipanel1);
                       hold(h,'on');
                       %%ylabel(h,'Gyorsulás', 'FontSize', 12);
                       title(h,'Gyorsulás', 'FontSize', 12);
                       xlabel(h,'idõ Ts=0.005s', 'FontSize', 12);
                       hold(h,'on');
                       grid(h, 'on')
                       legend(h,'X','Y','Z');
                       set(h,'xtick',[ 0 400 800 1200 1600 2000],'ytick',[ -32767 -32767/2 0 32767/2 32767 ])
                       set(h,'XTickLabel',{ '10s'; '8s' ;'6s' ;'4s'; '2s'; '0s'},'YTickLabel',{ '-2g' ;'-1g' ;'0' ;'1g'; '2g'; })
                      %%  set(hand.axes1,'XTickLabel',['-40';' ';'-30';' ';'-20';' ';'-10';' ';'0';])
                       h=subplot(3,1,2,'Parent',hand.uipanel1);
                       %% ylabel(h,'Giroszkop', 'FontSize', 12);
                       title(h,'Giroszkop', 'FontSize', 12);
                       xlabel(h,'idõ Ts=0.005s', 'FontSize', 12);
                       legend(h,'X','Y','Z');
                       hold(h,'on');
                       grid(h,'on');
                       set(h,'xtick',[ 0 400 800 1200 1600 2000],'ytick',[ -32767 -32767/2 0 32767/2 32767 ])
                       set(h,'XTickLabel',{ '10s'; '8s' ;'6s' ;'4s'; '2s'; '0s'},'YTickLabel',{ '-250 fok/s' ;'-125 fok/s' ;'0' ;'125 fok/s'; '250 fok/s'; })
                       
                       h=subplot(3,1,3,'Parent',hand.uipanel1);
                       %% ylabel(h,'Giroszkop', 'FontSize', 12);
                       title(h,'Hõmérséklet', 'FontSize', 12);
                       xlabel(h,'idõ Ts=0.005s', 'FontSize', 12);
                       legend(h,'X','Y','Z');
                       hold(h,'on');
                       grid(h,'on');
                       set(h,'ylim',[-25 55]);
                       set(h,'xtick',[ 0 400 800 1200 1600 2000],'ytick',[ -20 -10 0 10 20 30 40 50 ])
                       set(h,'XTickLabel',{ '10s'; '8s' ;'6s' ;'4s'; '2s'; '0s'},'YTickLabel',{ '-20C' ;'-10C' ;'0' ;'10C'; '20C'; '30C' ; '40C'; '50C';})
                       
                case 2
                        h=subplot(2,1,1,'Parent',hand.uipanel1);
                        %%ylabel(h,'Gyorsulás', 'FontSize', 12);
                        title(h,'Gyorsulás', 'FontSize', 12);
                        xlabel(h,'ido', 'FontSize', 12);
                        hold(h,'on');
                        grid(h, 'on')
                        legend(h,'X','Y','Z');
                        set(h,'xtick',[ 0 400 800 1200 1600 2000],'ytick',[ -32767 -32767/2 0 32767/2 32767 ])
                        set(h,'XTickLabel',{ '10s'; '8s' ;'6s' ;'4s'; '2s'; '0s'},'YTickLabel',{ '-2g' ;'-1g' ;'0' ;'1g'; '2g'; })
                      %%  set(hand.axes1,'XTickLabel',['-40';' ';'-30';' ';'-20';' ';'-10';' ';'0';])
                        h=subplot(2,1,2,'Parent',hand.uipanel1);
                       %% ylabel(h,'Giroszkop', 'FontSize', 12);
                        title(h,'Giroszkop', 'FontSize', 12);
                        xlabel(h,'ido', 'FontSize', 12);
                        hold(h,'on');
                        legend(h,'X','Y','Z');
                        grid(h,'on');
                        set(h,'xtick',[ 0 400 800 1200 1600 2000],'ytick',[ -32767 -32767/2 0 32767/2 32767 ])
                        set(h,'XTickLabel',{ '10s'; '8s' ;'6s' ;'4s'; '2s'; '0s'},'YTickLabel',{ '-250 fok/s' ;'-125 fok/s' ;'0' ;'125 fok/s'; '250 fok/s'; })
                       
                case 3
                      case3
               
                case 4
                      case4
                case 5
                      case5
                case 6
                      case6      
            end
function qsav_Callback(hObject, eventdata, handles)
function regAddr_Callback(hObject, eventdata, handles)
function regAddr_CreateFcn(hObject, eventdata, handles)
% hObject    handle to regAddr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function DutyPWMcoolers_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DutyPWMcoolers (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function edit16_Callback(hObject, eventdata, handles)
function edit16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end





% --- Executes during object creation, after setting all properties.
function PWMcoolers_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
set(hObject, 'String', {'FPGA cooler', 'Pompa', 'Hocserelõ cooler'});

% --------------------------------------------------------------------
function menu_Callback(hObject, eventdata, handles)
% hObject    handle to menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
function kuldCsomag2(addr,data)
global t3
addr
data
Msg3.Data = int32([ 2 ,addr data]);
Msg3.Size = int32(4); % 8 bytes for Msg.Data and 4 for Msg.Size          
TotalMsg3 = [ Msg3.Data];% Msg.Data allready int8
fwrite(t3,TotalMsg3,'int32');

% --- Executes on button press in PWMcoolersENA.
function PWMcoolersENA_Callback(hObject, eventdata, handles)
global hand
b1=get(handles.PWMcoolersENA,'value'); 
config=bi2de([b1,0,0,0,0,0,0,0]); %% LSB MSB;
data =str2num(char(get(hand.DutyPWMcoolers,'String')));
if(length(data)>0)
     regData=data;
end
popup_sel_index = get(hand.PWMcoolers, 'Value');
            switch popup_sel_index
                case 1
                    kuldCsomag2(1,config)                   
                case 3 
                    kuldCsomag2(3,config)               
            end

function DutyPWMcoolers_KeyPressFcn(hObject, eventdata, handles)
global hand
if(strcmp(eventdata.Key,'return'))
data =str2num(char(get(hand.DutyPWMcoolers,'String')));
if(length(data)>0)
     regData=data;
end
popup_sel_index = get(hand.PWMcoolers, 'Value');
            switch popup_sel_index
                case 1                    
                    kuldCsomag2(2,data)                   
                case 3 
                    kuldCsomag2(4,data)               
            end
end


% --- Executes on button press in logdataRadioButton.
function logdataRadioButton_Callback(hObject, eventdata, handles)
global logData
global datalogEnable
b1=get(handles.logdataRadioButton,'value'); 
datalogEnable= b1;
if(b1==0)
  %% save('Untitled.mat','logData'); 
end


% --- Executes on selection change in popupmenu4.
function popupmenu4_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu4 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu4


% --- Executes during object creation, after setting all properties.
function popupmenu4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in enablePWM.
function enablePWM_Callback(hObject, eventdata, handles)
global hand
b1=get(handles.enablePWM,'value'); 
config=bi2de([b1,0,0,0,0,0,0,0]); %% LSB MSB;

popup_sel_index = get(hand.PWMvalaszt, 'Value');
            switch popup_sel_index
                case 1
                    kuldCsomag2(1,config)                   
                case 3 
                    kuldCsomag2(3,config)               
            end


% --- Executes on selection change in PWMvalaszt.
function PWMvalaszt_Callback(hObject, eventdata, handles)
% hObject    handle to PWMvalaszt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns PWMvalaszt contents as cell array
%        contents{get(hObject,'Value')} returns selected item from PWMvalaszt


% --- Executes during object creation, after setting all properties.
function PWMvalaszt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PWMvalaszt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
set(hObject, 'String', {'CoolerFPGA', 'Hocserelo', 'Pompa', });
initDisplay



function DutyPWM_Callback(hObject, eventdata, handles)
% hObject    handle to DutyPWM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DutyPWM as text
%        str2double(get(hObject,'String')) returns contents of DutyPWM as a double


% --- Executes during object creation, after setting all properties.
function DutyPWM_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DutyPWM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on key press with focus on DutyPWM and none of its controls.
function DutyPWM_KeyPressFcn(hObject, eventdata, handles)
global hand
if(strcmp(eventdata.Key,'return'))
data =str2num(char(get(hand.DutyPWM,'String')));
if(length(data)>0)
     regData=data;
end
popup_sel_index = get(hand.PWMvalaszt, 'Value');
            switch popup_sel_index
                case 1                    
                    kuldCsomag2(2,data)                   
                case 3 
                    kuldCsomag2(4,data)               
            end
end
