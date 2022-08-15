#include <iostream>
using namespace std;

/*
	//struct
	struct nilai{
		double mtk;
		double indo;
		double ing;
		double ipa;
	};
	
	int main(){
		//Pemanggilan Struct
		nilai acep;
		acep.mtk = 88; //isi nilai
		acep.indo = 88;
		acep.ing = 88;
		acep.ipa = 88; //
		
		cout << "Nilai mtk :" <<acep.mtk << endl; //pemanggilan hasil
		cout << "Nilai Indo :" <<acep.indo << endl;
		cout << "Nilai Ing :" <<acep.ing << endl;
		cout << "Nilai Ipa :" <<acep.ipa << endl;	
	}
*/

//==============================================================================================================================================================================

/*
	//Struct didalam Struct / Nesting Struct
	struct guru{
		string nama;
		int umur;
	};
	
	struct mapel{
		string mp;
		double kkm;
		string status;
		
		//Panggil Struct Guru
		guru guru1, guru2;
	};
	
	int main(){
		//Pemanggilan Struct
		guru guru1, guru2;
		mapel mapel1;
		
		guru1.nama ="Adi";
		guru1.umur =22;
	
		guru2.nama ="Akil";
		guru2.umur =25;	
		
		mapel1.guru1 = guru1;	
		mapel1.guru2 = guru2;	
		
		mapel1.mp = "Fisika";
		mapel1.kkm = 70;
		mapel1.status = "Wajib";
		
		cout << "nama mapel " << mapel1.mp;
		cout << "KKM " << mapel1.kkm;
		cout << "status " << mapel1.status;
		cout << "nama guru 1 " << mapel1.guru1.nama;
		cout << "Umur guru 1 " << mapel1.guru1.umur;
		cout << "nama guru 2 " << mapel1.guru2.nama;
		cout << "Umur guru 2 " << mapel1.guru2.umur;
	}
*/

//==============================================================================================================================================================================

/*
	//Enumeration / Struct Yang Bersifat Permanent/Pasti
	enum hari{
		senin, selasa, rabu, kamis, jumat, sabtu, minggu //Langsung Saja Tidak Usah Pakai Tipe Data	
	};
	
	int main(){
		hari sekarang, jadwal;
		
		sekarang = kamis;
		jadwal = senin;
		
		int selisih = jadwal - sekarang;
		
		if(sekarang < jadwal){
			cout << selisih;	
		}else if(sekarang > jadwal){
			cout << selisih* - 1 << " Hari lalu";
		}else{
			cout << "Hari Ini";
		}
	}
*/

//==============================================================================================================================================================================

/*
	//input struct
	struct guru{
		string nama;
		int umur;
	};
	
	struct mapel{
		string mp;
		int kkm;
		
		guru guru1;
	};
	
	int main(){
		mapel mapel1;
		
		cout << "Nama Mapel	: ";
		cin >> mapel1.mp;
		cout << "KKM	: ";
		cin >> mapel1.kkm;
		cout << "Nama Guru	: ";
		cin >> mapel1.guru1.nama;
		cout << "Umur 	: ";
		cin >> mapel1.guru1.umur;
		
		cout << " Nama Mapel 	: " << mapel1.mp << endl;
		cout << " KKM 	: " << mapel1.kkm << endl;
		cout << " Nama Guru 	: " << mapel1.guru1.nama << endl;
		cout << " umur 	: " << mapel1.guru1.umur << endl;
	}
*/

//==============================================================================================================================================================================

/*
	//Array Pada Struct
	struct mhs{
		string nim;
		string nama;
	};
	
	int main(){
		mhs mhs1[5];
		
		for(int a = 0; a < 5; a++){
			cout << "Nim 	: ";
			cin >> mhs1[a].nim;
			
			cout << "Nama : ";
			cin >> mhs1[a].nama;
		}
		
		cout << "Daftar Mahasiswa";
		
		for(int b = 0; b < 5; b++){
			cout << "Nim : " << mhs1[b].nim << endl;
			cout << "Nama : " << mhs1[b].nama << endl;
		}
	}
*/

//==============================================================================================================================================================================

//Function In Struct And Array
struct mhs{
	string nim;
	string nama;
	int nilai;
};

char grade(int n){
	if(n > 85){
		return 'A';
	}else if (n > 75 && n <= 85){
		return 'B';
	}else if (n > 65 && n <= 75){
		return 'C';
	}else if (n > 45 && n <= 65){
		return 'D';
	}else{
		return 'E';
	}
}

int main(){
	int jml;
	cout << "Jumlah mhs : ";
	cin >> jml;
	
	mhs mhs1[jml];
	
	for(int a = 0; a < jml; a++){
		cout << "Nim : ";
		cin >> mhs1[a].nim;
		
		cout << "Nama : ";
		cin >> mhs1[a].nama;
		
		cout << "Nilai : ";
		cin >> mhs1[a].nilai;
	}
	
	cout << "Daftar Mahasiswa" << endl;
	
	for(int b=0; b<jml;b++){
	cout << "Nim : " << mhs1[b].nim << endl;
	cout << "Nama : " << mhs1[b].nama << endl;
	cout << "Nilai : " << mhs1[b].nilai << endl;
	cout << "Grade : " << grade(mhs1[b].nilai) <<endl;
	}
}
