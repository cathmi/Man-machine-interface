function result = quick_plot(x)

Offset_plot = 400;
Sig_dur = length(x(1,:));

 t = linspace(0, Sig_dur/2048, Sig_dur); % Time vector in s
    
    for i = 1 : 16          % Plot the desired channels
        plot(t, x(i,:) + Offset_plot*(i-1))
        hold on; 
    end
    
    xlabel('Time (s)');
    ylabel('Signals amplitude (mV)');




% figure()
% plot(EMG(1,:))
% 
% figure()
% plot(EMG(2,:))
% 
% figure()
% plot(EMG(3,:))
% 
% figure()
% plot(EMG(4,:))
% 
% figure()
% plot(EMG(5,:))
% 
% figure()
% plot(EMG(6,:))
% 
% figure()
% plot(EMG(7,:))
% 
% figure()
% plot(EMG(8,:))
% 
% figure()
% plot(EMG(9,:))
% 
% figure()
% plot(EMG(10,:))
% 
% figure()
% plot(EMG(11,:))
% 
% figure()
% plot(EMG(12,:))
% 
% figure()
% plot(EMG(13,:))
% 
% figure()
% plot(EMG(14,:))
% 
% figure()
% plot(EMG(15,:))
% 
% figure()
% plot(EMG(16,:))

