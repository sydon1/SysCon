%% 
%{
 Exercise 2 - Part 1
  - Discuss the (in)stability of the system. Make one or more plots
%}

% First, we define the TF
sys = tf([21 19763], [1 -65 8745]);

% We can see the poles have a positive real side, which means they are
% unstable
subplot(2,2,1)
pzmap(sys);
grid on
title('Pole-Zero Map')

% Root Locus
subplot(2,2,2)
rlocus(sys)
title('Root Locus Plot')
grid on

% Step Response
subplot(2,2,3)
step(sys, 1); 
title('Step Response')
grid on

% Impulse Response 
subplot(2,2,4)
impulse(sys, 1); 
title('Impulse Response')
grid on

% Bode Plot
figure(2)
bode(sys);
title('Bode Plot')
grid on

%%
%{
 Exercise 2 - Part 2
  - Build a P controller around the transfer function to stabilize the
    system.
        (a) First discuss which values you consider by using the root locus
            plot and the Bode plot .
        (b) Pick one value and convince us why you have chosen that par-
            ticular value for K.
%}
