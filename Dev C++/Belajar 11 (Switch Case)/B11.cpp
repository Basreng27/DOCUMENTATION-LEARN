#include <iostream>
using namespace std;

int main(){
	int pil;
	string jkel;
	
	cout << "Pilih Satu : " << endl;
	cout << "1. Laki - Laki \n2. Cwe" << endl;
	cout << "Pilih : ";
	cin >> pil;
	
	switch(pil){
		case 1 :
			jkel = "Laki";
			break;
		case 2 :
			jkel = "Cwe";
			break;
			
		default :
			jkel = "GJLS";
			break;
	}
	
	cout<<"Anda Adalah "<<jkel;
}
