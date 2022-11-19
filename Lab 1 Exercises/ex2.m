%Matrices
%Fu Wen Tay

% Session 1 exercise 2 
% Place your solution after the appropriate comment. 
% Don't use semicolons at the end of the line, to stop printing in this file 
 
% (a) Set the variable a to all the integers from 1 to 5. 
 a=1:5
 
% (b) Set b to a + 10 
 b=a+10
 
% (c) Form a new 2 by 5 matrix called c, with a on the top row and b underneath. 
 c=[a;b]
 
% (d) Form a new 2 by 10 matrix called d, with c on the left and c + 5 on the right. 
 d=[c c+5]
 
% (e) Form a 10 by 10 matrix called M.  The top two rows of M will be d.   
%     Below that will be d + 20 and below that will be  d + 40, then d + 60, then finally d + 80. 
 M=[d; d+20; d+40; d+60; d+80]
 
% (f) Set x to the 4th element on the 9th row of M. 
 x=M(9,4)
 
% (g) set y to M with subscript 3,7 
 y=M(3,7)
 
% (h)Set z to the 5th  column of M. 
 z=M(:,5)
 
% (i) Set Me to the even numbered columns of M  
 Me=M(:,[2:2:10])
 
% and Mo to the odd columns. 
 Mo=M(:,[1:2:10])

 
% Me should contain all the even numbers and Mo the odd numbers 
 
 
%(j) Multiply Me by Mo using array multiplication. 
 Me.*Mo
 
%(k) Multiply Me by the transpose of Mo using matrix multiplication. 
 Me*Mo'
