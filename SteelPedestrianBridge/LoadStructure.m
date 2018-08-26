
load SteelPedestrianBridge
   
%% Nominal structure
N = size(E_1,1);
K_j(:,:,1) = E_1;
K_j(:,:,2) = E_2;
K_j(:,:,3) = E_3;
K_j(:,:,4) = E_4;
K_j(:,:,5) = E_5;
K_j(:,:,6) = E_6;
K_j(:,:,7) = E_t2;
K_j(:,:,8) = E_t3;
K_j(:,:,9) = E_t4;
K_j(:,:,10) = E_t5;
K_j(:,:,11) = E_t6;
K_j(:,:,12) = k_y1 ;
K_j(:,:,13) = k_z1 ;
K_j(:,:,14) = k_y2 ;
K_j(:,:,15) = k_z2 ;

clear E_* k_*;

n_alpha = size(K_j,3);


K0 = sum(K_j,3);


% Build the actual stiffness matrix starting from K0; then add the
% influence of each parameter change
K_act = K0;
for i = 1:n_alpha
    K_act = K_act + K_j(:,:,i) * alpha_act(i);
end


