clear all
Ra = 0.6; % �������
La = 0.012; % ������
Rf = 240; % ���ŵ���
Lf = 120; % ���ŵ��
Vf = 240; % ���ŵ�ѹ
Laf = 1.8; % ���ŵ��໥��
J = 0.05*(2*pi/60); % ת������

Ka = 1 / Ra; % �����·�Ŵ���
Ta = La / Ra; % �����·���ʱ�䳣��
If = Vf / Rf; % ���ŵ���
Ce_phi = (Laf*If)*2*pi/60;
Ct_phi = Laf*If;
Tm = J*Ra/(Ce_phi*Ct_phi); % ����ʱ�䳣��
Tfn = 1e-3; % �ٶȷ�����·ʱ�䳣��=1ms
Tfi = 200e-6; %����������·ʱ�䳣��=200us
TB = Tfi; % ����������ʱ����ʱ�䳣��
K0 = 1;
T0 = 200e-6; % pwmƵ��=1/200us
alpha = 1; % �ٶȷ���ϵ��
belta = 1; % ��������ϵ��

%������PI
ti = Ta; % ����������ʱ�䳣��
Tsumi = Tfi + T0;
Ki = Ta / (2 * Tsumi * Ka * K0 * belta);
Kp_cur = Ki;
Ki_cur = Ki / ti;

%�ٶȻ�PI
Tei = 2*Tsumi;% ���������Ի���ʱ�䳣��
Tsumn = Tei + Tfn;
tn = 4*Tsumn;
TA = 4*Tsumn + Tfn;
Kn = (Tm*belta*Ce_phi)/(2*Tsumn*alpha*Ra);
Kp_spd = Kn;
Ki_spd = Kn / tn;

% ����ֵ
Udc = 310;
n0 = Udc / Ce_phi;
nN = 0.8*n0;
TN = ((Udc-nN*Ce_phi)*Ct_phi)/Ra;
IaN = TN / Ct_phi;





