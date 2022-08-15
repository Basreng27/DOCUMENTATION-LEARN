#include <iostream>
using namespace std;

/*
	//Pointer
	int main(){
		int a = 10;
		int b;
		int *c = &a;
		int d = *a;
		
		//Reference * -> Menyimpan Alamat Dari Variabel dimemori
		//Dereference & -> Mengetahui Alamat Dari Variabel
		cout << "Alamat A : " << &a << endl;
		cout << "Alamat B : " << &b << endl;
		cout << "C : " << c << endl;
		cout << "D : " << d << endl;
	}
*/

//Fungsi Dengan Pointer
void nilai(int *y){
	cout << "Alamat Parameter : " << y << endl;
	cout << "Nilai Parameter : " << *y << endl;
}

//Bisa dipakai Untuk Menghitung Kuadrat
void kuadrat(int *z){
	*z = *z * *z;
}

int main(){
	int x;
	cout << "Masukan Angka";
	cin >> x;
	
	nilai(&x);
	
	cout << "Angka : " << x << endl;
	kuadrat(&x);
	cout << "Kuadrat : " << x << endl;
}
