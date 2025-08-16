function [xm,ym] = dynamicProg(xn,yn,M)

% ensure inputs are column vectors
xn = xn(:);
yn = yn(:); 

N    = length(xn); % number of samples
Dmat = nan(N,M);   % dynamic prog. matrix
Bmat = nan(N,M);   % backtrace matrix

% initialize dynamic prog. matrix
Dmat(1,1)   = 0;
Dmat(2:N,1) = +Inf;

for m = 2: M
    for n = m:N

        if n >=m && m > 1
            % grid search
            igrid = (m-1):1:(n-1);
            feval = Inf(size(igrid));
            for i = 1:length(igrid)
                % Bellman recursion
                feval(i) = Dmat(igrid(i),m-1) + errorFunction(xn,yn,igrid(i),n);
            end
            % minimum
            [Dmat(n,m), idx] = min(feval);
            Bmat(n,m) = igrid(idx);
        elseif n==1 && m==1
            Dmat(n,m) = 0;
        else
            Dmat(n,m) = +Inf;
        end
    end
end

% backtrace
u  = nan(M-2,1);
iN = N;
iM = M;
for m=1:M-2
    u(m) = Bmat(iN,iM);
    iN = u(m);
    iM = iM-1;
end
u = sort(u);
u(isnan(u)) = [];

% output form
xm = [xn(1);xn(u);xn(end)];
ym = [yn(1);yn(u);yn(end)];
end


function h = errorFunction(xn, yn, i, n)
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
% end points
x1 = xn(i); x2 = xn(n);
y1 = yn(i); y2 = yn(n);

% straight-line coefficients of end point fit
b = (y2-y1)/(x2-x1); % slope
a = y1 - b*x1; % intercept

ypred = a + b*xn(i:n); % fitted line
h = sum(abs(ypred - yn(i:n))); % sum of absolute errors
end

%--------------------------------------------------------------------------
% Piecewise linear modeling using dynamic programming
% writer: S. Sunil (sunil11@uwindsor.ca, soorajpro@gmail.com)
% last commitL: 07 March 2024
%
% Reference:
% [1] Perez, Juan-Carlos, and Enrique Vidal. "Optimum polygonal
% approximation of digitized curves." Pattern recognition letters (1994).
%--------------------------------------------------------------------------
