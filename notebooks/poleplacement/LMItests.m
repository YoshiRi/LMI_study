%% poles

% alpha = 0.01*2*pi;
alpha = 3;

%% Solve LMI 1

X = sdpvar(4,4,'symmetric')
Y = sdpvar(1,4,'full')

% LMI 
LMI = [A*X+B*Y+(A*X+B*Y).'+ 2*alpha*X<0,X>0];

sol = solvesdp(LMI,Y*Y.')

X = double(X);
Y = double(Y);
K = Y/X;

% LMI1 result
pole = eig(A+B*K);

display(pole);

%% LMI 2

X = sdpvar(4,4,'symmetric');
Y = sdpvar(1,4,'full');
gamma = sdpvar(1);


LMI = [X>eye(4), A*X+B*Y+(A*X+B*Y).'+ 2*alpha*X<0,[gamma,Y;Y.', eye(4)]>0];

sol = solvesdp(LMI,gamma)

X = double(X);
Y = double(Y);
gamma = double(gamma);
K = Y/X;

% LMI2 result
pole = eig(A+B*K);

display('Solve LMI2')
display(pole);
