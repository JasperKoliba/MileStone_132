function [sse] = M3_MM_PGOX50_046_08(concentration_array, given_data, vo_array)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% graphs data and V0 of each enzyme
%
% Function Call
% graphing(data,vo_array)
%
% Input Arguments
% concentration_array: array of concentration values
% given_data: input data
% vo_array: calculated array of vo values
% v_max: found v_max value
% K_m: found k_m value
%
% Output Arguments
% sse: sse data
%
% Assignment Information
%   Assignment:     M3
%   Team member:    Celia Eyrich, ceyrich@purdue.edu [repeat for each person]
%   Team ID:        046-08
%   Academic Integrity:
%     [] We worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers we worked with: Name, login@purdue [repeat for each]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION

given_vo_array = [0.025,0.049,0.099,0.176,0.329,0.563,0.874,1.192,1.361,1.603];

time = given_data(9:end,1); %time in seconds

%% ____________________
%% CALCULATIONS

sse = sum((found_vo_array - given_vo_array).^2);

%% ____________________
%% FORMATTED TEXT/FIGURE DISPLAYS
figure(1)
sgtitle("Given Enzyme Data and Found V0")

subplot(2,5,1)
plot(time,given_data(9:end,2),"-k")
hold on
grid on
plot(time,vo_array(1) * time,"--r")
title("Concentration 1")
xlabel("time(sec)")
ylabel("[P] (uM)")
ylim([0 5])
hold off

subplot(2,5,2)
plot(time,given_data(9:end,3),"-k")
hold on
grid on
plot(time,vo_array(2) * time,"--r")
title("Concentration 2")
xlabel("time(sec)")
ylabel("[P] (uM)")
ylim([0 10])
hold off

subplot(2,5,3)
plot(time,given_data(9:end,4),"-k")
hold on
grid on
plot(time,vo_array(3) * time,"--r")
title("Concentration 3")
xlabel("time(sec)")
ylabel("[P] (uM)")
ylim([0 25])
hold off

subplot(2,5,4)
plot(time,given_data(9:end,5),"-k")
hold on
grid on
plot(time,vo_array(4) * time,"--r")
title("Concentration 4")
xlabel("time(sec)")
ylabel("[P] (uM)")
ylim([0 50])
hold off

subplot(2,5,5)
plot(time,given_data(9:end,6),"-k")
hold on
grid on
plot(time,vo_array(5) * time,"--r")
title("Concentration 5")
xlabel("time(sec)")
ylabel("[P] (uM)")
ylim([0 100])
hold off

subplot(2,5,6)
plot(time,given_data(9:end,7),"-k")
hold on
grid on
plot(time,vo_array(6) * time,"--r")
title("Concentration 6")
xlabel("time(sec)")
ylabel("[P] (uM)")
ylim([0 250])
hold off

subplot(2,5,7)
plot(time,given_data(9:end,8),"-k")
hold on
grid on
plot(time,vo_array(7) * time,"--r")
title("Concentration 7")
xlabel("time(sec)")
ylabel("[P] (uM)")
ylim([0 500])
hold off

subplot(2,5,8)
plot(time,given_data(9:end,9),"-k")
hold on
grid on
plot(time,vo_array(8) * time,"--r")
title("Concentration 8")
xlabel("time(sec)")
ylabel("[P] (uM)")
ylim([0 1000])
hold off

subplot(2,5,9)
plot(time,given_data(9:end,10),"-k")
hold on
grid on
plot(time,vo_array(9) * time,"--r")
title("Concentration 9")
xlabel("time(sec)")
ylabel("[P] (uM)")
ylim([0 1250])
hold off

subplot(2,5,10)
plot(time,given_data(9:end,11),"-k")
hold on
grid on
plot(time,vo_array(10) * time,"--r")
title("Concentration 10")
xlabel("time(sec)")
ylabel("[P] (uM)")
ylim([0 1500])
hold off

figure(2)

plot(concentration_array,vo_array,"-k")
grid on
hold on
plot(concentration_array,given_vo_array,"or")
title("Found Michaelis-Menten Plot")
xlabel("Concentration (uM)")
ylabel("initial velocities (uM/sec)")

%% ____________________
%% RESULTS


%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% We have not used source code obtained from any other unauthorized
% source, either modified or unmodified. Neither have we provided
% access to my code to another. The program we are submitting
% is our own original work.



