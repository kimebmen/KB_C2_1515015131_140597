
/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH02E03.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/
%Nama : R.H. Kimebmen Simbolon
%Kelas : C2 2015
%NIM : 1515015131

predicates %Predikat  adalah  nama  simbolik  untuk  relasi.
  likes(symbol,symbol) - %predikat likes yg bertipe data symbol dan symbol
  nondeterm (o,i),  nondeterm (i,i). %nondeterm digunakan untuk predikat yang tidak determinan atau memiliki nilai bisa lebih dari satu jawaban 

clauses %Klausa adalah suatu ungkapan atau susunan kata yang didalam Prolog dapat berupa fakta atau aturan.
  likes(ellen,reading). %predikat likes yang memiliki argumen = Subjek Ellen, Objek reading. Ellen menyukai membaca
  likes(john,computers). %predikat likes yang memiliki argumen = Subjek John, Objek computers. John menyukai komputer
  likes(john,badminton). %predikat likes yang memiliki argumen = Subjek John, Objek badminton. John menyukai Bulutangkis
  likes(leonard,badminton). %predikat likes yang memiliki argumen = Subjek Leonard, Objek badminton. Leonard menyukai Bulutangkis
  likes(eric,swimming). %predikat likes yang memiliki argumen = Subjek Eric, Objek swimming. Eric menyukai berenang
  likes(eric,reading). %predikat likes yang memiliki argumen = Subjek Eric, Objek reading. Eric menyukai membaca

goal % tujuan akhir
  likes(Person,reading),likes(Person,swimming). %menampilkan orang yang menyukai reading dan swimming
  
  
  