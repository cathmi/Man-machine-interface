% Pre-processing script of raw signals from quattrocento
% Author: Catherine Solari
% Version 1.1
% Last Updated: 18/7/17

%%% From Alessandro's code

% Close all figures and clear all variables
close all
clear all
new = 1;
% Ask the user to choose a signal file
[file_name, file_path] = uigetfile('*.otb','Select the Signal file to plot'); 
OTBfilename = [file_path file_name];


% Creates a temporary directory
mkdir('Temp');
cd Temp;

% Extract the sig. files in the temporary directory
unzip(OTBfilename);
% Search for *.sig files
Sig_Files = dir('*.sig');
Num_files = length(Sig_Files)


% Settings
fsamp = 2048;          % Sample frequency in Hz
Acquired_Ch = 200;       % Number of acquired channels
Plotted_Ch = 64; % number of channels to plot
Start_ch = 1; % Number of starting channel
Gain = 150;            % Gain used during acquisition
Offset_plot = 10;        % Offset uset to separate the channels in the plot in mV
%determine load new data or reanalyse existing


for ind = 1:Num_files
    
    hh=fopen(Sig_Files(ind).name,'r');    % Open the file for read
    
    % Read the file in small blocks to avoid memory problems
    Raw_sig = fread(hh,[200, inf],'short');
    
    [nch Sig_dur] = size(Raw_sig);      % Extract Matrix dimentions
    
    % ---------  SIGNAL CONVERSION ------------
    Sig = Raw_sig*5/2^12/Gain*1000;	% Estimates the amplitude on the skin:
    % 5 is the A/D input range in V
    % 2^12 take into account the resolution of the A/D
    % Gain: provide the amplitude on the skin
    % 1000: convert the amplitude in mV
    
end

% Close all files
fclose all;

% Remove the Temp Directory
cd ..
rmdir('Temp', 's')



signal_to_process = Sig;
%  test = signal_to_process1(i,:);
%    test(2:9:end) = [];
% times = length(test);   
% 
% signal_to_process = zeros(Acquired_Ch,times);
% for i = 1:Acquired_Ch
%    test = signal_to_process1(i,:);
%    test(2:9:end) = [];
%  signal_to_process(i,:) = test;
% 
% end

fs=2048; %sample rate in Hz
order=3;   %order of filter
fcutlow=20;   %low cut frequency in Hz
fcuthigh=500;   %high cut frequency in Hz
[b,a]=butter(order,[fcutlow,fcuthigh]/(fs/2),'bandpass');
% fvtool(b,a);
% [b,a]=butter(30,500/(fs/2),'low');
% %  fvtool(b,a);
% 
% [b1,a1] = butter(10,20/(fs/2),'high');
% %  fvtool(b1,a1);




 filtered_signal = filtfilt(b,a, signal_to_process);
%  filtered_signal_low = filter(b1,a1,filtered_signal);

 

    t = linspace(0, Sig_dur/fsamp, Sig_dur); % Time vector in s
    
    for i = Start_ch : Plotted_Ch + Start_ch - 1          % Plot the desired channels
        plot(t, filtered_signal(i,:) + Offset_plot*(i-Start_ch))
        hold on; 
    end
    
    xlabel('Time (s)');
    ylabel('Signals amplitude (mV)');
    
     

%plot(filtered_signal)

%rectify full wave

 
 


