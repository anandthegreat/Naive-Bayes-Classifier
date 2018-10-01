count=1;
loop=1;
accuracycount=0;
no_of_rows=size(adultstretch,1);

count_True=0;          %Count No of T in dataset
count_False=0;          %Count No of F in dataset

while(loop<=no_of_rows)     
    temp=adultstretch{loop,5};
    if(temp==1)
     count_True=count_True+1;
    else    
     count_False=count_False+1;
    end 
    loop=loop+1;
end
    

PofT=count_True/no_of_rows;
PofF=count_False/no_of_rows;


loop=1;    

while(loop<=no_of_rows)
    currentclass=adultstretch(loop,1:4);
    charval=adultstretch{loop,5};           %Check whether it is 1,2 or 3
    low=loop-1;
    high=loop+1;
    if(loop==1)
        trainingclass=adultstretch(2:no_of_rows,1:5);
    
    elseif(loop==no_of_rows)
        trainingclass=adultstretch(1:no_of_rows-1,1:5);
        
    else
        trainingclass1=adultstretch(1:low,1:5);              
        trainingclass2=adultstretch(high:no_of_rows,1:5);
        trainingclass=[trainingclass1;trainingclass2];       %TRAINING CLASS
    end
    
   data1=currentclass{1,1};                             %1st column of current class    
   data2=currentclass{1,2};                             %2nd column of current class
   data3=currentclass{1,3};                             %3rd column of current class
   data4=currentclass{1,4};                             %4th column of current class
  

   p1byT=0;
   p2byT=0;
   p3byT=0;
   p4byT=0;
      
   p1byF=0;
   p2byF=0;
   p3byF=0;
   p4byF=0;

   
 
   j=1;
   while(j<=no_of_rows-1)    %for checking for T
 
      if(trainingclass{j,5}==1 && trainingclass{j,1}==data1)
          p1byT=p1byT+1;
      end
      if(trainingclass{j,5}==1 && trainingclass{j,2}==data2)
          p2byT=p2byT+1;
      end
      if(trainingclass{j,5}==1 && trainingclass{j,3}==data3)
          p3byT=p3byT+1;
      end
      if(trainingclass{j,5}==1 && trainingclass{j,4}==data4)
          p4byT=p4byT+1;
      end
      j=j+1;
    
   end
   
   %-----------------------------------------------------------------------
   j=1;
   while(j<=no_of_rows-1)    %for checking for F
      if(trainingclass{j,5}==2 && trainingclass{j,1}==data1)
          p1byF=p1byF+1;
      end
      if(trainingclass{j,5}==2 && trainingclass{j,2}==data2)
          p2byF=p2byF+1;
      end
      if(trainingclass{j,5}==2 && trainingclass{j,3}==data3)
          p3byF=p3byF+1;
      end
      if(trainingclass{j,5}==2 && trainingclass{j,4}==data4)
          p4byF=p4byF+1;
      end
      j=j+1;
   end
   
   %-----------------------------------------------------------------------
%    disp(p1byT);
%    disp(p2byT);
%    disp(p3byT);
%    disp(p4byT);
   ansT=PofT*(p1byT/count_True)*(p2byT/count_True)*(p3byT/count_True)*(p4byT/count_True);
   ansF=PofF*(p1byF/count_False)*(p2byF/count_False)*(p3byF/count_False)*(p4byF/count_False);

   if(ansT>ansF)
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