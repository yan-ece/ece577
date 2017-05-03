%Train 
M=45;%# of trainning set
C=62;% # of characters
N=C*M;% # of training data
%get the data of 26 character
index=0;
for kk=1:C
    for ll=1:M
    index=index+1;
    p1=ones(20,20);%initilize 20*20
    trainingsetID=num2str(ll,'%03d');
    chacID=num2str(kk,'%03d');
    filepath=strcat(pwd,'/training/Sample',chacID,'/');
    filename=strcat('img',chacID,'-',trainingsetID,'.png');
    m=strcat(filepath,filename);
    x=imread(m,'png');%read image
    bw=im2bw(x,0.5);%convert into binary image
    
    %cut by rectangle
    [i,j]=find(bw==0);%look for position of black pixcel
    %get boundary position
    imin=min(i);
    imax=max(i);
    jmin=min(j);
    jmax=max(j);
    bw1=bw(imin:imax,jmin:jmax);%cut
    %modifiy rate
    rate=20/max(size(bw1));
    bw1=imresize(bw1,[20,20]);% convert to 20*20 image
    %convert bw1 to standard 20*20 image
    p1=-1.*bw1+ones(20,20);
    %p1 is input vector
    for m=0:19
        p(m*20+1:(m+1)*20,index)=p1(1:20,m+1);
    end
   end
    kk
end
%target vector
for kk=0:C-1
    for ii=1:M
       t(kk*M+ii)=kk;
    end
end
%range
pr(1:400,1)=0;
pr(1:400,2)=1;
%create two layer of BP network,25 point
net=newff(pr,[25 1],{'logsig' 'purelin'},'traingdx','learngdm');
net.trainParam.epochs=10000;
net.trainParam.goal=0.1;
net.trainParam.show=10;

net.trainParam.lr_inc=1.05; %
net.trainParam.lr_dec=0.7; %
net.trainParam.mc=0.95; %
net.trainParam.min_grad=1e-10 %

%train
net=train(net,p,t);
