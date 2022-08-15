#include <iostream>
#include <sstream> //memanipulasi string
using namespace std;

int main(){
	//int ke string
//	int angka = 10;
//	string kata;
//	
//	//cara pemnggilan
//	stringstream temp;
//	temp << angka;
//	temp >> kata;
//	
//	cout << "Ini Int : " << angka + angka << endl;
//	cout << "Ini String : " << kata + kata << endl;

	//string ke int
//		int angka;
//		string kata = "8";
//		
//		//cara pemnggilan
//		stringstream temp;
//		temp << kata;
//		temp >> angka;
//		
//		cout << "Ini Int : " << angka + angka << endl;
//		cout << "Ini String : " << kata + kata << endl;

	//Desimal ke biner
	int desimal, sisa;
	string hasil, temp;
		
	cout << "Desimal : ";
	cin >> desimal;
	
	for(int a = desimal; a > 0; a /= 2){
		stringstream bit;
		
		sisa = a % 2;
		bit << sisa;
		bit >> temp;
		
		hasil += temp;
	}
	
	for(int b = hasil.length()-1; b >= 0; b--){
		cout << hasil[b] << " ";
	}
}
