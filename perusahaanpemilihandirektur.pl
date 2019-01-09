pria(suwilo).
pria(jodi).
pria(ferdinan).
pria(suwardi).
pria(dani).
pria(widodo).
pria(wisnu).
pria(boni).
pria(erianto).

putri(mirna).
putri(kandi).
putri(cindi).
putri(widya).
putri(jamila).
putri(winarni).

ortu(suwilo,jodi).
prtu(suwilo,mirna).
ortu(suwilo,ferdina).
ortu(jodi,kandi).
ortu(jodi,suwardi).
ortu(kandi,wisnu).
ortu(suwandi,widya).
ortu(suwandi,boni).
ortu(mirna,dani).
ortu(ferdinan,cindi).
ortu(ferdinan,widodo).
ortu(cindi,erianto).
ortu(cindi,jamila).
ortu(widodo,winarmi).


anak(Y,X):-ortu(X,Y).
anak_laki2(X,Y):-ortu(Y,X),pria(X).
anak_perempuan(X,Y):-ortu(Y,X),putri(X).

keturunan(X,Y):-ortu(X,Y).
keturunan(X,Y):-ortu(X,Z),keturunan(Z,Y).

penerus(X,Y):-anak(X,Y),pria(X).
penerus(X,Y):-anak(X,Z),penerus(Z,Y)pria(X).
