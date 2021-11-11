clear
clf %clears figures
w = logspace(-3,3); % create log-spaced vector for (omega) w from 10^-3 to 10^3
zRC= 1./sqrt(1 + w.^2); % compute the amplitude for an RC filter
zCR = w./sqrt(1 + w.^2); % compute the amplitude for an CR filter

subplot(2,1,1) %In 2 plots by 1 column, this is plot 1
loglog(w, zRC, "b" )
hold on
loglog(w, zCR, "r-" )
ylabel( "Amplitude(Vout/Vin)" )
xlabel( "Angular frequency(rad/cycle)" )
legend( "z_{RC}" , "z_{CR}" )

subplot(2,1,2) %In 2 plots by 1 column, this is plot 2
semilogx(w, atan(w)*57.3, "b" )
hold on
semilogx(w, (3.14/2 - atan(w))*57.3, "r-" )
ylabel( "phase(degrees)" )
xlabel( "Angular frequency(rad/cycle)" )
legend( "psi_{RC}" , "psi_{CR}" )