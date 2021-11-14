clc
clear

widths = [27.69]; % mil
thickness = 1.4; % mil

current = 0:0.1:10;

K = 200;
a1 = -1.10;
a2 = -1.52;
a3 = 1.9;

temp_rise2 = K * current.^a3 * widths^a1 * thickness^a2;
plot(current, temp_rise2, "linewidth", 1.2, "color", [0.0 0 1])
hold on


widths = [13.85]; % mil
thickness = 2.8; % mil

current = 0:0.1:10;

K = 300;
a1 = -1.15;
a2 = -1.52;
a3 = 2;

temp_rise2 = K * current.^a3 * widths^a1 * thickness^a2;
plot(current, temp_rise2, "linewidth", 1.2, "color", [0.0 1 1])

widths = [55.37]; % mil
thickness = 0.7; % mil

K = 120;
a1 = -1.10;
a2 = -1.52;
a3 = 2;

temp_rise2 = K * current.^a3 * widths^a1 * thickness^a2;
plot(current, temp_rise2, "linewidth", 1.2, "color", [1 0 1])

xticks(1:1:20)
ylim([0 100])
yticks(0:25:100)

%legend(" (1 oz. Copper)", "Internal  (1 oz. Copper)", "Internal  (0.5 oz. Copper)", "fontsize", 12, "location", "Southeast")
ylabel("Temperature Rise (deg C)", "fontsize", 14)
xlabel("Via Current (A)", "fontsize", 14)
title("Estimated Via Heating vs Current", "fontsize", 13)

grid on

