% This function reads the DOFInfo output from SAP2000 and select the
% measured DOFS
clc;clear;
load DOFInfo

%% Pick the node in FE model where sensor is instrumented
% node whose longitudinal vibration is monitored
logtdNode = [1:9 15:18 10 19 25:27 30:32 21 33 23 34 66 13 29 14 35];  
% node whose vertical vibration is monitored
vertNode = [5 11 24 10 28 29 36 33 9 12 14 37 27 20 35 66];         

for i = 1 : length(logtdNode)
    MDOFs(i) = DOF(logtdNode(i),1);
end
for i = 1 : length(vertNode)
    MDOFs(i + length(logtdNode)) = DOF(vertNode(i),3);
end

% Remove A1, E1, I1, the three fixed nodes at the column base.
measDOFs = MDOFs( MDOFs ~= 0 );

save measDOFs.mat measDOFs 
