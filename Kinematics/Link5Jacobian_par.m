function [Jx,Jdx] = Link5Jacobian_par(in1,in2)
%LINK5JACOBIAN_PAR
%    [JX,JDX] = LINK5JACOBIAN_PAR(IN1,IN2)

%    This function was generated by the Symbolic Math Toolbox version 8.1.
%    23-Nov-2020 11:42:48

p1_1 = in2(1);
p1_2 = in2(3);
q3 = in1(3,:);
q6 = in1(6,:);
q7 = in1(7,:);
qd3 = in1(10,:);
qd6 = in1(13,:);
qd7 = in1(14,:);
t2 = cos(q3);
t3 = cos(q6);
t4 = sin(q3);
t5 = sin(q6);
t6 = cos(q7);
t7 = t2.*t5;
t8 = t3.*t4;
t9 = t7+t8;
t10 = sin(q7);
t11 = t2.*t3;
t16 = t4.*t5;
t12 = t11-t16;
t13 = t2.*t5.*(2.09e2./1.0e3);
t14 = t3.*t4.*(2.09e2./1.0e3);
t15 = conj(p1_1);
t17 = t6.*t12;
t23 = t9.*t10;
t18 = t17-t23;
t19 = conj(p1_2);
t20 = t6.*t9;
t21 = t10.*t12;
t22 = t20+t21;
t25 = t15.*t18;
t26 = t19.*t22;
t24 = t13+t14-t25-t26;
t27 = -t25-t26;
t28 = t2.*t3.*(2.09e2./1.0e3);
t29 = t15.*t22;
t31 = t4.*t5.*(2.09e2./1.0e3);
t32 = t18.*t19;
t30 = t28+t29-t31-t32;
t33 = t29-t32;
t34 = qd7.*t33;
t35 = qd6.*t30;
t36 = t2.*(1.9e1./1.0e2);
Jx = reshape([0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t13+t14+t36-t15.*t18-t19.*t22,t4.*(-1.9e1./1.0e2)+t28+t29-t4.*t5.*(2.09e2./1.0e3)-t18.*t19,0.0,0.0,0.0,0.0,t24,t30,t27,t33,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t24,t30,0.0,0.0,0.0,0.0,t24,t30,t27,t33,0.0,0.0,0.0,0.0,-t15.*t18-t19.*t22,t29-t18.*t19,0.0,0.0,0.0,0.0,t27,t33,t27,t33,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0],[2,7,14]);
if nargout > 1
    t37 = qd3.*t30;
    t38 = t34+t35+t37;
    t39 = qd3.*t33;
    t40 = qd6.*t33;
    t41 = t34+t39+t40;
    t42 = t13+t14-t25-t26+t36;
    t43 = t25+t26;
    t44 = qd7.*t43;
    t45 = t4.*(1.9e1./1.0e2);
    t47 = qd3.*t24;
    t48 = qd6.*t24;
    t46 = t44-t47-t48;
    t49 = qd3.*t43;
    t50 = qd6.*t43;
    t51 = t44+t49+t50;
    Jdx = reshape([0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t34+t35-qd3.*(-t28-t29+t31+t32+t45),t44-qd6.*t24-qd3.*t42,0.0,0.0,0.0,0.0,t38,t46,t41,t51,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t38,t46,0.0,0.0,0.0,0.0,t38,t46,t41,t51,0.0,0.0,0.0,0.0,t41,t51,0.0,0.0,0.0,0.0,t41,t51,t41,t51,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t42,t28+t29-t31-t32-t45,0.0,0.0,0.0,0.0,t24,t30,t27,t33,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t24,t30,0.0,0.0,0.0,0.0,t24,t30,t27,t33,0.0,0.0,0.0,0.0,t27,t33,0.0,0.0,0.0,0.0,t27,t33,t27,t33],[2,7,14]);
end
