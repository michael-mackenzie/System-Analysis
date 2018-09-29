%% Question 2 - (a)

function y = dnsample(x,M)
    xnew = zeros(ceil(length(x)/M));
    for i = 1:length(xnew)
        xnew(i) = x(i*M);
    end
    y = xnew;
end

%% Question 2 - (b)
x = zeros(1,201);
for i = 1:201
    x(i) = cos(0.16*pi*(i-100));
end
    
y = dnsample(x,4)


%% Question 2 - (c)



%% Question 2 - (d)



