clc
clear

set(0,'DefaultAxesColorOrder',viridis(5));

[Freq1, R1, X1] = importdata("trial_1.csv");
[Freq2, R2, X2] = importdata("trial_2.csv");
[Freq3, R3, X3] = importdata("decade_caps_100_10_1.csv");
[Freq4, R4, X4] = importdata("trial_3.csv");

Freq1 = Freq1/1E6;
Freq2 = Freq2/1E6;
Freq3 = Freq3/1E6;
Freq4 = Freq4/1E6;

Z1 = R1 + 1j.*X1;
Z2 = R2 + 1j.*X2;
Z3 = R3 + 1j.*X3;
Z4 = R4 + 1j.*X4;

mag1 = abs(Z1);
phase1 = angle(Z1)*180/pi;

mag2 = abs(Z2);
phase2 = angle(Z2)*180/pi;

mag3 = abs(Z3);
phase3 = angle(Z3)*180/pi;

mag4 = abs(Z4);
phase4 = angle(Z4)*180/pi;

%zo = 50;

%S11 = (Z - zo)/(Z + zo);

%semilogx(Freq,20*log10(abs(S11)))

%mag1 = 20*log10(mag1);
%mag2 = 20*log10(mag2);
%mag3 = 20*log10(mag3);



subplot(2,1,1)
loglog(Freq1, mag1, "linewidth", 1.2)
hold on

loglog(Freq2, mag2, "linewidth", 1.2)
loglog(Freq3, mag3, "linewidth", 1.2)
loglog(Freq4, mag4, "linewidth", 1.2)

%semilogx(Freq1, mag1, "linewidth", 1.2)
hold on
%semilogx(Freq2, mag2, "linewidth", 1.2)
%semilogx(Freq3, mag3, "linewidth", 1.2)
%semilogx(Freq4, mag4, "linewidth", 1.2)

%legend("No Capacitors", "Decade Caps (0uF, 0.1uF, 0.01uF)", "Decade Caps (10uF, 1uF, 0.1uF)", "All 2.2uF", "fontsize", 12, "Location", "Northwest")

%legend("No Caps", "One Cap", "Two Caps", "Three Caps", "fontsize", 16, "Location", "Southeast")




xlabel("Frequency (MHz)", "fontsize", 14)
ylabel("Impedance (Ohms)", "fontsize", 14)

yticks([0.1, 1, 10, 100, 1000, 10000, 100000, 1000000])
curtick = get(gca, 'YTick');
set(gca, 'YTickLabel', cellstr(num2str(curtick(:))));

curtick = get(gca, 'XTick');
set(gca, 'XTickLabel', cellstr(num2str(curtick(:))));

subplot(2,1,2)
semilogx(Freq1, phase1, "linewidth", 1.2)
hold on
semilogx(Freq2, phase2, "linewidth", 1.2)
semilogx(Freq3, phase3, "linewidth", 1.2)
semilogx(Freq4, phase4, "linewidth", 1.2)
legend("No Capacitors", "Decade Caps (1uF, 0.1uF, 0.01uF)", "Decade Caps (10uF, 1uF, 0.1uF)", "All 2.2uF", "fontsize", 12, "Location", "Southwest")

yticks([-90 -45 0 45 90])
xlabel("Frequency (MHz)", "fontsize", 14)
ylabel("Phase (Deg)", "fontsize", 14)

curtick = get(gca, 'YTick');
set(gca, 'YTickLabel', cellstr(num2str(curtick(:))));

curtick = get(gca, 'XTick');
set(gca, 'XTickLabel', cellstr(num2str(curtick(:))));



%%



semilogx(Freq1, mag1, "linewidth", 1.2)
hold on

semilogx(Freq2, mag2, "linewidth", 1.2)
semilogx(Freq3, mag3, "linewidth", 1.2)
semilogx(Freq4, mag4, "linewidth", 1.2)

%semilogx(Freq1, mag1, "linewidth", 1.2)
hold on
%semilogx(Freq2, mag2, "linewidth", 1.2)
%semilogx(Freq3, mag3, "linewidth", 1.2)
%semilogx(Freq4, mag4, "linewidth", 1.2)

%legend("No Capacitors", "Decade Caps (0uF, 0.1uF, 0.01uF)", "Decade Caps (10uF, 1uF, 0.1uF)", "All 2.2uF", "fontsize", 12, "Location", "Northwest")

%legend("No Caps", "One Cap", "Two Caps", "Three Caps", "fontsize", 16, "Location", "Southeast")




xlabel("Frequency (MHz)", "fontsize", 14)
ylabel("Impedance (Ohms)", "fontsize", 14)


legend("No Capacitors", "Decade Caps (1uF, 0.1uF, 0.01uF)", "Decade Caps (10uF, 1uF, 0.1uF)", "All 2.2uF", "fontsize", 12, "Location", "Northwest")
ylim([0 100])


curtick = get(gca, 'YTick');
set(gca, 'YTickLabel', cellstr(num2str(curtick(:))));

curtick = get(gca, 'XTick');
set(gca, 'XTickLabel', cellstr(num2str(curtick(:))));