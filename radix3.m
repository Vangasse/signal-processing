function [Xr3] = radix3(x)
    N = length(x);
    W_n = exp(-i*2*pi/N);
    if N == 1
        Xr3 = x;
    else
        x_a = x(1:3:N);
        x_b = x(2:3:N);
        x_c = x(3:3:N);
        X_a = radix3(x_a);
        X_b = radix3(x_b);
        X_c = radix3(x_c);
        Xr3 = zeros(1, N);
        for k = 1:N/3
            Xr3(k) = X_a(k) + (W_n^k)*X_b(k) + (W_n^(2*k))*X_c(k);
            Xr3(k+N/3) = X_a(k) + (W_n^(k+N/3))*X_b(k) + (W_n^(2*(k+N/3)))*X_c(k);
            Xr3(k+2*N/3) = X_a(k) + (W_n^(k+2*N/3))*X_b(k) + (W_n^(2*(k+2*N/3)))*X_c(k);
        end
    end
end