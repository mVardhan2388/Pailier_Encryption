function [p,q,N] = p_q_selector(n)

prime = primes(n);
r_p = randi([2, length(prime)]);
r_q = randi([2, length(prime)]);
N = prime(r_q)*prime(r_p);
phi = (prime(r_q)-1)*(prime(r_p)-1);

p = prime(r_p);
q = prime(r_q);

end