addHermesPaths
%% set case params
caseName='case24';%case5,case9,case14,case24
params=am_getProblemParamsForCase(caseName);
params.dynamicSamplesPerDay=10;
params.numOfDaysPerMonth=2;

%% set maintenance plan
maintenancePlan=zeros(params.nl,12);

%% simulate yearly trajectory
yearlyStats=simulateYear_noparfor(maintenancePlan,params);

%% save output
timeStr=datestr(datetime('now'));
save(['./saved_runs/Hermes/yearlyStats_case24_',timeStr,'.mat'],'yearlyStats')

%% plot yearly statistics
% plotYearlyStats(yearlyStats);