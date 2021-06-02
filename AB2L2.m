%% Questão 1

z = tf('z');
numd = .0007378*(1+z^-1)^6;
dend = (1-1.2686*z^-1 + .7051*z^-2)*(1-1.0106*z^-1 + 0.3583*z^-2);
H_z = numd/dend;

[numz,denz] = tfdata(H_z,'v');

f = -pi:0.00001:pi;
grpdelay(numz,denz,f);

%% Questão 2

s = tf('s');
num = 0.20238;
den = (s^2+ 0.3996*s + 0.5871)*(s^2 + 1.0836*s + 0.5871)*(s^2 + 1.4802*s + 0.5871);
H_s = num/den;