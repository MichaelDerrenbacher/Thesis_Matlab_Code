clc
clear

widths = [5 10 50 100]; % mil
thickness = 2.8; % mil


K = 215.3;
a1 = -1.15;
a2 = -1.00;
a3 = 2;

current = 0:0.1:20;


for width_index = 1:length(widths)
    temp_rise(:, width_index) = K * current.^a3 * widths(width_index)^a1 * thickness^a2;
    plot(current, temp_rise(:, width_index), "linewidth", 1.2)
    hold on
end

ylim([0, 150])


xticks(1:1:20)
yticks(0:25:150)

legend("5 mil", "10 mil", "50 mil", "100 mil", "fontsize", 12, "location", "Southeast")
ylabel("Temperature Rise (deg C)", "fontsize", 14)
xlabel("Trace Current (A)", "fontsize", 14)
title("Trace Heating vs Current for 2 oz. Copper and \newline            Various External Trace Widths", "fontsize", 13)

grid on
