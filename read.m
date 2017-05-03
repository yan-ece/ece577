%read
%read file from disk
[filename,pathname]=uigetfile({'*.png';'*.bmp';...
    '*.gif';'*.*'},...
    'Pick an Image File');
X=imread([pathname,filename]);
% show image
axes(h0);%h0 current axis
imshow(X);% show image X on h0