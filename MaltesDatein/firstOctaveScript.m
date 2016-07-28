%% Initialization
clear ; close all; clc

%% ==================== Part 1: Basic Function ====================
% Complete warmUpExercise.m 
fprintf('Running calculation of Cost function with theta [0 1] \n');





function retval = hox (th1,th2, xi)
  retval = th1 + th2 * xi;
endfunction

function retVal = hoxVectorized (theta, dMatrix ) 
	retVal =  dMatrix * theta' ;
endfunction	

function retVal = j (th0, th1, x, y)
	m = length (x);
	retVal = 0;
	for i = 1:m
		retVal = retVal + hox(th0, th1, x(i) ) - y(i);
	endfor 
	retVal = (1 / (2 * m)) * retVal^2;
endfunction

function retVal = j2 (theta, dMatrix, y)
	m = length(dMatrix);	
dMatrix * theta';
y
	retVal = 1/(2*m) * (sum((dMatrix * theta' - y').^2)(:,1)) ;
endfunction

%j2([0 1],[1 3 ; 1 2 ; 1 4 ; 1 0], [4 1 3 1])


hox(-1, 2, 6)



