count=1;
loop=1;
accuracycount=0;
no_of_rows=size(shuttlelandingcontrol,1);

count_auto=0;          
count_noauto=0;          
         
while(loop<=no_of_rows)     
    temp=shuttlelandingcontrol(loop,1);
    if(temp==1)
     count_auto=count_auto+1;
    else 
     count_noauto=count_noauto+1;
    end 
    loop=loop+1;
end
% disp(count_auto);
% disp(count_noauto);
Pofauto=count_auto/no_of_rows;
Pofnoauto=count_noauto/no_of_rows;

loop=1;    

while(loop<=no_of_rows)
    currentclass=shuttlelandingcontrol(loop,2:7);
    charval=shuttlelandingcontrol(loop,1);           %Check whether it is 1,2 or 3
    low=loop-1;
    high=loop+1;
    if(loop==1)
        trainingclass=shuttlelandingcontrol(2:no_of_rows,1:7);
    
    elseif(loop==no_of_rows)
        trainingclass=shuttlelandingcontrol(1:no_of_rows-1,1:7);
        
    else
        trainingclass1=shuttlelandingcontrol(1:low,1:7);              
        trainingclass2=shuttlelandingcontrol(high:no_of_rows,1:7);
        trainingclass=[trainingclass1;trainingclass2];       %TRAINING CLASS
    end
    
   data1=currentclass(1,1);                             %1st column of current class    
   data2=currentclass(1,2);                             %2nd column of current class
   data3=currentclass(1,3);                             %3rd column of current class
   data4=currentclass(1,4);                             %4th column of current class
   data5=currentclass(1,5);
   data6=currentclass(1,6);
  

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
   while(j<=no_of_rows-1)    %for checking for L
 
      if(trainingclass(j,1)==1 && trainingclass(j,1)==data1)
          p1byL=p1byL+1;
      end
      if(trainingclass(j,1)==1 && trainingclass(j,2)==data2)
          p2byL=p2byL+1;
      end
      if(trainingclass(j,1)==1 && trainingclass(j,3)==data3)
          p3byL=p3byL+1;
      end
      if(trainingclass(j,1)==1 && trainingclass(j,4)==data4)
          p4byL=p4byL+1;
      end
      
      if(trainingclass(j,1)==1 && trainingclass(j,5)==data5)
          p5byL=p5byL+1;
      end
      
      if(trainingclass(j,1)==1 && trainingclass(j,6)==data6)
          p6byL=p6byL+1;
      end
      j=j+1;
    
   end
   
   %-----------------------------------------------------------------------
   j=1;
   while(j<=no_of_rows-1)    %for checking for B
      if(trainingclass(j,1)==2 && trainingclass(j,1)==data1)
          p1byB=p1byB+1;
      end
      if(trainingclass(j,1)==2 && trainingclass(j,2)==data2)
          p2byB=p2byB+1;
      end
      if(trainingclass(j,1)==2 && trainingclass(j,3)==data3)
          p3byB=p3byB+1;
      end
      if(trainingclass(j,1)==2 && trainingclass(j,4)==data4)
          p4byB=p4byB+1;
      end
      if(trainingclass(j,1)==2 && trainingclass(j,5)==data5)
          p5byB=p5byB+1;
      end
      if(trainingclass(j,1)==2 && trainingclass(j,6)==data6)
          p6byB=p6byB+1;
      end
      j=j+1;
   end
   
   %-----------------------------------------------------------------------
  
  
   ansL=Pofauto*(p1byL/count_auto)*(p2byL/count_auto)*(p3byL/count_auto)*(p4byL/count_auto)*(p5byL/count_auto)*(p6byL/count_auto);
   ansB=Pofnoauto*(p1byB/count_noauto)*(p2byB/count_noauto)*(p3byB/count_noauto)*(p4byB/count_noauto)*(p5byB/count_noauto)*(p6byB/count_noauto);
   naivechar=0; 
   if(ansL>ansB)
       naivechar=1;
   else
       naivechar=2;
   end   

   if(charval==naivechar)
       accuracycount=accuracycount+1;
   end
   loop=loop+1;
end 
%disp(accuracycount);
disp((accuracycount/no_of_rows)*100);  