#include <iostream>
using namespace std;

int main(){
	//Looping
	/*
		for
		while
		do - while
		foreach - array
	*/
	
	/*
		//Looping
		cout<<1<<endl;
		cout<<1<<endl;
		cout<<1<<endl;
		cout<<1<<endl;
		cout<<1<<endl;
	*/
	
//===============================================================================================================================================================================
	
	/*
		//looping for
		int awal, akhir;
		cout << "Awal : ";
		cin >> awal;
		cout << "Akhir : ";
		cin >> akhir;
		
		//for input
		for(int x = awal; x <= akhir; x++){
			cout << "Angka " << x << endl;
		}
		
		//for ditentukan
		for (int x = 1; x <= 5; x++){
			cout << "Angka " << x <<endl;
		}
	*/

//===============================================================================================================================================================================

	/*
		//Looping while
		int awal, akhir;
		
		cout << "Awal : ";
		cin >> awal;
		cout << "Akhir : ";
		cin >> akhir;
		
		int z = awal;
		
		while(z <= akhir){
			cout << "Angka " << z << endl;
			z++;
		}
	*/
	
//===============================================================================================================================================================================

	//Looping do - while
	int L, p, l;
	string ulang;
	
	do{
		system("cls"); //Menghapus History Sebelumnya
		cout << "Masukan Panjang : ";
		cin >> p;
		cout << "Masukan Lebar : ";
		cin >> l;
		
		L = p*l;
		
		cout << "Luas Adalah " << L << endl;
		cout << "Ulang Perhitungan ? (y/n)";
		cin >> ulang;
	}while(ulang == "y");
}
