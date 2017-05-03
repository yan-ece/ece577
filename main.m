%GUI
clear all;
%WINDOW
H=figure('Color',[0.5 0.5 0.5],...
    'position',[400 300 500 400],...
    'Name','character recognize',...
    'NumberTitle','off',...
    'MenuBar','none');
%axis show original image
h0=axes('position',[0.1 0.6 0.3 0.3]);
%read button
h1=uicontrol(H,'Style','push',...
    'Position',[280 270 100 40],...
    'String','read Image',...
    'FontSize',14,...
    'Call','read');
%axis show image after preprocess
h2=axes('position',[0.1 0.2 0.3 0.3]);
%preprocess button
h3=uicontrol(H,'Style','push',...
    'Position',[280 210 100 40],...
    'String','preprocess',...
    'FontSize',14,...
    'Call','preprocess');
%recognize button
h4=uicontrol(H,'Style','push',...
    'Position',[280 150 100 40],...
    'String','recognize',...
    'FontSize',14,...
    'Call','recognize');
%result button
h5=uicontrol(H,'Style','text',...
    'Position',[280 50 100 80],...
    'String','result',...
    'FontSize',14,...
    'Back',[1 1 1],...
    'Fore',[0 0 0]);
% Train button
h6=uicontrol(H,'Style','push',...
    'Position',[280 330 100 40],...
    'String','train',...
    'FontSize',14,...
    'Call','Train');