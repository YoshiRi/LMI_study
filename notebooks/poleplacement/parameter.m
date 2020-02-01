%% parameter
m2 = 0.002;
l2 = 0.1;
g = 9.8;
L1 = 11.6e-2;
% tekito
I2 = L1/2;
c2 = 1.1;
b = 1,4;
a = 2.1;

%% Equation
A = [0 0 1 0;
    0 0 0 1;
    0 0 -a 0;
    0 m2*g*l2/I2 m2*L1*l2*a/I2 -c2/I2];

B = [0;0;b;-m2*L1*l2*b/I2];




%% Pattern 2
k = 0.2;
f = 0.01;

A = [ 0 0 1 0;
    0 0 0 1;
    -k k -f f;
    k -k f -f];
B = [ 0; 0; 1; 0];