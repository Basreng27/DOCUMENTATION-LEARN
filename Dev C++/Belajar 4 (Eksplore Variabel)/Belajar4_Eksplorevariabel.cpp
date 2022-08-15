#include <iostream>
using namespace std;


int main(){
	/*
		int nomor = 12;
		string nama = "Manusia";
		
		cout << "Umur	: " << nomor << endl;
		cout << "Nama	: " << nama << endl;
		cout << endl;
		
		//Penggabungan Variabel Output
		cout<<"Aku adalah "<<nama<<" umurku "<<nomor<<endl;
	*/

//===============================================================================================================================================================================

	
		//Input Dalam Sistem
		string kegiatan;
		string tempat;
		int umur;
	
		//Input 1 Kalimat Saja
		cout << "Dimana \t: ";
		cin >> tempat;
	
		//Input Lebih 1 Kalimat
		cout << "Kegiatan Apa	: ";
		getline(cin, kegiatan); //"getline()" Input 1 Kalimat Lebih
		
		
		cout << "Dimana	: ";
		getline(cin, tempat);
	
		//Penggabungan Variabel Output
		cout << "Umur Saya : ";
		cin >> umur;
		cout << "Saya sedang " << kegiatan << " di " << tempat << " Umur Saya " << umur << endl;
	
}
