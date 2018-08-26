% This function reads the DOFInfo output from SAP2000 and select the
% measured DOFS
clc;clear;

dof = load('DOF.txt');

%% Pick the node in FE model where sensor is intrumented
% Node where biaxle accelerometers are instrumented
biaxlNode = [22 8 26 12 30 20 33] ;
% Node where uniaxle accelerometers are instrumented
unaxlNode = [36 7 40 11 44 19 35] ;

numdir = 2;
for i = 1 : length(biaxlNode)
    for j = 1 : numdir
        measDOFs_biaxle( (i - 1) * numdir + j, 1) = dof(biaxlNode(i), 2 + j);
    end
end

for i = 1 : length(unaxlNode)
    measDOFsOrig_unaxle(j,1) = dof(unaxlNode(i),4);
end
measDOFs =[measDOFs_biaxle; measDOFsOrig_unaxle];


measDOFs = measDOFs(measDOFs ~= 0) ;

save measDOFs measDOFs
