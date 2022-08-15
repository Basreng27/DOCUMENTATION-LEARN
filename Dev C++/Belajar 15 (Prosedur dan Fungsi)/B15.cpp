#include <iostream>
using namespace std;

/*
	//Method No Parameter
	//Prosedur -> Tidak Memiliki Nilai Kembali //Sub-Program
	void siswa(){
		string nama = "Asep";
		string jk = "Laki";
		
		cout << nama << " Adalah " << jk << endl;
	}
	
	//Fungsi -> Memiliki Nilai Kembali //Sub-Program
	string siswi(){
		string nama = "Asin";
		string jk = "Cwe";
		return(nama+" Adalah " + jk);
	}
	
	//Program Utama
	int main(){
		//Memanggi Prosedur
		siswa();
		
		//Memanggil Fungsi
		cout<<siswi()<<endl;
	}
*/

//===============================================================================================================================================================================

/*
	//method parameter
	//Prosedur -> Tidak Memiliki Nilai Kembali //Sub-Program
	void sisw(string nama,string kelas){
		cout << nama << " Adalah Kelas " << kelas << endl;
	}
	
	//Fungsi -> Memiliki Nilai Kembali //Sub-Program
	string siswa(string nama, string kelas){
		string nama = "Asin";
		string kelas = "Cwe";
		return (nama + " Adalah Kelas " + kelas);
	}
	
	//Program Utama
	int main(){
		string nama, kelas;
		cout << "Nama : "; getline(cin, nama); //"getline()" Isi Lebih Dari 1 Kalimat
		cout << "Kelas : "; getline(cin, kelas);
			
		//Memanggil Fungsi
		cout<<siswa(nama, kelas)<<endl;
		
		//Memanggi Prosedur
		sisw(nama,kelas);
	}
*/

//===============================================================================================================================================================================

	//method case lulus
	bool lulus(int nilai){
		if(nilai > 75){
			return true;
		}else{
			return false;
		}
	}
	
	void data_siswa(string nama, int nilai){
		lulus(nilai);
		cout << "Nama	: " << nama<<endl;
		cout << "Nilai	: " << nilai<<endl;
		cout << "Status 	: ";
		
		if(lulus(nilai)){
			cout << "Lulus" << endl;
		}else{
			cout << "Tidak lulus" << endl;
		}
	}
	
	int main(){
		string nama;
		int nilai;
		
		cout << "Nama : "; 
		getline(cin, nama);
		cout << "Nilai : "; 
		cin >> nilai;
		
		data_siswa(nama, nilai);
}
