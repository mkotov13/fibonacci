% Homework 4 Problem 5          February 19th
% Maksim Kotov

clear; % clear all variables from memory.
clf;  % clear all figures (graphs) from memory.
% Thanks for the intro, Pat

N=1476;  % define a parameter N which will be used later in the script to describe the size of an array

f=zeros(N,1);  % make an N-by-1 matrix called f, whose entries are all zero. 
% Later on, i'm going to store the Fibonacci numbers in here

f(1)=1; % define the first two numbers in the Fibonacci 
f(2)=1;

% initiate a FOR loop that generates all of the numbers based on the recursive definition
for i=3:N 
    f(i)=f(i-2)+f(i-1);
end

r=zeros(N-1,1); % make an (N-1)-by-1 matrix that will later on store the values of the ratio F(n+1)/F(n)
% this matrix is defined up to (N-1) because if we run it up to N, the Nth
% value would be 0 divided by F(N), since the F matrix only goes up to N
% and that way the F(N+1) is not defined

% initiate a FOR loop that calculates the values of the ratio F(n+1)/F(n)
for j=1:N-1 % define a new counter j
    r(j)=f(j+1)/f(j);   
end

goldenratio=1.6180; % store the value of the golden ratio to make it easier to call it up later

figure(1)
hold on % Keep the graph of f in the figure
% Plot horizontal asymptote. When the number N that represents the size of
% the matrix is too big, you cannot see the asymptote behind all of the
% data point. Choose N<20 to clearly see it
plot([1 N-1], [goldenratio goldenratio],'g')
plot(r, ':r*')  % plot the ratio as a function of n
title('Ratio between consecutive Fibonacci')  %The title for this plot
xlabel('Fibonacci numbers')  % the labels are pretty self-explanatory
ylabel('F(n+1)/F(n)')
hold off

d=zeros(N-1,1); % make an (N-1)-by-1 matrix that will later on store 
% the difference between the asymptote and the data points of the ratio

% initiate a FOR loop that calculates the distance between the data points
% and the asymptote
for k=1:N-1
    d(k)=goldenratio-r(k); % remove the semicolon to actually have the numbers printed out in the command window
end


% Answering the questions:

% 1) the largest number I can go up to is F(1476)=1.3070e+308.
% At N=1477 matlab prints the 1477th Fibonacci number as infinity

% 2) See the code above for the asymptote and the difference between
% the asymptote and the data points. hope that counts as an interesting
% addition

