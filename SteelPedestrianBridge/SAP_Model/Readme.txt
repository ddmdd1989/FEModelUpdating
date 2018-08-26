Contents under \SAP_Model

"SteelPedestrianBridge.sdb”  SAP2000 model file of the steel pedestrian bridge.


“DOF.txt”   text file with DOF information from the SAP2000 model.  
     Column 1 lists the node label of the FE model built in SAP 2000; 
     Column 2~7 lists the location of the DOFs for each node in the stiffness and mass matrices, i.e. the 2nd row in 'DOF.txt' represents the locations of six DOFs for node '2' in the stiffness and mass matrices. 


“selMeasDOFs.m”    MATLAB code that selects the measured DOFs from all the DOFs. The code loads DOFs.txt, and generates measDOFs.mat.


“measDOFs.mat”    MATLAB data file containing the measured DOFs in the SAP2000 model.

