%%
clear all;
close all;
clc;

syms s ro A1 A2 R1 R2 g H1_s H2_s  %here; Write variables

%For real values
ro = 1000;
A1 = 3;
A2 = 2;
R1 = 5;
R2 = 4;
g = 9.81;

H2_s = H1_s * ( (s + g/(R1*A1)) / (g/(R1*A1)) ); %here: We defined H1_s uing Equation 1'
Qmi_s = (H2_s*(s + g/(R1*A2) + g/(R2*A2)) + H1_s*(-g/(R1*A2))) / (1/(ro*A2))   %here: Lets find Qmi_s using following code line


%Now, lets determine TF of H1(s)/Qmi(s) following code
H1_Qmi_tf = H1_s/Qmi_s;   %This code will find TF of H1(s)/Qmi(s)
pretty(collect(H1_Qmi_tf,s))    %This code will rewrite 




syms s ro A1 A2 R1 R2 g H1_s H2_s  %here: we write variables again

%For real values
ro = 1000;
A1 = 3;
A2 = 2;
R1 = 5;
R2 = 4;
g = 9.81;


H1_s = H2_s / ((s + g/(R1*A1)) / (g/(R1*A1)));  %here: we defined H1_s uing Equation 1'  
Qmi_s = (H2_s*(s + g/(R1*A2) + g/(R2*A2)) + H1_s*(-g/(R1*A2))) / (1/(ro*A2)) %here: Lets find Qmi_s using following code line


%Now, lets determine TF of H2(s)/Qmi(s) following codes
H2_Qmi_tf = H2_s/Qmi_s;
pretty(collect(H2_Qmi_tf,s))





