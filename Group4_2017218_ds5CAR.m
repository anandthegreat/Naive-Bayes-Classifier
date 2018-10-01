count=1;
loop=1;
accuracycount=0;
no_of_rows=size(car,1);
count_1=1;
count_2=1;
count_3=1;
count_4=1;
while(loop<=no_of_rows)     %Loop to count L,B,R
    temp=car{loop,1};
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
    one=[1,1,1,1 ; 1,1,1,1 ; 1,1,1,1 ; 1,1,1,1, ; 1,1,1,1 ; 1,1,1,1 ; 1,1,1,1];
    two=[1,1,1,1 ; 1,1,1,1 ; 1,1,1,1 ; 1,1,1,1, ; 1,1,1,1 ; 1,1,1,1 ; 1,1,1,1];
    three=[1,1,1,1 ; 1,1,1,1 ; 1,1,1,1 ; 1,1,1,1, ; 1,1,1,1 ; 1,1,1,1 ; 1,1,1,1];
    four=[1,1,1,1 ; 1,1,1,1 ; 1,1,1,1 ; 1,1,1,1, ; 1,1,1,1 ; 1,1,1,1 ; 1,1,1,1];
    
    currentclass=car(loop,1:6);
    charval=car{loop,7};           %Check whether it is 1,2 or 3,4;
    data1=car{loop,2};
    data2=car{loop,3};
    data3=car{loop,4};
    data4=car{loop,5};
    data5=car{loop,6};
    data6=car{loop,7};
    low=loop-1;
    high=loop+1;
    if(loop==1)
        trainingclass=car(2:no_of_rows,1:7);
        
    elseif(loop==no_of_rows)
        trainingclass=car(1:no_of_rows-1,1:7);
        
    else
        trainingclass1=car(1:low,1:7);
        trainingclass2=car(high:no_of_rows,1:7);
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
        if(trainingclass{j,7}==1)
            one(1,by1)=one(1,by1)+1;
            one(2,by2)=one(2,by2)+1;
            one(3,by3)=one(3,by3)+1;
            one(4,by4)=one(4,by4)+1;
            one(5,by5)=one(5,by5)+1;
            one(6,by6)=one(6,by6)+1;
           
        elseif(trainingclass{j,7}==2)
            two(1,by1)=two(1,by1)+1;
            two(2,by2)=two(2,by2)+1;
            two(3,by3)=two(3,by3)+1;
            two(4,by4)=two(4,by4)+1;
            two(5,by5)=two(5,by5)+1;
            two(6,by6)=two(6,by6)+1;
            
        elseif(trainingclass{j,7}==3)
            three(1,by1)=three(1,by1)+1;
            three(2,by2)=three(2,by2)+1;
            three(4,by4)=three(4,by4)+1;
            three(5,by5)=three(5,by5)+1;
            three(6,by6)=three(6,by6)+1;
           
        else
            four(1,by1)=four(1,by1)+1;
            four(2,by2)=four(2,by2)+1;
            four(3,by3)=four(3,by3)+1;
            four(4,by4)=four(4,by4)+1;
            four(5,by5)=four(5,by5)+1;
            four(6,by6)=four(6,by6)+1;
          
            
        end
        j=j+1;
    end
    ans1=Pof1*(one(1,data1)/count_1)*(one(2,data2)/count_1)*(one(3,data3)/count_1)*(one(4,data4)/count_1)*(one(5,data5)/count_1)*(one(6,data6)/count_1);
    ans2=Pof2*(two(1,data1)/count_2)*(two(2,data2)/count_2)*(two(3,data3)/count_2)*(two(4,data4)/count_2)*(two(5,data5)/count_2)*(two(6,data6)/count_2);
    ans3=Pof3*(three(1,data1)/count_3)*(three(2,data2)/count_3)*(three(3,data3)/count_3)*(three(4,data4)/count_3)*(three(5,data5)/count_3)*(three(6,data6)/count_3);
    ans4=Pof4*(four(1,data1)/count_4)*(four(2,data3)/count_4)*(four(3,data3)/count_4)*(four(4,data4)/count_4)*(four(5,data5)/count_4)*(four(6,data6)/count_4);
    if((ans1>ans2) && (ans1>ans3) && (ans1>ans4))
        naivechar=1;
    elseif((ans2>ans1) && (ans2>ans3) && (ans2>ans4))
        naivechar=2;
    elseif((ans3>ans1) && (ans3>ans2) && (ans3>ans4))
        naivechar=3;
    else
        naivechar=4;
    end
  
    if(charval==naivechar)
        accuracycount=accuracycount+1;
    end
    disp('chal raha hu')
    loop=loop+1;
end

disp((accuracycount/no_of_rows)*100);