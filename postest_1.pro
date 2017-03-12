PREDICATES %variabel yg memiliki tipe data
putra(STRING,STRING) %variabel predikat putra yang memiliki tipe data STRING,STRING
ayah(STRING,STRING)%variabel predikat ayah yang memiliki tipe data STRING,STRING
kakek(STRING,STRING)%variabel predikat kakek yang memiliki tipe data STRING,STRING
cucu(STRING,STRING)%variabel predikat cucu yang memiliki tipe data STRING,STRING
buyut(STRING,STRING)%variabel predikat buyut yang memiliki tipe data STRING,STRING
cicit(STRING,STRING)%variabel predikat cicit yang memiliki tipe data STRING,STRING


CLAUSES 
putra("Damar","Doni"). %predikat putra yang memiliki argumen = Subjek Damar, Objek Doni. Damar putra Doni
putra("Doni","Feri"). %predikat putra yang memiliki argumen = Subjek Doni, Objek Feri. Doni putra Feri 
putra("Feri","Gino"). %predikat putra yang memiliki argumen = Subjek Feri, Objek Gino. Feri putra Gino
putra("Gino","Arif"). %predikat putra yang memiliki argumen = Subjek Gino, Objek Arif. Gino putra Arif
putra("Arif","Taufik"). %predikat putra yang memiliki argumen = Subjek Arif, Objek Taufik. Arif putra Taufik

%rule/peraturan
ayah(A,B):-putra(B,A). % A ayah B jika B putra A
kakek(A,B):-ayah(A,C), ayah(C,B).% A kakek B jika A ayah C dan C ayah B
buyut(A,B):-kakek(A,C),ayah(C,B),ayah(A,D),kakek(D,B). % A buyut B jika A kakek C dan C ayah B dan A ayah D dan D kakek B
cucu(A,B):-putra(A,C),ayah(B,C). %A cucu B jika A putra C dan B ayah C 
cicit(A,B):- cucu(A,C),ayah(B,C),kakek(B,D),ayah(C,D). % A cicit B jika A cucu C dan B ayah C dan B kakek D dan C ayah D


GOAL %tujuan terakhir
cicit("Doni",Buyut),nl. % mencari buyutnya Doni

