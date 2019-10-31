G = tf([40], [1 0 -40])
rltool(G)

C2 = tf(8.46*[.047 1],[1])

F = feedback(C2*G,1)
rltool(F)

C1 = tf(1e-09*[1 .86],[1 0])

H = feedback(C1*F,1)
rltool(H)
