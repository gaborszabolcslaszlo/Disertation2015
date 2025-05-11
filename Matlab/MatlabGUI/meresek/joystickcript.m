joy = vrjoystick(1)
joy = vrjoystick(1,'forcefeedback');
while(1)
[a b c]=read(joy)
end;