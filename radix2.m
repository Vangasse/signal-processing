function [Xr2] = radix2(x)
    N = length(x);
    W_n = exp(-i*2*pi/N);
    if N == 1
        Xr2 = x;
    else
        x_p = x(1:2:N);
        x_i = x(2:2:N);
        X_p = radix2(x_p);
        X_i = radix2(x_i);
        Xr2 = zeros(1, N);
        for k = 1:N/2
            Xr2(k) = X_p(k) + (W_n^k)*X_i(k);
            Xr2(k+N/2) = X_p(k) - (W_n^k)*X_i(k);
        end
    end
end