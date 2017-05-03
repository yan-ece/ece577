%recognize
%vecotr
for m=0:19
    
    q(m*20+1:(m+1)*20,1)=p1(1:20,m+1);
end
%regnoize
[a,Pf,Af]=sim(net,q);
a
a=round(a);
a
switch a
    case 0, ch='0';
    case 1, ch='1';
    case 2, ch='2';
    case 3, ch='3';
    case 4, ch='4';
    case 5, ch='5';
    case 6, ch='6';
    case 7, ch='7';
    case 8, ch='8';
    case 9, ch='9';

    case 10,ch='A';
    case 11,ch='B';
    case 12,ch='C';
    case 13,ch='D';
    case 14,ch='E';
    case 15,ch='F';
    case 16,ch='G';
    case 17,ch='H';
    case 18,ch='I';
    case 19,ch='J';
    case 20,ch='K';
    case 21,ch='L';
    case 22,ch='M';
    case 23,ch='N';
    case 24,ch='O';
    case 25,ch='P';
    case 26,ch='Q';
    case 27,ch='R';
    case 28,ch='S';
    case 29,ch='T';
    case 30,ch='U';
    case 31,ch='V';
    case 32,ch='W';
    case 33,ch='X';
    case 34,ch='Y';
    case 35,ch='Z';
        
    case 36,ch='a';
    case 37,ch='b';
    case 38,ch='c';
    case 39,ch='d';
    case 40,ch='e';
    case 41,ch='f';
    case 42,ch='g';
    case 43,ch='h';
    case 44,ch='i';
    case 45,ch='j';
    case 46,ch='k';
    case 47,ch='l';
    case 48,ch='m';
    case 49,ch='n';
    case 50,ch='o';
    case 51,ch='p';
    case 52,ch='q';
    case 53,ch='r';
    case 54,ch='s';
    case 55,ch='t';
    case 56,ch='u';
    case 57,ch='v';
    case 58,ch='w';
    case 59,ch='x';
    case 60,ch='y';
    case 61,ch='z';
    
end
%show result
set(h5,'String',ch,...
    'FontSize',30);
