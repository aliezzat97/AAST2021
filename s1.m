clc
clear all
close all
msg=randi([0 1],1,24);
A=2;
f=10;
fs=10*f;
ts=1/fs;
t=0:ts:2-ts;
carrier = A*cos(2*pi*f*t);
Mod=[];
for i=1:3:length(msg)
    if msg(i)==0&&msg(i+1)==0&&msg(i+2)==0
        Mod =[Mod 1*carrier];
    elseif msg(i)==0&& msg(i+1)==0&&msg(i+2)==1
        Mod =[Mod 3*carrier];
    elseif msg(i)==0&& msg(i+1)==1&&msg(i+2)==0
        Mod =[Mod 5*carrier];
    elseif msg(i)==0&& msg(i+1)==1&&msg(i+2)==1 
        Mod =[Mod 7*carrier];
    elseif msg(i)==1&& msg(i+1)==0&&msg(i+2)==0
        Mod =[Mod -1*carrier];
    elseif msg(i)==1&& msg(i+1)==1&&msg(i+2)==1
        Mod =[Mod -3*carrier];
    elseif msg(i)==1&& msg(i+1)==1&&msg(i+2)==0
        Mod =[Mod -5*carrier];
    elseif msg(i)==1&& msg(i+1)==1&&msg(i+2)==1
        Mod =[Mod -7*carrier]; 
          
    end
end
plot(t,Mod);