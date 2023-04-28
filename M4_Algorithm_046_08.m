function [data_best_vo] = M4_Algorithm_046_08(data)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% This function caluclates vo by using linear regression on each enzyme
% test to find the timeslot of each test with a linear region with the
% highest r^2
%
% Function Call
% M2_Algorithm_046_08()
%
% Input Arguments
% data = given data for the concentrations
%
% Output Arguments
% data_best_vo = the calculated vvales we determined for each of the 100
% tests
%
% Assignment Information
%   Assignment:     M02
%   Team member:    Bernadette Goeppner, bgoeppn@purdue.edu, Celia Enyrich, 
%                   ceyrich@purdue.edu, Daniel McGurik, dmcguirk@purdue.edu
%                   Jasper Koliba, jkoliba@purdue.edu
%   Team ID:        046-08
%   Academic Integrity:
%     We all worked together
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION

%importing the data 
size_obs = size(data, 1);
size_tests = size(data, 2);

%returning the array for the tests
data_best_vo = zeros([1, size_tests]);
data_r = zeros([size_obs, size_tests]);
vo_r = zeros([size(data, 1), size(data, 2)]);

%begin the index at 7 to run through the array
begin_idx = 7;
time = data(begin_idx:size_obs, 1);

% setting r^2 threshold

r_threshold = 0.9758;
per_threshold = 0.03227;


% M3 Method
%r_threshold = 0.98;
%per_threshold = 1;



%% ____________________
%% CALCULATIONS

%for loop to calculate the tests 
for i = 2:size_tests
    test = data(begin_idx:size_obs, i); 
    end_idxes = find(test == 0 | test == test(size_obs - begin_idx));
    end_idx = end_idxes(1);
    
    %for loop to calculate the time and test number for the enzymes
    for j = begin_idx:end_idx
        tmp_time = time(1:j);
        test_r = test(1:j);
        
        %calculating the r_squared and linear model for the tests
        coefs = polyfit(tmp_time, test_r, 1);                    
        preds = tmp_time*coefs(1) + coefs(2);                     
        sse = sum((preds - test_r).^2);                      
        sst = sum((test_r - mean(test_r)).^2);                
        r_sq = 1 - (sse /sst);
        
        % assigning r^2 and vo to the caluclated model vals
        data_r(j, i) = r_sq;
        vo_r(j, i) = coefs(1);

        % determining if the current index meets the threshold
        if data_r(j, i) > r_threshold && j < (end_idx * per_threshold)
            best_vo = vo_r(j, i);
            if i == 2
                best_j = j;
            end
        end
    end
    %printing the test number and the data for it 
    fprintf("test %d\n", i)
    data_best_vo(i) = best_vo;
end
    %figure(1)
    %plot(time,data(begin_idx:length(data), 2))
    %hold on
    %plot(time, 0.0184 * time)
    fprintf("%d\n", best_j)
%% ____________________
%% FORMATTED TEXT/FIGURE DISPLAYS

%Main file will display

%% ____________________
%% RESULTS


%Main file will display


%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% We have not used source code obtained from any other unauthorized
% source, either modified or unmodified. Neither have we provided
% access to my code to another. The program we are submitting
% is our own original work.


