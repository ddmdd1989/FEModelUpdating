
Contents under \SteelPedestrianBridge:

"SteelPedestrianBridge.m" 
* This is the main function to perform FE model updating of steel pedestrian bridge from multiple start points.
* Before run the code, please add "_Shared" folder at the upper level into MATLAB path. 
* The code first loads the data for updating the frame model by calling "LoadStructure.m". Then the code calls the functions in the "_Shared" folder to perform FE model updating.

"LoadStructure.m"
* This is a function called by "SteelPedestrianBridge.m" to load the influence matrices of updating variables, mass matrix from "SteelPedestrianBridge.mat". The function then builds the nominal as well as actual stiffness matrices.

"SteelPedestrianBridge.mat" 
* This is a file including the influence matrices of updating variables, mass matrix, and measured DOFs.

"\SAP_Model"
* This is a folder including the sap2000 model of the steel pedestrian bridge

"\Results" 
* This is a folder including the model updating results of the concrete building frame and the code to plot the figures.
* Please run "PostProcess.m" to plot the result figures.

"\Non_CVX_iLL"
* This is a folder including the local optimal result of the MAC value formulation and the code to plot the nonconvex illustration figure.
* Please run "NonCVX_Conventional_MAC.m" to plot the nonconvex illustration figure.