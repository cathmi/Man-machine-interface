
figure('Name','fig1')
plot(rms(test2(1:64,:)))
hold on
plot(rms(test1(1:64,:)))
plot(rms(test3(1:64,:)))
plot(rms(test4(1:64,:)))
plot(rms(test5(1:64,:)))


figure('Name','fig2')
plot(rms(test2(65:128,:)))
hold on
plot(rms(test1(65:128,:)))
plot(rms(test3(65:128,:)))
plot(rms(test4(65:128,:)))
plot(rms(test5(65:128,:)))


figure('Name','fig3')
plot(rms(test2(129:192,:)))
hold on
plot(rms(test1(129:192,:)))
plot(rms(test3(129:192,:)))
plot(rms(test4(129:192,:)))
plot(rms(test5(129:192,:)))





%create table - movement direction, test 1, test 2, test 3, test 4, test 5