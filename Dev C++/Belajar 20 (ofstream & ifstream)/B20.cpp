#include <iostream>
#include <fstream> //memproses file berupa .txt
using namespace std;

int main(){
	//ofstream menulis file berupa .txt /output
	//ofstream bisa di identikan dengan variabel
	ofstream file;
	string a;
	
	cout << "Masukan Kalimat : ";
	getline (cin, a);
	
	//membuka file
	file.open("Text.txt");
	file << "Isi Input Tadi"<< a <<endl;
	
	system("START /MIN NOTEPAD Text.txt");

	//ifstream membaca isi file /input
	ifstream myfile("Text.txt");
	string line;
	
	if(myfile.is_open()){
		while(getline(myfile, line)){
			cout << line <<endl;
		}
		//menutup file
		myfile.close();
	} else {
		cout << "Gagal di muat";
	}
	
}
