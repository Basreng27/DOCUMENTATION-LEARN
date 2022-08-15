#include <iostream>
#include <string>
using namespace std;

int main(){
	//kalimat awal
	string kalimat = "Saya Belajar";
	string kal = "Saya Manusia";
	cout << "Kalimat Awal : " << endl;
	cout << "V-Kalimat : " << kalimat << endl;
	cout << "V-Kal : " << kal << endl;
	
	//swap - pertukaran value dari 3 variabel
	kalimat.swap(kal);
	cout << "Swap : " << endl;
	cout << "V-Kalimat : " << kalimat << endl;
	cout << "V-Kal : " << kal << endl;
	
	//find - mencari kata
	cout << "Find : " << endl;
	int kata_dicari = kalimat.find("sedang");
	cout << "Kata Sedang ada di : " << kata_dicari << endl;
	
	//replace - melepas/merubah kata
	kalimat.replace(5, 7, "Lagi Berlari");
	cout << "Replace : " << kalimat <<endl;
	
	//length() - mencari panjang karakter
	cout << " Jumlah Karakter : " << endl;
	int jml_kar = kalimat.length();
	cout << " Jumlahnya : " << jml_kar;
	
	//mencari jumlah kata
	int jml_kat = 1;
	for(int a = 0; a < jml_kar; a++){
		if(kalimat[a] == ' '){
			jml_kat;
		}
	}
	cout << "Jumlah Kata : " << jml_kat <<endl;
	
	//replace input keyboard
	string kata_ubah;
	cout << "Kata yang akan di ubah : ";
	getline(cin, kata_ubah);
	int jml_kar_ubah = kata_ubah.length();
	int kata_ubah_cari = kalimat.find(kata_ubah);
	if(kata_ubah_cari > -1){
		string pengubah;
		cout << "Ubah dengan : ";
		getline (cin, pengubah);
		kalimat.replace(kata_ubah_cari, jml_kar_ubah, pengubah); 
	}else{
		cout << "Kata Tidak Ada";
	}
	cout << "Kalimat Akhir : " << kalimat << endl;
}
