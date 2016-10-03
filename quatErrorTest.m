close all; clear all;
q_ref = [0;0;0;1];
q_real = [ 0.491;0.403;0.491;0.597];
q_ref_star = [-q_ref(1:3);q_ref(4)];

del_q = fn_CrossTensor(q_real,0)*q_ref_star;
a_g = 2*del_q(1:3)/del_q(4);


rho = fn_CrossTensor([a_g;2],0)*q_ref;
q_update = rho/norm(rho);

figure;
quiver3(0,0,0,a_g(1),a_g(2),a_g(3),0.01);
xlabel('x');
ylabel('y');
zlabel('z');

i_ref = [0;0;0;1];
i_real = [0.131;0.081;0.384;0.910];
i_ref_star = [-i_ref(1:3);i_ref(4)];

del_ita = fn_CrossTensor(i_ref_star,0)*i_real;
b_g = 2*del_ita(1:3)/del_ita(4);

rho_ita = fn_CrossTensor(i_ref,0)*[b_g;2];
ita_update = rho_ita/norm(rho_ita);

mu = fn_CrossTensor(i_real,0)*q_real;

mu_ref = fn_CrossTensor(i_ref,0)*q_ref;
del_mu = fn_CrossTensor([-mu_ref(1:3);mu_ref(4)],0)*mu;

err_mu = fn_CrossTensor(i_ref_star,0)*fn_CrossTensor(mu,0)*q_ref_star;

c_g = 2*(2*(a_g+b_g) + cross(a_g,b_g))/4;
rho_mu = fn_CrossTensor(mu_ref,0)*[c_g;2];
mu_update = rho_mu/norm(rho_mu);
