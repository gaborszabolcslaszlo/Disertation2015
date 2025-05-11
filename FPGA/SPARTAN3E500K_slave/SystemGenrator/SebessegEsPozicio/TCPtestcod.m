t = tcpip('192.168.0.10', 7); 

% Set size of receiving buffer, if needed. 
set(t, 'InputBufferSize', 30000); 

% Open connection to the server. 
fopen(t); 

% Transmit data to the server (or a request for data from the server). 
fprintf(t, 'GET /'); 

% Pause for the communication delay, if needed. 
pause(1) 

% Receive lines of data from server 
while (get(t, 'BytesAvailable') > 0) 
t.BytesAvailable 
DataReceived = fscanf(t) 
end 

% Disconnect and clean up the server connection. 
fclose(t); 
%%delete(t); 
%%clear t 