count=1;
loop=1;
accuracycount=0;
no_of_rows=size(chessdata,1);
count_1=1;
count_2=1;
while(loop<=no_of_rows)     %Loop to count L,B,R
    temp=chessdata{loop,1};
    if(temp==1)
        count_1=count_1+1;
    else
        count_2=count_2+1;
    end
    loop=loop+1;
end

Pof1=count_1/no_of_rows;
Pof2=count_2/no_of_rows;


loop=1;

while(loop<=no_of_rows)
    one=[1,1,1,1,1,1,1 ; 1,1,1,1,1,1,1; 1,1,1,1,1,1,1; 1,1,1,1,1,1,1; 1,1,1,1,1,1,1; 1,1,1,1,1,1,1; 1,1,1,1,1,1,1; 1,1,1,1,1,1,1; 1,1,1,1,1,1,1; 1,1,1,1,1,1,1; 1,1,1,1,1,1,1; 1,1,1,1,1,1,1; 1,1,1,1,1,1,1; 1,1,1,1,1,1,1; 1,1,1,1,1,1,1; 1,1,1,1,1,1,1; 1,1,1,1,1,1,1; 1,1,1,1,1,1,1;1,1,1,1,1,1,1 ; 1,1,1,1,1,1,1; 1,1,1,1,1,1,1; 1,1,1,1,1,1,1; 1,1,1,1,1,1,1; 1,1,1,1,1,1,1; 1,1,1,1,1,1,1; 1,1,1,1,1,1,1; 1,1,1,1,1,1,1; 1,1,1,1,1,1,1; 1,1,1,1,1,1,1; 1,1,1,1,1,1,1; 1,1,1,1,1,1,1; 1,1,1,1,1,1,1; 1,1,1,1,1,1,1; 1,1,1,1,1,1,1; 1,1,1,1,1,1,1; 1,1,1,1,1,1,1];
    two=[1,1,1,1,1,1,1 ; 1,1,1,1,1,1,1;1,1,1,1,1,1,1;1,1,1,1,1,1,1;1,1,1,1,1,1,1;1,1,1,1,1,1,1;1,1,1,1,1,1,1;1,1,1,1,1,1,1;1,1,1,1,1,1,1;1,1,1,1,1,1,1;1,1,1,1,1,1,1;1,1,1,1,1,1,1;1,1,1,1,1,1,1;1,1,1,1,1,1,1;1,1,1,1,1,1,1;1,1,1,1,1,1,1;1,1,1,1,1,1,1;1,1,1,1,1,1,1;1,1,1,1,1,1,1 ; 1,1,1,1,1,1,1; 1,1,1,1,1,1,1; 1,1,1,1,1,1,1; 1,1,1,1,1,1,1; 1,1,1,1,1,1,1; 1,1,1,1,1,1,1; 1,1,1,1,1,1,1; 1,1,1,1,1,1,1; 1,1,1,1,1,1,1; 1,1,1,1,1,1,1; 1,1,1,1,1,1,1; 1,1,1,1,1,1,1; 1,1,1,1,1,1,1; 1,1,1,1,1,1,1; 1,1,1,1,1,1,1; 1,1,1,1,1,1,1; 1,1,1,1,1,1,1];
    
    currentclass=chessdata(loop,1:36);
    charval=chessdata{loop,37};           %Check whether it is 1,2 or 3,4;
    data1=chessdata{loop,1};
    data2=chessdata{loop,2};
    data3=chessdata{loop,3};
    data4=chessdata{loop,4};
    data5=chessdata{loop,5};
    data6=chessdata{loop,6};
    data7=chessdata{loop,7};
    data8=chessdata{loop,8};
    data9=chessdata{loop,9};
    data10=chessdata{loop,10};
    data11=chessdata{loop,11};
    data12=chessdata{loop,12};
    data13=chessdata{loop,13};
    data14=chessdata{loop,14};
    data15=chessdata{loop,15};
    data16=chessdata{loop,16};
    data17=chessdata{loop,17};
    data18=chessdata{loop,18};
    data19=chessdata{loop,19};
    data20=chessdata{loop,20};
    data21=chessdata{loop,21};
    data22=chessdata{loop,22};
    data23=chessdata{loop,23};
    data24=chessdata{loop,24};
    data25=chessdata{loop,25};
    data26=chessdata{loop,26};
    data27=chessdata{loop,27};
    data28=chessdata{loop,28};
    data29=chessdata{loop,29};
    data30=chessdata{loop,30};
    data31=chessdata{loop,31};
    data32=chessdata{loop,32};
    data33=chessdata{loop,33};
    data34=chessdata{loop,34};
    data35=chessdata{loop,35};
    data36=chessdata{loop,36};
    low=loop-1;
    high=loop+1;
    if(loop==1)
        trainingclass=chessdata(2:no_of_rows,1:37);
        
    elseif(loop==no_of_rows)
        trainingclass=chessdata(1:no_of_rows-1,1:37);
        
    else
        trainingclass1=chessdata(1:low,1:37);
        trainingclass2=chessdata(high:no_of_rows,1:37);
        trainingclass=[trainingclass1;trainingclass2];       %TRAINING CLASS
    end
    j=1;
    while(j<=no_of_rows-1)
        by1=trainingclass{j,1};
        by2=trainingclass{j,2};
        by3=trainingclass{j,3};
        by4=trainingclass{j,4};
        by5=trainingclass{j,5};
        by6=trainingclass{j,6};
        by7=trainingclass{j,7};
        by8=trainingclass{j,8};
        by9=trainingclass{j,9};
        by10=trainingclass{j,10};
        by11=trainingclass{j,11};
        by12=trainingclass{j,12};
        by13=trainingclass{j,13};
        by14=trainingclass{j,14};
        by15=trainingclass{j,15};
        by16=trainingclass{j,16};
        by17=trainingclass{j,17};
        by18=trainingclass{j,18};
        
        by19=trainingclass{j,19};
        by20=trainingclass{j,20};
        by21=trainingclass{j,21};
        by22=trainingclass{j,22};
        by23=trainingclass{j,23};
        by24=trainingclass{j,24};
        by25=trainingclass{j,25};
        by26=trainingclass{j,26};
        by27=trainingclass{j,27};
        by28=trainingclass{j,28};
        by29=trainingclass{j,29};
        by30=trainingclass{j,30};
        by31=trainingclass{j,31};
        by32=trainingclass{j,32};
        by33=trainingclass{j,33};
        by34=trainingclass{j,34};
        by35=trainingclass{j,35};
        by36=trainingclass{j,36};
        if(trainingclass{j,37}==1)
            one(1,by1)=one(1,by1)+1;
            one(2,by2)=one(2,by2)+1;
            one(3,by3)=one(3,by3)+1;
            one(4,by4)=one(4,by4)+1;
            one(5,by5)=one(5,by5)+1;
            one(6,by6)=one(6,by6)+1;
            one(7,by7)=one(7,by7)+1;
            one(8,by8)=one(8,by8)+1;
            one(9,by9)=one(9,by9)+1;
            one(10,by10)=one(10,by10)+1;
            one(11,by11)=one(11,by11)+1;
            one(12,by12)=one(12,by12)+1;
            one(13,by13)=one(13,by13)+1;
            one(14,by14)=one(14,by14)+1;
            one(15,by15)=one(15,by15)+1;
            one(16,by16)=one(16,by16)+1;
            one(17,by17)=one(17,by17)+1;
            one(18,by18)=one(18,by18)+1;
        elseif(trainingclass{j,37}==2)
            two(1,by1)=two(1,by1)+1;
            two(2,by2)=two(2,by2)+1;
            two(3,by3)=two(3,by3)+1;
            two(4,by4)=two(4,by4)+1;
            two(5,by5)=two(5,by5)+1;
            two(6,by6)=two(6,by6)+1;
            two(7,by7)=two(7,by7)+1;
            two(8,by8)=two(8,by8)+1;
            two(9,by9)=two(9,by9)+1;
            two(10,by10)=two(10,by10)+1;
            two(11,by11)=two(11,by11)+1;
            two(12,by12)=two(12,by12)+1;
            two(13,by13)=two(13,by13)+1;
            two(14,by14)=two(14,by14)+1;
            two(15,by15)=two(15,by15)+1;
            two(16,by16)=two(16,by16)+1;
            two(17,by17)=two(17,by17)+1;
            two(18,by18)=two(18,by18)+1;
      
        end
        j=j+1;
    end
    ans2=Pof2*(two(1,data1)/count_2)*(two(2,data2)/count_2)*(two(3,data3)/count_2)*(two(4,data4)/count_2)*(two(5,data5)/count_2)*(two(6,data6)/count_2)*(two(7,data7)/count_2)*(two(8,data8)/count_2)*(two(9,data9)/count_2)*(two(10,data10)/count_2)*(two(11,data11)/count_2)*(two(12,data12)/count_2)*(two(13,data13)/count_2)*(two(14,data14)/count_2)*(two(15,data15)/count_2)*(two(16,data16)/count_2)*(two(17,data17)/count_2)*(two(18,data18)/count_2);
    ans1=Pof1*(one(1,data1)/count_1)*(one(2,data2)/count_1)*(one(3,data3)/count_1)*(one(4,data4)/count_1)*(one(5,data5)/count_1)*(one(6,data6)/count_1)*(one(7,data7)/count_1)*(one(8,data8)/count_1)*(one(9,data9)/count_1)*(one(10,data10)/count_1)*(one(11,data11)/count_1)*(one(12,data12)/count_1)*(one(13,data13)/count_1)*(one(14,data14)/count_1)*(one(15,data15)/count_1)*(one(16,data16)/count_1)*(one(17,data17)/count_1)*(one(18,data18)/count_1);
   
    if(ans2>ans1)
        naivechar=1;
    else
        naivechar=2;
    end
  
    if(charval==naivechar)
        accuracycount=accuracycount+1;
    end
    disp('chal raha hu');
    loop=loop+1;
end

disp((accuracycount/no_of_rows)*100);