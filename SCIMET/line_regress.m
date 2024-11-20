function res = line_regress(x,y,n)
    p = polyfit(x,y,n);
    yfit = polyval(p,x);
    
    y_res = y - yfit;
    SSres = sum(y_res.^2);
    SStotal = (length(y)-1)*var(y);
    
    R2 = 1 - SSres/SStotal;

    s = struct('yfit',yfit,'R2',R2,'res',y_res);

    res = s;
end