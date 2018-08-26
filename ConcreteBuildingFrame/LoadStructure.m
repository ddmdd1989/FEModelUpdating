
load ConcreteBuildingFrame

%% Nominal structure
N = size(E_1,1);
K_j(:,:,1) = E_1 ;
K_j(:,:,2) = E_2 ;
K_j(:,:,3) = E_3;
K_j(:,:,4) = E_4;
K_j(:,:,5) = E_5;
K_j(:,:,6) = E_6;
K_j(:,:,7) = E_7;
K_j(:,:,8) = E_8;
K_j(:,:,9) = E_9;
K_j(:,:,10) = E_10;
K_j(:,:,11) = E_11;
K_j(:,:,12) = E_12;

clear E_*;

n_alpha = size(K_j, 3);

% Rebar stiffness is not updated, but contributes to K0;
% Four links with very high stiffness are allocated to guarantee all the
% measured DOFs are presented in the stiffness and mass matrices. 

K0 = sum(K_j,3) + Influence_Link + Influence_Rebar;

% Build the actual stiffness matrix starting from K0; then add the
% influence of each parameter change
K_act = K0;
for i = 1:n_alpha
    K_act = K_act + K_j(:,:,i) * alpha_act(i);
end


