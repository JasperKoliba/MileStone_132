function [vmax] = M2_Vmax_046_08(v0, concentration)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% Calculates vmax, the maximum velocity (μM/min) of the reaction
%
% Function Call
% [vmax] = M2_Vmax_046_08(v0, concentration)
%
% Input Arguments
% v0 = array of the initial velocities (μM/min) of the reaction 
% concentration = array of the substrate concentrations
%
% Output Arguments
% vmax = the maximum velocity (μM/min) of the reaction
%
% Assignment Information
%   Assignment:     M2
%   Team member:    Daniel McGuirk, dmcguirk@purdue.edu 
%   Team ID:        046-08
%   Academic Integrity:
%     [] We worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers we worked with: None
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION


%% ____________________
%% Calculations

% This method uses the Eadie-Hofstee Approach to find vmax. The
% Michaelis-Menten equation, v0 = (vmax*[s])\(km+[s]), can be linearized by
% using the Eadie-Hofstee plot, which is a plot of v0/[S] versus v0. The slope 
% of the line is equal to km and the y-intercept is equal to vmax.
coeffs = polyfit(v0./concentration, v0, 1);
vmax = coeffs(2);
end

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



