clear all
Ra = 0.6; % 电枢电阻
La = 0.012; % 电枢电感
Rf = 240; % 励磁电阻
Lf = 120; % 励磁电感
Vf = 240; % 励磁电压
Laf = 1.8; % 励磁电枢互感
J = 0.05*(2*pi/60); % 转动惯量

Ka = 1 / Ra; % 电枢回路放大倍数
Ta = La / Ra; % 电枢回路电磁时间常数
If = Vf / Rf; % 励磁电流
Ce_phi = (Laf*If)*2*pi/60;
Ct_phi = Laf*If;
Tm = J*Ra/(Ce_phi*Ct_phi); % 机电时间常数
Tfn = 1e-3; % 速度反馈回路时间常数=1ms
Tfi = 200e-6; %电流反馈回路时间常数=200us
TB = Tfi; % 电流反馈延时环节时间常数
K0 = 1;
T0 = 200e-6; % pwm频率=1/200us
alpha = 1; % 速度反馈系数
belta = 1; % 电流反馈系数

%电流环PI
ti = Ta; % 电流环积分时间常数
Tsumi = Tfi + T0;
Ki = Ta / (2 * Tsumi * Ka * K0 * belta);
Kp_cur = Ki;
Ki_cur = Ki / ti;

%速度环PI
Tei = 2*Tsumi;% 电流环惯性环节时间常数
Tsumn = Tei + Tfn;
tn = 4*Tsumn;
TA = 4*Tsumn + Tfn;
Kn = (Tm*belta*Ce_phi)/(2*Tsumn*alpha*Ra);
Kp_spd = Kn;
Ki_spd = Kn / tn;

% 电机额定值
Udc = 310;
n0 = Udc / Ce_phi;
nN = 0.8*n0;
TN = ((Udc-nN*Ce_phi)*Ct_phi)/Ra;
IaN = TN / Ct_phi;





