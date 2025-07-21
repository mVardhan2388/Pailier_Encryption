function e = enc_key(N)
e = randi(N-1,1,1);

if (~iscoprime(e,N))
    e = enc_key(N);
end
end