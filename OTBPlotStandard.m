% This script let a OTB file be shown on a matlab plot.
% This script needs the following info:
%	- fsamp: Sample frequency
%	- Acquired_Ch = ;       % Number of acquired channels
%	- Plotted_Ch = ;        % Number of channell that will be plotted
%	- Gain = ;            % Gain used during acquisition
%
% These data are available in the OT Biolab Abstract.
%
% The script asks to the user the otb file, extract from it the sig file, and 
% using the info requested previously, plot it in the figure.





% Close all figures and clear all variables
close all
clear all


% Settings
fsamp = 2000;          % Sample frequency in Hz
Acquired_Ch = 64;       % Number of acquired channels
Plotted_Ch = 64;        % Number of channell that will be plotted
Gain = 1000;            % Gain used during acquisition
Offset_plot = 40;        % Offset uset to separate the channels in the plot in mV

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
Num_files = length(Sig_Files);

% For each *.sig file reads it
for ind = 1:Num_files
    
    hh=fopen(Sig_Files(ind).name,'r');    % Open the file for read
    
    % Read the file in small blocks to avoid memory problems
    Raw_sig = fread(hh,[Acquired_Ch, inf],'short');
    
    [nch Sig_dur] = size(Raw_sig);      % Extract Matrix dimentions
    
    % ---------  SIGNAL CONVERSION ------------
    Sig = Raw_sig*5/2^12/Gain*1000;	% Estimates the amplitude on the skin:
    % 5 is the A/D input range in V
    % 2^12 take into account the resolution of the A/D
    % Gain: provide the amplidute on the skin
    % 1000: convert the amplitude in mV
    
    t = linspace(0, Sig_dur/fsamp, Sig_dur); % Time vector in s
    
    for i = 1 : Plotted_Ch          % Plot the desired channels
        plot(t, Sig(i,:) + Offset_plot*(i-1))
        hold on; 
    end
    
    xlabel('Time (s)');
    ylabel('Signals amplitude (mV)');
    
    pause   
end

% Close all files
fclose all;

% Remove the Temp Directory
cd ..
rmdir('Temp', 's')


