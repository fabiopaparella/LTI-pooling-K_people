clc
clear all
city='SF';
load(strcat(city,'/Graphs.mat'));
Binc = incidence(G_road); 
[N_nodes,N_edges]=size(Binc);

%% Layer 3 join together
sol3_LC = [];
for jj1= 1 : N_nodes
    jj1
    for ii1 = 1: N_nodes
    load(strcat(city,'/L3/MatL3_',num2str(jj1),'_',num2str(ii1),'.mat'),'sol3_LC_temp')%, '-v7.3')
    sol3_LC = [sol3_LC; sol3_LC_temp];
    end

end
sol3_LC = sortrows(sol3_LC);
save(strcat(city,'/MatL3.mat'),'sol3_LC', '-v7.3')