function value = d_cond(d,e,phi)
value = 1;
if mod(d*e,phi) == 1
    value = 0;
end

end
