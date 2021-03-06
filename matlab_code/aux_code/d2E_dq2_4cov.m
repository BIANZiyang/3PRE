function d2E_dq2 = d2E_dq2_4cov(in1,in2,in3,in4)
%D2E_DQ2_4COV
%    D2E_DQ2 = D2E_DQ2_4COV(IN1,IN2,IN3,IN4)

%    This function was generated by the Symbolic Math Toolbox version 5.8.
%    27-Jun-2012 13:14:13

T1 = in4(1,:);
T2 = in4(2,:);
T3 = in4(3,:);
f_n1 = in2(1,:);
f_n2 = in2(2,:);
f_n3 = in2(3,:);
f_p1 = in1(1,:);
f_p2 = in1(2,:);
f_p3 = in1(3,:);
q1 = in3(1,:);
q2 = in3(2,:);
q3 = in3(3,:);
q4 = in3(4,:);
t2 = q1.^2;
t3 = q2.^2;
t4 = q3.^2;
t5 = q4.^2;
t6 = q1.*q4.*2.0;
t7 = q1.*q3.*2.0;
t8 = q2.*q4.*2.0;
t9 = q1.*q2.*2.0;
t10 = t2+t3-t4-t5;
t11 = q2.*q3.*2.0;
t12 = t7+t8;
t13 = t2-t3+t4-t5;
t14 = t6+t11;
t15 = q3.*q4.*2.0;
t16 = t2-t3-t4+t5;
t17 = t7-t8;
t18 = t9+t15;
t19 = T2.*(1.0./2.0);
t20 = f_n2.*t13.*(1.0./2.0);
t21 = f_n1.*t14.*(1.0./2.0);
t22 = t9-t15;
t23 = T3.*(1.0./2.0);
t24 = f_n3.*t16.*(1.0./2.0);
t25 = f_n2.*t18.*(1.0./2.0);
t43 = f_p3.*(1.0./2.0);
t44 = f_n1.*t17.*(1.0./2.0);
t26 = t23+t24+t25-t43-t44;
t27 = f_n1.*q1.*2.0;
t28 = f_n3.*q3.*2.0;
t76 = f_n2.*q4.*2.0;
t29 = t27+t28-t76;
t30 = f_n1.*q1;
t31 = f_n3.*q3;
t78 = f_n2.*q4;
t32 = t30+t31-t78;
t33 = f_n2.*t13;
t34 = f_n1.*t14;
t72 = f_n3.*t22;
t35 = T2-f_p2+t33+t34-t72;
t36 = f_n3.*t16;
t37 = f_n2.*t18;
t62 = f_n1.*t17;
t38 = T3-f_p3+t36+t37-t62;
t39 = T1.*(1.0./2.0);
t40 = f_n1.*t10.*(1.0./2.0);
t41 = t6-t11;
t42 = f_n3.*t12.*(1.0./2.0);
t45 = f_n1.*q2;
t46 = f_n2.*q3;
t47 = f_n3.*q4;
t48 = t45+t46+t47;
t49 = f_n2.*q1.*2.0;
t50 = f_n1.*q4.*2.0;
t89 = f_n3.*q2.*2.0;
t51 = t49+t50-t89;
t52 = f_n2.*q1;
t53 = f_n1.*q4;
t88 = f_n3.*q2;
t54 = t52+t53-t88;
t55 = f_n1.*q2.*2.0;
t56 = f_n2.*q3.*2.0;
t57 = f_n3.*q4.*2.0;
t58 = t55+t56+t57;
t59 = f_n1.*t10;
t60 = f_n3.*t12;
t71 = f_n2.*t41;
t61 = T1-f_p1+t59+t60-t71;
t82 = f_p1.*(1.0./2.0);
t83 = f_n2.*t41.*(1.0./2.0);
t63 = t39+t40+t42-t82-t83;
t73 = f_p2.*(1.0./2.0);
t74 = f_n3.*t22.*(1.0./2.0);
t64 = t19+t20+t21-t73-t74;
t65 = f_n2.*q2.*2.0;
t66 = f_n3.*q1.*2.0;
t86 = f_n1.*q3.*2.0;
t67 = t65+t66-t86;
t68 = f_n2.*q2;
t69 = f_n3.*q1;
t85 = f_n1.*q3;
t70 = t68+t69-t85;
t75 = f_n2.*t26.*2.0;
t77 = t29.*t48;
t79 = t32.*t58;
t80 = f_n2.*t38;
t108 = f_n3.*t64.*2.0;
t109 = f_n3.*t35;
t81 = t75+t77+t79+t80-t108-t109;
t84 = f_n3.*t26.*2.0;
t87 = t67.*t70.*2.0;
t90 = t51.*t54.*2.0;
t91 = f_n1.*t61;
t92 = f_n2.*t35;
t93 = f_n3.*t38;
t94 = f_n1.*t64.*2.0;
t95 = f_n1.*t35;
t96 = f_n3.*t63.*2.0;
t97 = f_n3.*t61;
t98 = f_n1.*t26.*2.0;
t99 = t48.*t51;
t100 = t54.*t58;
t101 = f_n1.*t38;
t102 = f_n2.*t63.*2.0;
t103 = f_n2.*t61;
t104 = t94+t95+t102+t103-t29.*t54-t32.*t51;
t105 = f_n1.*t63.*2.0;
t106 = t29.*t32.*2.0;
t107 = t48.*t58.*2.0;
t110 = t48.*t67;
t111 = t58.*t70;
t112 = t96+t97+t98+t101-t29.*t70-t32.*t67;
t113 = t75+t80+t108+t109-t51.*t70-t54.*t67;
t114 = f_n2.*t64.*2.0;
d2E_dq2 = reshape([t84+t87+t90+t91+t92+t93+t106+f_n2.*(f_p2.*(-1.0./2.0)+t19+t20+t21-f_n3.*(t9-q3.*q4.*2.0).*(1.0./2.0)).*2.0+f_n1.*(f_p1.*(-1.0./2.0)+t39+t40+t42-f_n2.*(t6-q2.*q3.*2.0).*(1.0./2.0)).*2.0,t81,t96+t97-t98+t99+t100-t101,t94+t95-t102-t103+t110+t111,t81,-t84+t87+t90+t91-t92-t93+t105+t107-f_n2.*t64.*2.0,t104,t112,t96+t97+t99+t100-f_n1.*t26.*2.0-f_n1.*t38,t104,-t84+t87-t91+t92-t93-t105+t106+t107+t114,t113,t94+t95+t110+t111-f_n2.*t61-f_n2.*t63.*2.0,t112,t113,t84+t90-t91-t92+t93-t105+t106+t107-t114],[4, 4]);
