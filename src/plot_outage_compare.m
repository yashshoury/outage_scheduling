close all;
for i_plan = 1:N_plans
%     i_fig = 1+mod(i_plan-1,4);
    if(mod(i_plan,4)==1)
        figure;
    end
    i_column = 1 + mod(i_plan-1,4);
    i_row = 1;
    loc = sub2ind([4,3],i_column,i_row);
    subplot(3,4,loc);
    %% monthly cost fill plots
    set(gcf,'name','Compare operational costs (deduced lost load) -  no outages and outage plan 1','numbertitle','off')
    opacity=0.12;
    plotFill(monthlyCost(1,:,1),monthlyCost(1,:,2),'r',opacity);
    hold on;
    plotFill(monthlyCost(i_plan,:,1),monthlyCost(i_plan,:,2),'b',opacity);
    hold off;
%     legend({'No outages - std','No outages - mean','Outage plan 1 - std','Outage plan 1 - mean'});
    fontSize=17;
    set(gca,'fontsize',20);
    title('Monthly operational cost (deduced lost load) comparison','FontSize', 17);
    xlabel('Month', 'FontSize', fontSize)
    ylabel('Operational cost[$]', 'FontSize', fontSize)
    
    %% success rates
    i_row = 2;
    loc = sub2ind([4,3],i_column,i_row);
    subplot(3,4,loc);
    set(gcf,'name','Compare success rates - no outages and outage plan 1','numbertitle','off')
    opacity=0.12;
    plotFill(monthly_success_rate_values(1,:,1),monthly_success_rate_values(1,:,2),'r',opacity);
    hold on;
    plotFill(monthly_success_rate_values(i_plan,:,1),monthly_success_rate_values(i_plan,:,2),'b',opacity);
    hold off;
%     legend({'No outages - std','No outages - mean','Outage plan 1 - std','Outage plan 1 - mean'});
    fontSize=17;
    set(gca,'fontsize',20);
    title('Monthly success rate comparison','FontSize', 17);
    xlabel('Month', 'FontSize', fontSize)
    ylabel('Sucess rate', 'FontSize', fontSize)
    
    %% lost load
    i_row = 3;
    loc = sub2ind([4,3],i_column,i_row);
    subplot(3,4,loc);
    set(gcf,'name','Compare lost loads - no outages and outage plan 1','numbertitle','off')
    opacity=0.12;
    plotFill(monthly_lost_load(1,:,1),monthly_lost_load(1,:,2),'r',opacity);
    hold on;
    plotFill(monthly_lost_load(i_plan,:,1),monthly_lost_load(i_plan,:,2),'b',opacity);
    hold off;
%     legend({'No outages - std','No outages - mean','Outage plan 1 - std','Outage plan 1 - mean'});
    fontSize=17;
    set(gca,'fontsize',20);
    title('Monthly lost load comparison','FontSize', 17);
    xlabel('Month', 'FontSize', fontSize)
    ylabel('Lost load', 'FontSize', fontSize)
end

% figure;
% subplot(3,1,1);
% %% monthly cost fill plots
%     set(gcf,'name','Compare operational costs (deduced lost load) -  no outages and outage plan 1','numbertitle','off')
%     opacity=0.12;
%     plotFill(monthlyCost(1,:,1),monthlyCost(1,:,2),'r',opacity);
%     hold on;
%     plotFill(monthlyCost(5,:,1),monthlyCost(5,:,2),'b',opacity);
%     plotFill(monthlyCost(8,:,1),monthlyCost(8,:,2),'g',opacity);
%     hold off;
% %     legend({'No outages - std','No outages - mean','Outage plan 1 - std','Outage plan 1 - mean'});
%     fontSize=17;
%     set(gca,'fontsize',20);
%     title('Monthly operational cost (deduced lost load) comparison','FontSize', 17);
%     xlabel('Month', 'FontSize', fontSize)
%     ylabel('Operational cost[$]', 'FontSize', fontSize)
%     
%     %% success rates
% subplot(3,1,2);
% 
%     set(gcf,'name','Compare success rates - no outages and outage plan 1','numbertitle','off')
%     opacity=0.12;
%     plotFill(monthly_success_rate_values(1,:,1),monthly_success_rate_values(1,:,2),'r',opacity);
%     hold on;
%        plotFill(monthly_success_rate_values(5,:,1),monthly_success_rate_values(5,:,2),'b',opacity);
%     plotFill(monthly_success_rate_values(8,:,1),monthly_success_rate_values(8,:,2),'g',opacity);
%     hold off;
% %     legend({'No outages - std','No outages - mean','Outage plan 1 - std','Outage plan 1 - mean'});
%     fontSize=17;
%     set(gca,'fontsize',20);
%     title('Monthly success rate comparison','FontSize', 17);
%     xlabel('Month', 'FontSize', fontSize)
%     ylabel('Sucess rate', 'FontSize', fontSize)
%     
%     %% lost load
% subplot(3,1,3);
% 
%     set(gcf,'name','Compare lost loads - no outages and outage plan 1','numbertitle','off')
%     opacity=0.12;
%     plotFill(monthly_lost_load(1,:,1),monthly_lost_load(1,:,2),'r',opacity);
%     hold on;
%        plotFill(monthly_lost_load(5,:,1),monthly_lost_load(5,:,2),'b',opacity);
%     plotFill(monthly_lost_load(8,:,1),monthly_lost_load(8,:,2),'g',opacity);    hold off;
% %     legend({'No outages - std','No outages - mean','Outage plan 1 - std','Outage plan 1 - mean'});
%     fontSize=17;
%     set(gca,'fontsize',20);
%     title('Monthly lost load comparison','FontSize', 17);
%     xlabel('Month', 'FontSize', fontSize)
%     ylabel('Lost load', 'FontSize', fontSize)