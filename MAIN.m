function[] = M2_Main_046_08(vmax, km, V_0)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% Main file for M2
%
% Function Call
% M2_Main_046_08()
%
% Input Arguments
% vmax = the maximum velocity (μM/min) of the reaction
% km: K_m value of enzyme
% v0
%
% Output Arguments
% none
%
% Assignment Information
%   Assignment:     M02
%   Team member:    Bernadette Goeppner, bgoeppn@purdue.edu 
%   Team ID:        046-08
%   Academic Integrity:
%     [] We worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers we worked with: Name, login@purdue [repeat for each]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION

% Your main function should load and segment the data

KEtesting = readmatrix("Data_nextGen_KEtesting_allresults.csv");
time = KEtesting(5:end, 1);         % the time (s) given for each test
initial_s = KEtesting(3, 2:end);    % the initial [s] given 
concentration = KEtesting(5:end, :);
enzyme_1 = KEtesting(5:end, 2:11); 
enzyme_2 = KEtesting(5:end, 12:21); 
enzyme_3 = KEtesting(5:end, 22:31);
enzyme_4 = KEtesting(5:end, 32:41);
enzyme_5 = KEtesting(5:end, 42:51);
enzyme_6 = KEtesting(5:end, 52:61);
enzyme_7 = KEtesting(5:end, 62:71);
enzyme_8 = KEtesting(5:end, 72:81);
enzyme_9 = KEtesting(5:end, 82:91);
enzyme_10 = KEtesting(5:end, 92:101);

%% ____________________
%% CALCULATIONS
%enzyme 1 data
V_0( enzyme_1);
M2_Vmax_046_08(V_0, enzyme_1);
find_km(v_max, V_0, enzyme1);

%enzyme 2 data
V_0( enzyme_2);
M2_Vmax_046_08(V_0, enzyme_2);
find_km(v_max, V_0, enzyme_2);

%enzyme 3 data
V_0( enzyme_3);
M2_Vmax_046_08(V_0, enzyme_3);
find_km(v_max, V_0, enzyme_3);

%enzyme 4 data
V_0( enzyme_4);
M2_Vmax_046_08(V_0, enzyme_4);
find_km(v_max, V_0, enzyme_4);

%enzyme 5 data
V_0( enzyme_5);
M2_Vmax_046_08(V_0, enzyme_5);
find_km(v_max, V_0, enzyme_5);

%enzyme 6 data
V_0( enzyme_6);
M2_Vmax_046_08(V_0, enzyme_6);
find_km(v_max, V_0, enzyme_6);

%enzyme 7 data
V_0( enzyme_7);
M2_Vmax_046_08(V_0, enzyme_7);
find_km(v_max, V_0, enzyme_7);

%enzyme 8 data
V_0( enzyme_8);
M2_Vmax_046_08(V_0, enzyme_8);
find_km(v_max, V_0, enzyme_8);

%enzyme 9 data
V_0( enzyme_9);
M2_Vmax_046_08(V_0, enzyme_9);
find_km(v_max, V_0, enzyme_9);

%enzyme 10 data
V_0( enzyme_10);
M2_Vmax_046_08(V_0, enzyme_10);
find_km(v_max, V_0, enzyme_10);

%% ____________________
%% FORMATTED TEXT/FIGURE DISPLAYS


%% ____________________
%% RESULTS

end
