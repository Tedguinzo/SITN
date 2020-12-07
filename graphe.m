function graphe(ypred)
    global date
    plot(date,ypred)
    ylim([0,100]) % affichage en %
    xlabel("jours");
    ylabel("% pop");
    legend({"Sains","Infected","Recovered","Deaths"},'Location','best')
    yyaxis right
    ylabel("% pop");
    set(gca,'ycolor','k') 
end
