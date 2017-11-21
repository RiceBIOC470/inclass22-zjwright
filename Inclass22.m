%Inclass 22
close all; clear all
%1. Consider the case of the auto-activating gene that we discussed in class
%today. Make a bifurcation diagram for this system by varying the
%activated transcription rate for three cases - in which 1, 4, or 8 copies of the
%transcripton factor are necessary to activate transciption. Comment on your
figure(1);
hold on;
ku = 0;
%x^2 -kb*x - ku = 0
for kb = 0:0.05:10
    polycoeff = [1 -kb -ku]; 
    rts1 = roots(polycoeff);
    rts1 = rts1(imag(rts1) == 0);
    plot (kb*ones(length(rts1),1),rts1,'r.');
end
xlabel('k_b');
ylabel('Fixed Points - 1');
set(gca, 'FontSize', 20);

figure(2); 
hold on;
ku = 0;
%x^5 -kb*x^4 + x - ku = 0
for kb = 0:0.5:10
    polycoeff = [1 -kb 0 0 1 -ku]; 
    rts4 = roots(polycoeff);
    rts4 = rts4(imag(rts4) == 0);
    plot (kb*ones(length(rts4),1),rts4,'r.');
end
xlabel('k_b');
ylabel('Fixed Points - 4');
set(gca, 'FontSize', 20);

figure(3); 
hold on;
ku = 0;
%x^9 -kb*x^8 + x - ku = 0
for kb = 0:0.5:10
    polycoeff = [1 -kb 0 0 0 0 0 0 1 -ku]; 
    rts8 = roots(polycoeff);
    rts8 = rts8(imag(rts8) == 0);
    plot (kb*ones(length(rts8),1),rts8,'r.');
end
xlabel('k_b');
ylabel('Fixed Points - 8');
set(gca, 'FontSize', 20);

%having only 1 copy doesn't seem to work, but all the others do

% 2. Make a similar diagram for the case of an autorepressing gene in the
% case that 2 copies are need to turn off the gene. 
figure(4);
hold on;
ku = 0;
for kb = 0:0.5:10
    polycoeff = [1 kb 1 -ku];
    rts2 = roots(polycoeff);
    rts2 = rts2(imag(rts2) == 0);
    plot (kb*ones(length(rts2),1),rts2,'r.');
end
xlabel('k_b');
ylabel('Fixed Points - 2');
set(gca, 'FontSize', 20);
