function ypred = paramfun(param,y0,t)
    beta = param(1);
    gamma = param(2);
    mu = param(3);
    SIRD = @(t,y) [ - beta*y(1)*y(2) ; beta*y(1)*y(2) - (gamma+mu)*y(2) ; gamma*y(2) ; mu*y(2)];
    [~,ypred] = ode45(SIRD, t, y0);
end