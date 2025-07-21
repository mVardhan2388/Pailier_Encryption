function inv = modinv(a, m)
    [g, x, ~] = gcd(a, m);
    if g ~= 1
        error('Inverse does not exist');
    else
        inv = mod(x, m);
    end
end

