nowarnings %Untuk mengabaikan warning, jadi jika ada peringatan akan tetap menjalankan program

PREDICATES %section ini untuk mendeklarasikan variabel atau predicate dengan suatu tipe data yang ada di dalam parameternya
	%nondeterm = nondeterm digunakan untuk predikat yang tidak determinan atau memiliki nilai bisa lebih dari satu jawaban 
	nondeterm header() %predikat header
	nondeterm ambil(STRING,STRING,STRING) %predikat ambil dengan semua tipe data parameternya adalah STRING
	nondeterm matakuliah(STRING) %predikat matakuliah dengan tipe data parameternya STRING
	
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
  	write("\t ||==================================Postest_3=================================||"),nl,nl,
  	write("Press Any Key to Continue..."),nl,nl,	
  	
	readchar(Z),Z='Ù'.  /*readchar berguna untuk menerima inputan ketika program sedang berjalan/running, Z adalah variabel yang
	baru dideklarasikan dan berfungsi sebagai variabel penerima inputan. Jika inputan sesuai dengan yang ditetapkan ('Ù') 
	maka program akan menampilkan output atau GOALnya Yes saja karena betul tapi tidak menampilkan GOAL sesuai predicates dan clauses.
	Tetapi jika inputan tidak sesuai seperti yang ditetapkan('Ù') maka program akan menampilkan GOAL sesuai dengan clauses dan predicates.
	*/	
/*****************************************************************************************************************************************************************/	

/*============Untuk membuat fakta bahwa mahasiswa yang mengambil matakuliah dan mendapatkan nilai ujian dari matakuliah tersebut===========================*/

	ambil("Irfan","IntelejensiBuatan","A").
	ambil("Komeng","IntelejensiBuatan","D").
	ambil("Dati","IntelejensiBuatan","C").
	ambil("Fatima","IntelejensiBuatan","B").
	ambil("Maspion","IntelejensiBuatan","C").
	
	ambil("Ricky","PDE","E").
	ambil("Embang","PDE","A").
	ambil("Salmin","PDE","D").
	ambil("Vina","PDE","B").
	ambil("Sondang","PDE","C").
	
	ambil("Pamuji","SistemOperasi","D").
	ambil("Luki","SistemOperasi","E").
	ambil("Sadek","SistemOperasi","B").
	ambil("Yusida","SistemOperasi","A").
	ambil("Eka","SistemOperasi","A").
/*==========================================================================================================================================================*/	

/*####################### Untuk membuat fakta yang menyatakan nama - nama matakuliah############################*/
	matakuliah("IntelejensiBuatan").
	matakuliah("PDE").
	matakuliah("SistemOperasi").
/*###############################################################################################################*/	


GOAL %tujuan akhir dari program, yang akan menampilkan output sesuai dengan data - data yang ada di predicates dan clauses
	header;	%untuk menampilkan header atau judul program
	
	write("Tugas A"),nl, %sebagai penanda bahwa ini adalah tugas yang a
	ambil(Nama_Mahasiswa_Yang_Mengambil_IntelejensiBuatan,"IntelejensiBuatan",_);	%menampilkan nama - nama mahasiswa yang mengikuti matakuliah Intelejensi Buatan dengan mengabaikan nilai yang didapat oleh mahasiswa.
	write("\n"),% new line atau enter
	
	write("Tugas B"),nl, %sebagai penanda bahwa ini adalah tugas yang b
	ambil(Nama,MK_TidakLulus,Nilai),Nilai>"C"; % menampilkan semua nama mahasiswa yang tidak lulus, dimana nilai yang didapat oleh mahasiswa dibawah C (D dan E).
	write("\n"), % new line atau enter
	
	write("Tugas C"),nl, %sebagai penanda bahwa ini adalah tugas yang c
	ambil(Nama,MK_Lulus,Nilai),Nilai<="C"; %menampilkan semua nama mahasiswa yang lulus, dimana nilai yang didapat oleh mahasiswa diatas sama dengan C(C,B, dan A).
	write("\n"), % new line atau enter
	
	write("Tugas D"),nl, %sebagai penanda bahwa ini adalah tugas yang d		
	matakuliah(MataKuliah); % menampilkan seluruh nama matakuliah yang diajarkan.
	write("\n"), % new line atau enter
		
	write("Tugas E"),nl, %sebagai penanda bahwa ini adalah tugas yang e		
	ambil(NamaMahasiswa,_,_); % menampilkan seluruh nama mahasiswa yang ada.
	write("\n").	% new line atau enter
