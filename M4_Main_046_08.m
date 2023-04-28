function M3_Main_046_08()
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% Main file for M2. Calls subfunctions.
%
% Function Call
% M3_Main_046_08()
%
% Input Arguments
% none
%
% Output Arguments
% none
%
% Assignment Information
%   Assignment:     M02
%   Team member:    Bernadette Goeppner, bgoeppn@purdue.edu, Celia Enyrich, 
%                   ceyrich@purdue.edu, Daniel McGurik, dmcguirk@purdue.edu
%                   Jasper Koliba, jkoliba@purdue.edu
%   Team ID:        046-08
%   Academic Integrity:
%       We all worked together
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION

%loading the data and cleaning null values
data = readmatrix("Data_nextGen_KEtesting_allresults.csv");
data(isnan(data))=0;


%% ____________________
%% CALCULATIONS

% calling the vo function to get hte vo values for each test
vo_array = M3_Algorithm_046_08(data);
vo_array = vo_array(2:length(vo_array));

%initializing arrays for later calculaions
% M3 Method
%vo_out = zeros([10, 1]);
%conc_out = zeros([10, 1]);

% get concentration and Vo
for j = 0:4

    % vecotrized for loop improvement
    conc_out = data(3, 2:11);
    vo_out = ((vo_array(20*j + 1: 20*j + 10) + vo_array(20*j + 11: 20*j + 20)) / 2);
    
    % M3 Method
    %for i = 1:10
        %conc_out(i) = data(3, i + 1);
        %vo_out(i) = (vo_array(20*j + i) + vo_array(20*j + i + 10)) /2;
    %end

    % linearizing data with gives eq
    y_lin = vo_out;
    x_lin = vo_out ./ conc_out;

    % determining km and vmax from linearized model
    coefs = polyfit(x_lin, y_lin, 1);
    km = -1 * coefs(1);
    vmax = coefs(2); 


    %% M3 Code
    %target_vo = [0.025, 0.049, 0.099, 0.176, 0.329, 0.563, 0.874, 1.192, 1.361, 1.603];
    %err_vo = abs(((vo_array - target_vo) ./ target_vo)) * 100;

    % caluclate KM and vmax from reference vo data.
    %y_lin_val = target_vo';
    %x_lin_val = target_vo' ./ conc_out;
    %coefs_val = polyfit(x_lin_val, y_lin_val, 1);
    %km_val = -1* coefs_val(1);
    %vmax_val = coefs_val(2);

    % caluclate MM model from caluclated Km and Vmax from previous step.
    %vo_calcs_km_vmax = (vmax_val*(conc_out)) ./ (km_val + conc_out);
    %sse_vo_km_vmax = sum((vo_calcs_km_vmax - target_vo').^2);

    %target_vmax = 1.806;
    %target_km = 269.74;

    % Calculated vmax and km error for analysis
    %vmax_err = (abs(vmax_val - target_vmax) / target_vmax) * 100;
    %km_err = (abs(km_val - target_km) / target_km) * 100;
  
    % SSE from vo and vmax
    %sse_vo = sum((vo_array - target_vo).^2);


    
    fprintf(" KM predicted Enzyme: %f\n", km);
    fprintf(" Vmax prediced Enzyme: %f\n", vmax);
  
end
 
%% ____________________
%% FORMATTED TEXT/FIGURE DISPLAYS

% calls function to calculate SSE and plot data
%sse = M3_MM_PGOX50_046_08(conc_out, data, vo_array);

%% ____________________
%% RESULTS

% Display of caluclated values
  %fprintf("vmax error from prediction of Vo: %0.3f\n", vmax_err);
  %fprintf("km error from prediction of Vo: %0.3f\n", km_err);
  %fprintf("SSE for Vo prediction: %0.3f\n", sse)
  %fprintf("SSE from Vo and Vmax: %0.3f\n", sse_vo)
  %fprintf("SSE from Vmax and KM: %0.3f\n", sse_vo_km_vmax)
  %fprintf("Predicted Vo Values from dataset: %0.3f\n", vo_array)
  %fprintf("Predicted Vmax from dataset: %0.3f\n", vmax)
  %fprintf("Prediced KM from dataset: %0.3f\n", km)
  %fprintf("Predicted Vmax from given Vo:  %0.3f\n", vmax_val)
  %fprintf("Predicted KM from given Vo: %0.3f\n", km_val)
  % SSE for each, 

%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% We have not used source code obtained from any other unauthorized
% source, either modified or unmodified. Neither have we provided
% access to my code to another. The program we are submitting
% is our own original work.



