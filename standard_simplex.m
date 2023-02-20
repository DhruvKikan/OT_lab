clc;
clear;
a=[-1 1;1 1];
b=[1;2];
c=[1 2];



y=zeros(1,size(a,1));
C=[c y];

objFunc=array2table(C);
objFunc.Properties.VariableNames(1:size(C,2))={'x1','x2','s1','s2'}

s=eye(size(a,1));
ineq=[0 1]; % 0 for 
y=find(ineq==1);
s(y,:)=-s(y,:);

combine=[a s b];
combinetab=array2table(combine);
combinetab.Properties.VariableNames(1:size(combinetab,2))={'x1','x2','s1','s2','b'}