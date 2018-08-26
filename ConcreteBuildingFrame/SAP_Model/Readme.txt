Contents under \SAP_Model

“ConcreteBuildingFrame.sdb”  SAP2000 model file of the concrete building frame.


“DOFInfo.mat”   MATLAB data file with DOF information from the SAP2000 model.  
     'DOFlist' variable includes the node label of the FE model built in SAP 2000; 
     'DOF' variable lists the location of the DOFs for each node in the stiffness and mass matrices, i.e. the 2nd row in 'DOF' represents the locations of six DOFs for node 'A2' in the stiffness and mass matrices. 


“selMeasDOFs.m”    MATLAB code that selects the measured DOFs from all the DOFs. The code loads DOFInfo.mat, and generates measDOFs.mat.


“measDOFs.mat”    MATLAB data file containing the measured DOFs in the SAP2000 model.

