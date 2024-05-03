function [xm,ym] = dynamicProg(xn,yn,M)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 2D data reduction using dynamic programming (DP)
% writer: S. Sunil (sunil11@uwindsor.ca) 
% last commit on 07 March 2024 by S. Sunil 
% Implemented based on: 
% [1] Perez, Juan-Carlos, and Enrique Vidal. "Optimum polygonal
% approximation of digitized curves." Pattern recognition letters (1994).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

N   = length(xn); % length of sample
D   = nan(N-1,M-1);
IDX = nan(N-1,M-1);

% initialize DP matrix 
D(1,1)=0;
D(2:N,1) = +Inf;

for m = 2: M
    for n = m:N
        % Bellman recursion  
        if n >=m && m > 1
            igrid = (m-1):1:(n-1);
            feval = Inf(size(igrid));
            % grid search 
            for i = 1:length(igrid)
                feval(i) = D(igrid(i),m-1) + errorFunction(xn,yn,igrid(i),n);
            end
            % minimum
            [D(n,m), idx] = min(feval);
            IDX(n,m) = igrid(idx);
        elseif n==1 && m==1
            D(n,m) = 0;
        else
            D(n,m) = +Inf;
        end
    end
end

% BACKTRACE
u  = nan(M-2,1);
iN = N;
iM = M;
for m=1:M-2
    u(m) = IDX(iN,iM);
    iN = u(m);
    iM = iM-1;
end
u = sort(u);
u(isnan(u)) = [];

% output form 
xm = [xn(1);xn(u);xn(end)];
ym = [yn(1);yn(u);yn(end)];
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function h = errorFunction(xn, yn, i, n)
% end points 
x1 = xn(i); x2 = xn(n);
y1 = yn(i); y2 = yn(n);
% straight-line coefficients of end point fit
b = (y2-y1)/(x2-x1); % slope 
a = y1 - b*x1; % intercept
ypred = a + b*xn(i:n); % fitted line 
h = sum(abs(ypred - yn(i:n))); % sum of absolute errors
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
