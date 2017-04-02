nowarnings %Untuk mengabaikan warning, jadi jika ada peringatan akan tetap menjalankan program

PREDICATES %section ini untuk mendeklarasikan variabel atau predicate dengan suatu tipe data yang ada di dalam parameternya
	%nondeterm = nondeterm digunakan untuk predikat yang tidak determinan atau memiliki nilai bisa lebih dari satu jawaban 
	nondeterm header() %predikat header
	nondeterm ukuran(symbol, symbol)
	nondeterm warna(symbol,symbol)
	nondeterm gelap(symbol)
	nondeterm terang(symbol)
	nondeterm omnivora(symbol)
	
	
CLAUSES %Klausa adalah suatu ungkapan atau susunan kata yang didalam Prolog dapat berupa fakta atau aturan.
/*note : 
- nl adalah new line, untuk membuat baris baru
- write untuk menampilkan setiap data yang telah diketik yang ada didalam tanda kurung "()"
- \t untuk memberikan suatu jarak sepanjang TAB

 */
/************************************************************** Untuk membuat header atau judul dari program*******************************************************/
  header:-
  	write("\t ||===========================================================================||"),nl,
  	write("\t||===================== R.H. Kimebmen Simbolon (1515015131) ======================||"),nl,
  	write("\t ||==================================Postest_5=================================||"),nl,nl,
  	write("Press Any Key to Continue..."),nl,nl,	
  	
	readchar(Z),Z='Ù'.  /*readchar berguna untuk menerima inputan ketika program sedang berjalan/running, Z adalah variabel yang
	baru dideklarasikan dan berfungsi sebagai variabel penerima inputan. Jika inputan sesuai dengan yang ditetapkan ('Ù') 
	maka program akan menampilkan output atau GOALnya Yes saja karena betul tapi tidak menampilkan GOAL sesuai predicates dan clauses.
	Tetapi jika inputan tidak sesuai seperti yang ditetapkan('Ù') maka program akan menampilkan GOAL sesuai dengan clauses dan predicates.
	*/	
/*****************************************************************************************************************************************************************/	

/*============fakta===========================*/
ukuran(sapi, besar).
ukuran(jerapah, besar).
ukuran(anjing, kecil).
ukuran(kucing, kecil).

warna(sapi, putih).
warna(kucing, hitam).
warna(anjing, abuabu).
warna(jerpah, coklat).

gelap(Z):-warna(Z, hitam).
gelap(Z):-warna(Z,coklat).
gelap(Z):-warna(Z,abuabu).

terang(Z):-warna(Z,putih).
omnivora(Z):-gelap(Z), ukuran(Z,kecil).

GOAL %tujuan akhir dari program, yang akan menampilkan output sesuai dengan data - data yang ada di predicates dan clauses
%gelap(Z), ukuran(Z,besar), write(Z).	
omnivora(Z).







