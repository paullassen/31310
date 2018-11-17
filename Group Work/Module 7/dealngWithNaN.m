clear
clc
a = rand(1,1000);
disp(['Length of original array: ' num2str(length(a))])
b = unique((ceil(rand(1,600)*1000)));
disp(['Number of NaNs: ' num2str(length(b))])
a(b) = 0
a_win = a(1:21);
mean(a_win)
mean(a_win(a_win~=0))
a_new = a(~isnan(a));
disp(['Length of array w/o NaNs: ' num2str(length(a_new))])




