count=1;
loop=1;
accuracycount=0;
no_of_rows=size(lymphography,1);
count_1=1;
count_2=1;
count_3=1;
count_4=1;
while(loop<=no_of_rows)     %Loop to count L,B,R
    temp=lymphography{loop,1};
    if(temp==1)
        count_1=count_1+1;
    elseif(temp==2)
        count_2=count_2+1;
    elseif(temp==3)
        count_3=count_3+1;
    else
        count_4=count_4+1;
    end
    loop=loop+1;
end

Pof1=count_1/no_of_rows;
Pof2=count_2/no_of_rows;
Pof3=count_3/no_of_rows;
Pof4=count_4/no_of_rows;

loop=1;

while(loop<=no_of_rows)
    one=[1,1,1,1,1,1,1,1;1,1,1,1,1,1,1,1;1,1,1,1,1,1,1,1;1,1,1,1,1,1,1,1;1,1,1,1,1,1,1,1;1,1,1,1,1,1,1,1;1,1,1,1,1,1,1,1;1,1,1,1,1,1,1,1;1,1,1,1,1,1,1,1;1,1,1,1,1,1,1,1;1,1,1,1,1,1,1,1;1,1,1,1,1,1,1,1;1,1,1,1,1,1,1,1;1,1,1,1,1,1,1,1;1,1,1,1,1,1,1,1;1,1,1,1,1,1,1,1;1,1,1,1,1,1,1,1;1,1,1,1,1,1,1,1];
    two=[1,1,1,1,1,1,1,1;1,1,1,1,1,1,1,1;1,1,1,1,1,1,1,1;1,1,1,1,1,1,1,1;1,1,1,1,1,1,1,1;1,1,1,1,1,1,1,1;1,1,1,1,1,1,1,1;1,1,1,1,1,1,1,1;1,1,1,1,1,1,1,1;1,1,1,1,1,1,1,1;1,1,1,1,1,1,1,1;1,1,1,1,1,1,1,1;1,1,1,1,1,1,1,1;1,1,1,1,1,1,1,1;1,1,1,1,1,1,1,1;1,1,1,1,1,1,1,1;1,1,1,1,1,1,1,1;1,1,1,1,1,1,1,1];
    three=[1,1,1,1,1,1,1,1;1,1,1,1,1,1,1,1;1,1,1,1,1,1,1,1;1,1,1,1,1,1,1,1;1,1,1,1,1,1,1,1;1,1,1,1,1,1,1,1;1,1,1,1,1,1,1,1;1,1,1,1,1,1,1,1;1,1,1,1,1,1,1,1;1,1,1,1,1,1,1,1;1,1,1,1,1,1,1,1;1,1,1,1,1,1,1,1;1,1,1,1,1,1,1,1;1,1,1,1,1,1,1,1;1,1,1,1,1,1,1,1;1,1,1,1,1,1,1,1;1,1,1,1,1,1,1,1;1,1,1,1,1,1,1,1];
    four=[1,1,1,1,1,1,1,1;1,1,1,1,1,1,1,1;1,1,1,1,1,1,1,1;1,1,1,1,1,1,1,1;1,1,1,1,1,1,1,1;1,1,1,1,1,1,1,1;1,1,1,1,1,1,1,1;1,1,1,1,1,1,1,1;1,1,1,1,1,1,1,1;1,1,1,1,1,1,1,1;1,1,1,1,1,1,1,1;1,1,1,1,1,1,1,1;1,1,1,1,1,1,1,1;1,1,1,1,1,1,1,1;1,1,1,1,1,1,1,1;1,1,1,1,1,1,1,1;1,1,1,1,1,1,1,1;1,1,1,1,1,1,1,1];
    currentclass=lymphography(loop,2:19);
    charval=lymphography{loop,1};           %Check whether it is 1,2 or 3,4;
    data1=lymphography{loop,2};
    data2=lymphography{loop,3};
    data3=lymphography{loop,4};
    data4=lymphography{loop,5};
    data5=lymphography{loop,6};
    data6=lymphography{loop,7};
    data7=lymphography{loop,8};
    data8=lymphography{loop,9};
    data9=lymphography{loop,10};
    data10=lymphography{loop,11};
    data11=lymphography{loop,12};
    data12=lymphography{loop,13};
    data13=lymphography{loop,14};
    data14=lymphography{loop,15};
    data15=lymphography{loop,16};
    data16=lymphography{loop,17};
    data17=lymphography{loop,18};
    data18=lymphography{loop,19};
    low=loop-1;
    high=loop+1;
    if(loop==1)
        trainingclass=lymphography(2:no_of_rows,1:19);
        
    elseif(loop==no_of_rows)
        trainingclass=lymphography(1:no_of_rows-1,1:19);
        
    else
        trainingclass1=lymphography(1:low,1:19);
        trainingclass2=lymphography(high:no_of_rows,1:19);
        trainingclass=[trainingclass1;trainingclass2];       %TRAINING CLASS
    end
    j=1;
    while(j<=no_of_rows-1)
        by1=trainingclass{j,2};
        by2=trainingclass{j,3};
        by3=trainingclass{j,4};
        by4=trainingclass{j,5};
        by5=trainingclass{j,6};
        by6=trainingclass{j,7};
        by7=trainingclass{j,8};
        by8=trainingclass{j,9};
        by9=trainingclass{j,10};
        by10=trainingclass{j,11};
        by11=trainingclass{j,12};
        by12=trainingclass{j,13};
        by13=trainingclass{j,14};
        by14=trainingclass{j,15};
        by15=trainingclass{j,16};
        by16=trainingclass{j,17};
        by17=trainingclass{j,18};
        by18=trainingclass{j,19};
        if(trainingclass{j,1}==1)
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
        elseif(trainingclass{j,1}==2)
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
        elseif(trainingclass{j,1}==3)
            three(1,by1)=three(1,by1)+1;
            three(2,by2)=three(2,by2)+1;
            three(4,by4)=three(4,by4)+1;
            three(5,by5)=three(5,by5)+1;
            three(6,by6)=three(6,by6)+1;
            three(7,by7)=three(7,by7)+1;
            three(8,by8)=three(8,by8)+1;
            three(9,by9)=three(9,by9)+1;
            three(10,by10)=three(10,by10)+1;
            three(11,by11)=three(11,by11)+1;
            three(12,by12)=three(12,by12)+1;
            three(13,by13)=three(13,by13)+1;
            three(14,by14)=three(14,by14)+1;
            three(15,by15)=three(15,by15)+1;
            three(16,by16)=three(16,by16)+1;
            three(17,by17)=three(17,by17)+1;
            three(18,by18)=three(18,by18)+1;
        else
            four(1,by1)=four(1,by1)+1;
            four(2,by2)=four(2,by2)+1;
            four(3,by3)=four(3,by3)+1;
            four(4,by4)=four(4,by4)+1;
            four(5,by5)=four(5,by5)+1;
            four(6,by6)=four(6,by6)+1;
            four(7,by7)=four(7,by7)+1;
            four(8,by8)=four(8,by8)+1;
            four(9,by9)=four(9,by9)+1;
            four(10,by10)=four(10,by10)+1;
            four(11,by11)=four(11,by11)+1;
            four(12,by12)=four(12,by12)+1;
            four(13,by13)=four(13,by13)+1;
            four(14,by14)=four(14,by14)+1;
            four(15,by15)=four(15,by15)+1;
            four(16,by16)=four(16,by16)+1;
            four(17,by17)=four(17,by17)+1;
            four(18,by18)=four(18,by18)+1;
            
        end
        j=j+1;
    end
    ans2=Pof2*(two(1,data1)/count_2)*(two(2,data2)/count_2)*(two(3,data3)/count_2)*(two(4,data4)/count_2)*(two(5,data5)/count_2)*(two(6,data6)/count_2)*(two(7,data7)/count_2)*(two(8,data8)/count_2)*(two(9,data9)/count_2)*(two(10,data10)/count_2)*(two(11,data11)/count_2)*(two(12,data12)/count_2)*(two(13,data13)/count_2)*(two(14,data14)/count_2)*(two(15,data15)/count_2)*(two(16,data16)/count_2)*(two(17,data17)/count_2)*(two(18,data18)/count_2);
    ans3=Pof3*(three(1,data1)/count_3)*(three(2,data2)/count_3)*(three(3,data3)/count_3)*(three(4,data4)/count_3)*(three(5,data5)/count_3)*(three(6,data6)/count_3)*(three(7,data7)/count_3)*(three(8,data8)/count_3)*(three(9,data9)/count_3)*(three(10,data10)/count_3)*(three(11,data11)/count_3)*(three(12,data12)/count_3)*(three(13,data13)/count_3)*(three(14,data14)/count_3)*(three(15,data15)/count_3)*(three(16,data16)/count_3)*(three(17,data17)/count_3)*(three(18,data18)/count_3);
    ans4=Pof4*(four(1,data1)/count_4)*(four(2,data3)/count_4)*(four(3,data3)/count_4)*(four(4,data4)/count_4)*(four(5,data5)/count_4)*(four(6,data6)/count_4)*(four(7,data7)/count_4)*(four(8,data8)/count_4)*(four(9,data9)/count_4)*(four(10,data10)/count_4)*(four(11,data11)/count_4)*(four(12,data12)/count_4)*(four(13,data13)/count_4)*(four(14,data14)/count_4)*(four(15,data15)/count_4)*(four(16,data16)/count_4)*(four(17,data17)/count_4)*(four(18,data18)/count_4);
   
    if((ans2>ans1) && (ans2>ans3) && (ans2>ans4))
        naivechar=2;
    elseif((ans3>ans1) && (ans3>ans2) && (ans3>ans4))
        naivechar=3;
    else
        naivechar=4;
    end
  
    if(charval==naivechar)
        accuracycount=accuracycount+2;
    end
    loop=loop+1;
end

disp((accuracycount/no_of_rows)*100);