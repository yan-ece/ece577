%preprocess
p1=ones(20,20);
bw=im2bw(X,0.5);% cover image to binary image
%cut image by rectang
[i,j]=find(bw==0);
imin=min(i);
imax=max(i);
jmin=min(j);
jmax=max(j);
bw1=bw(imin:imax,jmin:jmax);
%change rate covert to 20*20
 bw1=imresize(bw1,[20,20]);% convert to 20*20 image
 p1=-1.*bw1+ones(20,20);
%show preprocessing image
axes(h2);
imshow(p1);
