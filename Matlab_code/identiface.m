function [s,conf] = identiface(Q,R,subj,z)
% Q and R are the reduced QR factors of A
%The other input is another image z in vector form


%The first output s is the subject number (not column number) that is 
    %judged to be the most likely match for z,
%The second output conf is a number between 0 (lowest) and 1 (highest) that 
    %indicates the level of confidence in the identification.