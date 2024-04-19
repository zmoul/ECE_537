clc, clear

% Read data
data = readmatrix("ev_adoption_rate_electricity_rate.xlsx");
transpose(data);

figure(1)
histogram2(data(:,1),data(:,2),20)
xlabel('EV Adoption Rate [%]')
ylabel('Electricity Rate [$]')
zlabel('Count')
title('Electric Vehicle Adoption Percent With Respect to Electricity Rate Histogram')

figure(2)
histogram(data(:,2),20)
xlabel('Electricity Rate [$]')
ylabel('Count')
title('Electric Vehicle Adoption Top Performers Histogram Based on Electricity Rate')


data = readmatrix("ev_adoption_rate_gas_electric_ratio.xlsx");
transpose(data);

figure(4)
histogram(data(:,2),20)
xlabel('Electricity Rate [$]')
ylabel('Count')
title('Electric Vehicle Adoption Top Performers Histogram Based on Gas-Electric Ratio')

data = readmatrix("ev_adoption_rate_electricity_rate_california_2022.xlsx");
transpose(data);

figure(5)
boxplot(data(:,1),data(:,2))
xlabel('Electricity Rate [$]')
ylabel('EV Adoption Rate [%]')
title('Boxplot Representation of EV Adoption Rate by Utility Rate for California in 2022')