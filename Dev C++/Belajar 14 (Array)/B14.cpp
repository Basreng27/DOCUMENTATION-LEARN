#include <iostream>
using namespace std;

int main(){
	//Array
	
	/*
		//Deklarasi Array
		int nilai[3] = {1, 2, 3};//Larik dihitung Dari 0
		cout << nilai[0]; //Tampil Angka 1
	
		int nilai[3];//Kalau String Tinggal Pakai Kutip 2
	
		nilai[0] = 1;
		nilai[1] = 2;
		nilai[2] = 3;
		
		cout << nilai[2];//Tampil Angka 3
	*/

//==============================================================================================================================================================================

	/*
		//Array Satu Dimensi Output
		int jarr;
		int angka[] = {3, 4, 5, 6, 7};
		
		jarr = sizeof(angka)/sizeof(*angka);//"sizeof()" Menampilkan Jumlah Index Array
		cout << "Jumlah Array " << jarr << endl;
		
		//Menampilkan Isi Array Menggunakan For
		for(int a = 0; a < jarr; a++){
			cout << angka[a] << endl;
		}
	*/

//==============================================================================================================================================================================

	/*
		//Array Satu Dimensi Output dan input
		//Input Array
		int jarr;
		
		cout << "Masukan Jumlah Array : ";
		cin >> jarr;
		
		int angka[jarr];
		
		//Input
		for (int a = 0; a < jarr; a++){
			cout << "Masukan Array ke-" << a << " : ";
			cin >> angka[a];
		}
		
		//Output / Tampilan
		for(int b = 0; b < jarr; b++){	
		cout << "Array ke-" << b << " : " << angka[b] << endl;
		}
	*/
	
//==============================================================================================================================================================================

	/*
		//Perhitungan Array
		int jitem;
		
		cout << "Total Item = ";
		cin >> jitem;
		
		int harga[jitem];
		int total;
	
		for(int a = 0; a < jitem; a++){
			cout << "Item Ke-" << a << endl;
			cin >> harga[a];
		}
		
		cout << "Jumlah Item " << jitem << endl;
			
		for(int b = 0; b < jitem; b++){
			cout << "Item ke-" << b << "Harganya " << harga[b] << endl;
			total += harga[b];	
		}
		
		cout << "Total " << total << endl;
	*/
	
//==============================================================================================================================================================================

	/*
		//Menghitung Nilai Rata-Rata Array
		int jindex;
		cout << "Masukan Jumlah data ";
		cin >> jindex;
		
		float nilai[jindex], total, rerata;
		
		for(int a = 0; a < jindex; a++){
			cout << "Data ke-" << a << " = ";
			cin >> nilai[a];
			total += nilai[a];
		}
		
		cout << "Nilai total " << total << endl; //Menampilkan Nilai Total
		rerata = total/jindex;
		cout << "Nilai rerata " << rerata; //Menampilkan Nilai rerata
	*/
	
//==============================================================================================================================================================================

	/*
		//Mencari Nilai Terbesar/Terkecil
		int jindex, nilai, mak, min;
		cout << "Banyak Data ";
		cin >> jindex;
		
		for(int a = 1; a <= jindex; a++){	
			cout << "Masukan data ke-" << a << " =";
			cin >> nilai;
			
			if(a == 1){
				min = nilai;
				mak = nilai;
			}else{
				if(nilai > mak){
				mak = nilai;
				}else if(nilai < min){
					min = nilai;
				}
			}
		}

		cout << "Nilai Maks " << mak << endl;
		cout << "Nilai Minim " << min << endl;
	*/
	
//==============================================================================================================================================================================

	/*
		//Sorting Array Manual
		int nilai[] = {2,3,45,5,12,1,23,1};
		int jar = sizeof(nilai)/sizeof(*nilai);
		int temp;
		
		for(int a = 1; a < jar; a++){
			for(int b = 0; b < jar-a;b++){
				if(nilai[b] > nilai[b+1]){
					temp = nilai[b];
					nilai[b] = nilai[b+1];
					nilai[b+1] = temp;
				}
			}
		}
		
		cout << "Hasil " << endl;
		for(int c = 0; c < jar;c ++){
			cout << nilai[c] << endl;
		}
	*/
	
//==============================================================================================================================================================================
	
	/*
		//Sorting Array Input System
		int jindex;
		cout << "Masukan Jumlah Index ";
		cin >> jindex;
		
		int nilai[jindex];
		int temp;
		
		for(int i = 0; i < jindex; i++){
			cout << "Masukan Nilai ke-" << i;
			cin >> nilai[i];
		}
		
		for(int a = 1; a < jindex; a++){
			for(int b = 0; b < jindex-a ;b++){
				if(nilai[b] > nilai[b+1]){
					temp = nilai[b];
					nilai[b] = nilai[b+1];
					nilai[b+1] = temp;
				}
			}
		}
		
		cout<<"Hasil "<<endl;
		for(int c = 0; c < jindex ;c ++){
			cout << nilai[c] << endl;
		}
	*/

//==============================================================================================================================================================================

	/*
		//Clear Screen Setelah Input
		system("cls");
	*/

//==============================================================================================================================================================================

	/*
		//push array
		int max = 5;
		int top = -1;
		string keranjang[max];
		string lanjut;
		
		do{
			system("cls");
			if(top == max-1){
				cout << "Keranjang penuh" << endl;
			}else{
				top++;
				cout << "Masukan Buah : ";
				cin >> keranjang[top];
				cout << "Data " << keranjang[top] << " Berhasil ditambahkan" << endl;
			}
			
			cout << "Isi Kerangnjang saat ini : " << endl;
			
			for(int a = 0; a < top; a++){
				cout << a + 1 << ". " << keranjang[a] <<endl;
			}
			
			cout << "Lanjutkan (y/n) : ";
			cin >> lanjut;
		
		}while(lanjut == "y");
		
		cout << "selesai";
	*/

//==============================================================================================================================================================================

	/*
		//Push Array Input System
		int max = 5;
		int top = -1;
		string keranjang[max];
		string temp;
		int nindex, pilihan;
		
		do{
			cout << "pilihan \n1. tambah data\n2. Ubah\n3. selesai" << endl;
			cout << "pilihan : ";
			cin >> pilihan;
			system("cls");
			
			switch(pilihan){
				case 1:
					if(top == max-1){
						cout << "Keranjang Penuh" << endl;
					}else{
						top++;
						cout << "Masukan Buah : ";
						cin >> keranjang[top];
						cout << "data " << keranjang[top] << " berhasil ditambahkan" << endl;
					}
					break;
					
				case 2 :
					cout << "No data : ";
					cin >> nindex;
					cout << "Buah Yang diganti : " << keranjang[nindex-1] << endl;
					cout << "Buah Baru : ";
					cin >> temp;
					keranjang[nindex-1] = temp;
					break;
					
				case 3 :
					pilihan = 3;
					break;
				
				default:
					cout << "Pilihan Salah" << endl;
					break;
			}
	
			
			cout << "Isi Keranjang Saat Ini : " << endl;
			for(int a = 0; a <= top; a++){
				cout << a + 1 << ". " << keranjang[a] <<endl;
			}
			
		}while(pilihan != 3);
		
		cout << "selesai";
	*/

//==============================================================================================================================================================================

	/*
		//Array Multi Dimensi
		int angka[2]; //Array 1 Dimensi
	 	
		Dimensi Koordinat
			[0]
			[1]
		
		
		int nomor[2][3] = {1,4,6,3,1,3}; //Array Multi Dimensi / Array 2 Dimensi //Jmlh Index -> 2x3 = 6 
		
		Dimensi Koordinat
			[0][0] = 1 => [2] = Baris & [3] = Kolom => 	1 4 6
			[0][1] = 4									3 1 3
			[0][2] = 6
		
			[1][0] = 3 =>[2] Baris & [3] Kolom =>	1 4 6
			[1][1] = 1								3 1 3
			[1][2] = 3
		
		
		cout << nomor[1][2] << endl;
	*/
	
	//Array Multi Dimensi Penggunaan For/Looping
	const int baris = 2, kolom = 3; //"cons" Variabel Konstan Tidak Bisa diubah Ubah
	int nomor[baris][kolom] = {	{1,4,6},
								{3,1,3}};
	
	for(int a = 0; a < baris ;a++){
		for(int b = 0; b < kolom; b++){
			cout << nomor[a][b] << " ";
		}
		cout << endl;
	}





}	

