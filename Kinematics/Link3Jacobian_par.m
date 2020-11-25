function [Jx,Jdx] = Link3Jacobian_par(in1,in2)
%LINK3JACOBIAN_PAR
%    [JX,JDX] = LINK3JACOBIAN_PAR(IN1,IN2)

%    This function was generated by the Symbolic Math Toolbox version 8.1.
%    23-Nov-2020 11:42:40

p1_1 = in2(1);
p1_2 = in2(3);
q3 = in1(3,:);
q4 = in1(4,:);
q5 = in1(5,:);
qd3 = in1(10,:);
qd4 = in1(11,:);
qd5 = in1(12,:);
t2 = cos(q3);
t3 = cos(q4);
t4 = sin(q3);
t5 = sin(q4);
t6 = cos(q5);
t7 = t2.*t5;
t8 = t3.*t4;
t9 = t7+t8;
t10 = sin(q5);
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
t34 = t4.*(1.9e1./1.0e2);
Jx = reshape([0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t2.*(-1.9e1./1.0e2)+t13+t14-t15.*t18-t19.*t22,t28+t29+t34-t4.*t5.*(2.09e2./1.0e3)-t18.*t19,t24,t30,t27,t33,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t24,t30,t24,t30,t27,t33,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,-t15.*t18-t19.*t22,t29-t18.*t19,t27,t33,t27,t33,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0],[2,7,14]);
if nargout > 1
    t35 = qd5.*t33;
    t36 = qd4.*t30;
    t37 = qd3.*t30;
    t38 = t35+t36+t37;
    t39 = qd3.*t33;
    t40 = qd4.*t33;
    t41 = t35+t39+t40;
    t42 = t25+t26;
    t43 = qd5.*t42;
    t44 = t28+t29-t31-t32+t34;
    t46 = qd3.*t24;
    t47 = qd4.*t24;
    t45 = t43-t46-t47;
    t48 = qd3.*t42;
    t49 = qd4.*t42;
    t50 = t43+t48+t49;
    Jdx = reshape([0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t35+t36+qd3.*t44,t43-qd4.*t24+qd3.*(t2.*(1.9e1./1.0e2)-t13-t14+t25+t26),t38,t45,t41,t50,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t38,t45,t38,t45,t41,t50,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t41,t50,t41,t50,t41,t50,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t2.*(-1.9e1./1.0e2)+t13+t14-t25-t26,t44,t24,t30,t27,t33,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t24,t30,t24,t30,t27,t33,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t27,t33,t27,t33,t27,t33,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0],[2,7,14]);
end
