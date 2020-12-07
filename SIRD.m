function yp = SIRD(t,y)
    % S : susceptible : individus sains
    % I : active infected : infectés actifs
    % R : recovered : individus guéris
    % D : death : population morte
    % beta : taux de transmission
    % gamma : taux de guérison
    % mu : taux de mortalité (journalier)
    % gamma+mu : removing rate
    % R0 = beta/(gamma+mu)
    S=  y(1);
    I = y(2);
    R = y(3);
    D = y(4);
    global beta gamma mu
    yp = zeros(size(y));
    yp = [ - beta*I*S ; beta*I*S - (gamma+mu)*I ; gamma*I ; mu*I];
end