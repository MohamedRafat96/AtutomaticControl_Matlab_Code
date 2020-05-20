Kt = 0.27;
Ra = 1.05;
La = 1.7e-3;
Ja = 2.7e-4;
Kb = 0.27;
Ba = 4.32e-3;
B = 0.003;
J = 4.321e-4; %Equivalent inertia
Rg = 1.6e-4;


s = tf('s');
t1 = Kt/(Ra*Ja*s + Ba*s + Kt*Kb*s);
t2 = Kt/(Ra*Ja*s^2 + Ba*s - Kt*Kb*s);
t3 = 1/(J*s + B);

sys = (t1-t2)*t3
