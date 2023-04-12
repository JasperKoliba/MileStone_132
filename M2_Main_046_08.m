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

%loading the data
data = readmatrix("Data_nextGen_KEtesting_allresults.csv");
data(isnan(data))=0;


%% ____________________
%% CALCULATIONS

%creating the array that we need to calculate later
vo_array = ao_calc(data);

%determining the values for each parameter 
figure(1)
vo_out = zeros([10, 1]);
conc_out = zeros([10, 1]);
vmax = zeros([5, 1]);
km = zeros([5, 1]);

%for loop to run through each enzyme number 
for j = 1:5
    for i = 1:10
        idx = 10 * j + i;
        conc_out(i) = data(3, idx);
        vo_out(i) = vo_array(idx) + vo_array(idx + 10) / 2;
    end
    
    y_lin = vo_out;
    x_lin = vo_out ./ conc_out;

    %linearizing the data and determing the  
    coefs = polyfit(x_lin, y_lin, 1);
    km(j) = coefs(1);
    vmax(j) = coefs(2);
    

%% ____________________
%% FORMATTED TEXT/FIGURE DISPLAYS

%M3 - will display plots

%% ____________________
%% RESULTS

%M3 - will display data to professional standards

end
%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% We have not used source code obtained from any other unauthorized
% source, either modified or unmodified. Neither have we provided
% access to my code to another. The program we are submitting
% is our own original work.



