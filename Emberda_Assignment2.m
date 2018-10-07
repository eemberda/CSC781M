%**************************************************************
%CSC781M Assignment #2
%De La Salle University
%by: Eric John G. Emberda
%October 7, 2018
%**************************************************************
%This program demonstrates basic Octave programming.
%To run this program, type the following in the Octave 
%Command Window and press enter:
%run("/path/to/the/.m_file")
%**************************************************************


%PART I Generating signals and plotting them 
% 1. Generate a series of values starting from -100 to 100, in increments of 4. 
%    Name it as variable x. 
disp "Setting x value: -100 to 100, interval=4..."
x=[-100:4:100]
disp "Setting y values: 100 to -100, interval=4..."

% 2. Create a new variable y with all of the elements reversed.
y=flip(x)

% 3. Perform element-by-element multiplication of x and y (also called the 
% Hadamard product of x and y). Name it as variable z. 
disp "Performing Hadamard product of x and y and storing it to z..."
z=x.*y

% 4. Plot x, y, and z with graph on top of the other. 
%    Label your graphs properly
disp "Plotting the values of x, y, and z in one Figure using subplot..."
figure(1)
subplot(3,1,1)
plot(x,"r")
title("X")
subplot(3,1,2)
plot(y,"g")
title("Y")
subplot(3,1,3)
plot(z,"b")
title("Z")
axis("tight");

%PART II Plotting functions and finding the absolute maximum and 
%        absolute minimum in Octave

% 1. Plot the function y(x) = x3 - 5x2 -4x + 20 for values of x ranging from 
%    -5 to 5, in increments of 0.5.
disp "Plotting the function y(x) = x3 - 5x2 -4x + 20 for values of x ranging from -5 to 5, in increments of 0.5"
x=[-5:0.5:5];
y=x.^3-5.*x.^2-4.*x+20
disp x
disp y

% 2. From the graph, what are the values of x where the maximum, minimum and 
%    zeros of the function y(x) occur?
disp "Getting the indices of the maximum, minimum, and zero values of the graph..."
figure(2)
plot(y,"g")
max_index=find(y==max(y))
min_index=find(y==min(y))
zero_index=find(y==0) % 3. Automatically determine the zeros of y(x). 


%PART III Create an m-file that takes a numeric value N, and returns the 
%         first N elements of a Fibonacci series 
disp "Computing for Fibonacci series..."
N=input('Enter a value N: ');
fib = ones (1, N);
for i = 3:N
  fib(i) = fib(i-1) + fib(i-2);
endfor
disp(fib);
