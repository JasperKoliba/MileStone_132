function [km] = find_km(v_max,v0,concentration)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% program finds K_m 
%
% Function Call
% [km] = find_km(v_max)
%
% Input Arguments
% v_max: maximum velocity of enzyme
% v0: array of initial velocities for each concentration
% concentration: array of concenctrations
%
% Output Arguments
% km: K_m value of enzyme
%
% Assignment Information
%   Assignment:     M2
%   Team member:    CeliaEyrich, ceyrich@purdue.edu [repeat for each person]
%   Team ID:        046-08
%   Academic Integrity:
%     [] We worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers we worked with: Name, login@purdue [repeat for each]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION

v_half = v_max / 2;
index = 0;
error = 100;

%% ____________________
%% CALCULATIONS

for n = 1:length(v0)
    temp_error = ((abs(v0(n) - v_half)) / v0(n)) * 100;

    if temp_error <= error
        index = n;
    end
end

concentration_index = index;
s_val = concentration(concentration_index);

km = ((v_max * s_val) / v0(index)) - s_val;


%% ____________________
%% FORMATTED TEXT/FIGURE DISPLAYS


%% ____________________
%% RESULTS


%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% We have not used source code obtained from any other unauthorized
% source, either modified or unmodified. Neither have we provided
% access to my code to another. The program we are submitting
% is our own original work.



