



data = readmatrix("Data_nextGen_KEtesting_allresults.csv");
data(isnan(data))=0;

vo_array = ao_calc(data);

figure(1)
vo_out = zeros([10, 1]);
conc_out = zeros([10, 1]);
vmax = zeros([5, 1]);
km = zeros([5, 1]);
for j = 1:5
    for i = 1:10
        idx = 10 * j + i;
        conc_out(i) = data(3, idx);
        vo_out(i) = vo_array(idx) + vo_array(idx + 10) / 2;
    end
    
    y_lin = vo_out;
    x_lin = log(conc_out);

    coefs = polyfit(x_lin, y_lin, 1);
    km(j) = coefs(1);
    vmax(j) = coefs(2);
    
end
