count=1;
loop=1;
accuracycount=0;
no_of_rows=size(balancescale,1);

count_L=0;          %Count No of L in dataset
count_B=0;          %Count No of B in dataset
count_R=0;          %Count No of R in dataset
while(loop<=no_of_rows)     %Loop to count L,B,R
    temp=balancescale(loop,1);
    if(temp==7)
        count_L=count_L+1;
    elseif(temp==8)
        count_B=count_B+1;
    else
        count_R=count_R+1;
    end
    loop=loop+1;
end

PofL=count_L/no_of_rows;        %Probability of Occurence of L
PofB=count_B/no_of_rows;
PofR=count_R/no_of_rows;
loop=1;

while(loop<=no_of_rows)
    currentclass=balancescale(loop,2:5);
    charval=balancescale(loop,1);           %Check whether it is L,B or R,i.e 7,8 or 9
    low=loop-1;
    high=loop+1;
    if(loop==1)
        trainingclass=balancescale(2:no_of_rows,1:5);
        
    elseif(loop==no_of_rows)
        trainingclass=balancescale(1:no_of_rows-1,1:5);
        
    else
        trainingclass1=balancescale(1:low,1:5);
        trainingclass2=balancescale(high:no_of_rows,1:5);
        trainingclass=[trainingclass1;trainingclass2];       %TRAINING CLASS
    end
    data1=currentclass(1,1);                             %1st column of current class
    data2=currentclass(1,2);                             %2nd column of current class
    data3=currentclass(1,3);                             %3rd column of current class
    data4=currentclass(1,4);                             %4th column of current class
    
    
    p1byL=0;
    p2byL=0;
    p3byL=0;
    p4byL=0;
    
    p1byB=0;
    p2byB=0;
    p3byB=0;
    p4byB=0;
    
    p1byR=0;
    p2byR=0;
    p3byR=0;
    p4byR=0;
    
    j=1;
    while(j<=no_of_rows-1)    %for checking for L
        
        if(trainingclass(j,1)==7 && trainingclass(j,1)==data1)
            p1byL=p1byL+1;
        end
        if(trainingclass(j,1)==7 && trainingclass(j,2)==data2)
            p2byL=p2byL+1;
        end
        if(trainingclass(j,1)==7 && trainingclass(j,3)==data3)
            p3byL=p3byL+1;
        end
        if(trainingclass(j,1)==7 && trainingclass(j,4)==data4)
            p4byL=p4byL+1;
        end
        j=j+1;
    end
    
    %-----------------------------------------------------------------------
    j=1;
    while(j<=no_of_rows-1)    %for checking for B
        if(trainingclass(j,1)==8 && trainingclass(j,1)==data1)
            p1byB=p1byB+1;
        end
        if(trainingclass(j,1)==8 && trainingclass(j,2)==data2)
            p2byB=p2byB+1;
        end
        if(trainingclass(j,1)==8 && trainingclass(j,3)==data3)
            p3byB=p3byB+1;
        end
        if(trainingclass(j,1)==8 && trainingclass(j,4)==data4)
            p4byB=p4byB+1;
        end
        j=j+1;
    end
    
    %-----------------------------------------------------------------------
    j=1;
    while(j<=no_of_rows-1)    %for checking for R
        if(trainingclass(j,1)==9 && trainingclass(j,1)==data1)
            p1byR=p1byR+1;
        end
        if(trainingclass(j,1)==9 && trainingclass(j,2)==data2)
            p2byR=p2byR+1;
        end
        if(trainingclass(j,1)==9 && trainingclass(j,3)==data3)
            p3byR=p3byR+1;
        end
        if(trainingclass(j,1)==9 && trainingclass(j,4)==data4)
            p4byR=p4byR+1;
        end
        j=j+1;
    end
    
    %-----------------------------------------------------------------------
    
    ansL=PofL*(p1byL/count_L)*(p2byL/count_L)*(p3byL/count_L)*(p4byL/count_L);
    ansB=PofB*(p1byB/count_B)*(p2byB/count_B)*(p3byB/count_B)*(p4byB/count_B);
    ansR=PofR*(p1byR/count_R)*(p2byR/count_R)*(p3byR/count_R)*(p4byR/count_R);
    naivechar=0;
    if(ansL>=ansB && ansL>=ansR)
        naivechar=7;
    elseif(ansB>=ansL && ansB>=ansR)
        naivechar=8;
    elseif(ansR>=ansL && ansR>=ansB)
        naivechar=9;
    end
    if(charval==naivechar)
        accuracycount=accuracycount+2;
    end
    loop=loop+1;
end

disp((accuracycount/no_of_rows)*100);