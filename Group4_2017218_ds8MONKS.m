count=1;
loop=1;
accuracycount=0;
no_of_rows=size(monkstest,1);
no_of_rows2=size(monkstrain,1);
count_L=0;          %Count No of L in dataset
count_B=0;          %Count No of B in dataset
while(loop<=no_of_rows)     %Loop to count L,B,R
    temp=monkstest{loop,1};
    if(temp==1)
        count_L=count_L+1;
    elseif(temp==2)
        count_B=count_B+1;
    else
        continue
    end
    loop=loop+1;
end

PofL=count_L/no_of_rows;
PofB=count_B/no_of_rows;



loop=1;

while(loop<=no_of_rows)
    currentclass=monkstest(loop,2:7);
    charval=monkstest{loop,1};           %Check whether it is 1,2 or 3
    low=loop-1;
    high=loop+1;
    
    
    data1=currentclass{1,1};                             %1st column of current class
    data2=currentclass{1,2};                             %2nd column of current class
    data3=currentclass{1,3};                             %3rd column of current class
    data4=currentclass{1,4};                             %4th column of current class
    data5=currentclass{1,5};
    data6=currentclass{1,6};
    
    p1byL=0;
    p2byL=0;
    p3byL=0;
    p4byL=0;
    p5byL=0;
    p6byL=0;
    
    p1byB=0;
    p2byB=0;
    p3byB=0;
    p4byB=0;
    p5byB=0;
    p6byB=0;
    
    
    
    
    
    j=1;
    while(j<=no_of_rows2)    %for checking for L
        
        if(monkstrain{j,1}==1 && monkstrain{j,2}==data1)
            p1byL=p1byL+1;
        end
        if(monkstrain{j,1}==1 && monkstrain{j,3}==data2)
            p2byL=p2byL+1;
        end
        if(monkstrain{j,1}==1 && monkstrain{j,4}==data3)
            p3byL=p3byL+1;
        end
        if(monkstrain{j,1}==1 && monkstrain{j,5}==data4)
            p4byL=p4byL+1;
        end
        if(monkstrain{j,1}==1 && monkstrain{j,6}==data5)
            p5byL=p5byL+1;
        end
        if(monkstrain{j,1}==1 && monkstrain{j,7}==data6)
            p6byL=p6byL+1;
        end
        j=j+1;
        
    end
    
    %-----------------------------------------------------------------------
    j=1;
    while(j<=no_of_rows2)    %for checking for B
        if(monkstrain{j,1}==2 && monkstrain{j,2}==data1)
            p1byB=p1byB+1;
        end
        if(monkstrain{j,1}==2 && monkstrain{j,3}==data2)
            p2byB=p2byB+1;
        end
        if(monkstrain{j,1}==2 && monkstrain{j,4}==data3)
            p3byB=p3byB+1;
        end
        if(monkstrain{j,1}==2 && monkstrain{j,5}==data4)
            p4byB=p4byB+1;
        end
        if(monkstrain{j,1}==2 && monkstrain{j,6}==data5)
            p5byB=p5byB+1;
        end
        if(monkstrain{j,1}==2 && monkstrain{j,7}==data6)
            p6byB=p6byB+1;
        end
        j=j+1;
    end
    
    %-----------------------------------------------------------------------
    
    
    %-----------------------------------------------------------------------
    
    ansL=PofL*(p1byL/count_L)*(p2byL/count_L)*(p3byL/count_L)*(p4byL/count_L)*(p5byL/count_L)*(p6byL/count_L);
    ansB=PofB*(p1byB/count_B)*(p2byB/count_B)*(p3byB/count_B)*(p4byB/count_B)*(p5byB/count_B)*(p6byB/count_B);
    
  
    
    if(ansL>ansB)
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
%disp(accuracycount);
disp((accuracycount/no_of_rows)*100);