#include <iostream>
using namespace std;

//Rekrusif => Hampir Sama Seperti Looping
//Rekursif => Memanggil Diri Sendiri //Biasa Digunakan Faktorial
//Rekursif => Method
//Penulisan
void rekursif(int n){
	if(n > 0){
		cout << "ini rekursif" << endl;	
		n--;
		rekursif(n);
	}	
}

int main(){
	rekursif(5);
}
