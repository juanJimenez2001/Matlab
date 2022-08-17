clc
clear
x = rand(1,10)
for k=1:10,
    if x(k)>=0.5
        x(k)=0.8;
    else
        x(k)=0;
    end
end
x
