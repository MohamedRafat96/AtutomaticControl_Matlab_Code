Kt = 0.27;
Ra = 1.05;
La = 1.7e-3;
Ja = 2.7e-4;
Kb = 0.27;
Ba = 4.32e-3;
B = 0.003;
J = 4.321e-4; %Equivalent inertia
Rg = 1.6e-4;
potentiometer = 1;

s = tf('s');
t1 = Kt/(Ra*Ja*s + Ba*Ra + Kt*Kb);
t2 = Ra/(Ra*Ja*s + Ba*Ra - Kt*Kb);
t3 = Rg/(J*s^2 + B*s);
%exp(-t*s) Time Delay
sys =(t1*exp(-0.65*s))*t3;
sys_clo = feedback(C*sys,1); % C is The value of PID 


