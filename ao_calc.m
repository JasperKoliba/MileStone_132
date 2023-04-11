function [data_best_vo] = ao_calc(data)

%fprintf("working")
size_obs = size(data, 1);
size_tests = size(data, 2);

data_best_vo = zeros([1, size_tests]);
data_r = zeros([size_obs, size_tests]);
vo_r = zeros([size(data, 1), size(data, 2)]);

begin_idx = 7;
time = data(begin_idx:size_obs, 1);
fprintf("%d\n", length(time))
%fprintf(data)
%fprintf(time)

for i = 2:size_tests

    %fprintf("working 2")
    test = data(begin_idx:size_obs, i); 
    end_idxes = find(test == 0 | test == test(size_obs - begin_idx));
    end_idx = end_idxes(1);
    %best_vo = 2;
    %%fprintf("%f\n", end_idx)
    for j = begin_idx:end_idx
        tmp_time = time(1:j);
        test_r = test(1:j);
        
        coefs = polyfit(tmp_time, test_r, 1);                    
        preds = tmp_time*coefs(1) + coefs(2);                     
        sse = sum((preds - test_r).^2);                      
        sst = sum((test_r - mean(test_r)).^2);                
        r_sq = 1 - (sse /sst);
        %fprintf("%f\n", r_sq)
        
        data_r(j, i) = r_sq;
        vo_r(j, i) = coefs(1);

        if data_r(j, i) > 0.98
            best_vo = vo_r(j, i);
        end
    end
    fprintf("test %d\n", i)
    
    
    data_best_vo(i) = best_vo;

end