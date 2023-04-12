



data = readmatrix("Data_nextGen_KEtesting_allresults.csv");
data(isnan(data))=0;

vo_array = ao_calc(data);

figure(1)
vo_out = zeros([10, 1]);
conc_out = zeros([10, 1]);
for i = 82:91 
    conc_out(i - 81) = data(3, i);
    vo_out(i-81) = vo_array(i) + vo_array(i + 10) / 2;
end

plot(conc_out, vo_out)