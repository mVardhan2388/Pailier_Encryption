clc;
clear;

[p,q,N] = p_q_selector(300);

lambda = lcm(p-1,q-1);

L = @(u,n) (u - 1) / n;
g = N + 1;
mu = modinv(L(powermod(g, lambda, N^2), N), N);


r = enc_key(N);
t = randi(N-1,1,1);
N_sq = N^2;

value_enc = mod( powermod((N+1),t,N_sq) * powermod(r,N,N_sq),N_sq);
i = powermod(value_enc,lambda,(N_sq));
x = L(i,N);

value_dec = mod((mu*x),N);