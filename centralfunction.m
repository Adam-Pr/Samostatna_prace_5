% genvect(173731, 255, 'test1.mat')
vect = load('test1.mat')

sig=qam32modul(vect.vect)
sigN=addnoise(sig, 9)
sigD=qam32demmodul(sigN)


figure(1)
plot(sig)
grid on
xlim ([-7 7])
ylim ([-7 7])
xlabel('I')
ylabel('Q')

figure(2)
plot(sigN)
grid on
xlim ([-7 7])
ylim ([-7 7])
xlabel('I')
ylabel('Q')

figure(3)
scatterplot (sigD, 1,0, 'b *' );
grid on
xlim ([-7 7])
ylim ([-7 7])
xlabel('I')
ylabel('Q')
