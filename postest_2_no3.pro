PREDICATES

PREDICATES
	nondeterm kakek(STRING,STRING)
	nondeterm ayah(STRING,STRING)
	nondeterm ibu(STRING,STRING)
	nondeterm pria(STRING)
	nondeterm wanita(STRING)
	nondeterm istri(STRING,STRING)
	nondeterm anak(STRING,STRING)
	nondeterm adik(STRING,STRING)
	nondeterm cucu(STRING,STRING)
	nondeterm usia(STRING,INTEGER)
	

CLAUSES
	anak("Jhon","James"). 		% Jhon adalah anak James
	anak("James","Peter"). 		% James adalah anak Peter
	anak("Sue","Ann"). 		% Sue adalah anak Ann
	istri("Mary","Peter"). 		% Mary adalah istri Peter
	istri("Ann","James"). 		% Ann adalah istri James
	pria("Jhon"). 			% pria bernama Jhon
	pria("James").			% pria bernama James
	pria("Peter").			% pria bernama Peter
	wanita("Mary").			% wanita bernama Mary
	wanita("Sue").			% wanita bernama Sue
	wanita("Ann").			% wanita bernama Ann
	usia("Jhon",10).		% Jhon berusia 10
	usia("Sue",13).			% Sue berusia 13
 
ayah(A,B):-anak(B,A).				% A adalah ayah dari B jika B adalah putra dari A
kakek(A,B):-ayah(A,C), ayah(C,B).		% A adalah kakek dari B jika A adalah ayah dari C dan C adalah ayah dari B
ibu(A,B):-istri(B,C), anak(A,C).		% A adalah ibu dari B jika B adalah istri dari C dan A adalah anak dari C
cucu(A,B):-anak(A,C), anak(C,B).		% A adalah cucu dari B jika A adalah anak dari C dan C adalah anak dari B
cucu(A,B):-anak(A,C), istri(C,D), anak(D,B).	% A adalah cucu dari B jika A adalah anak dari C dan C adalah istri dari D dan D adalah anak dari B
adik(A,B):-usia(A,C), usia(B,D), C<D.		% A adalah adik dari B jika A berusia C dan B berusia D dan C lebih kecil dari D
 

GOAL
cucu(A,B); 	% ada 2 solusi, yaitu Jhon dan Sue merupakan cucu Peter
ibu(A,B);	% ada 2 solusi, yaitu James ibunya adalah Mary, dan Jhon ibunya adalah Ann.
adik(A,B);	% berdasarkan clause menghasilkan bahwa Jhon adalah adik Sue, karena Ann dan James adalah suami istri dan usia Jhon lebih kecil dari Sue.
kakek(A,B);	% berdasarkan clause bahwa Peter adalah kakek dari Jhon
usia(A,10).	% menghasilkan yang berusia 10 adalah Jhon


