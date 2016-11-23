//Program untuk menentukan nilai akhir melalui matriks GRADE dan BOBOT

#include <iostream>

using namespace std;
//fungsi nilai akhir
//bobot [k] bagaimana ya??

// Global variable
int soal, siswa;
int bobot[3] = {0, 0, 0}; // 3 bobot, dari 3 soal
int bobotTotal = 0;
float grade[2][3]; // 2 siswa, 3 soal
float akhir[2] = {0, 0}; // nilai akhir dari 2 siswa

void baca() {
  /*
  Tentukan banyak soal dan siswa
  */
  cout << "Masukkan banyaknya soal : ";
  cin >> soal;
  cout << "Masukkan banyaknya siswa : ";
  cin >> siswa;
  cout << endl;

  /* 
  Masukkan nilai tiap siswa
  */
  // Kenapa i dan j = 0?
  // ingat, bahwa array itu mulai dari 0
  // atau perhitungan dalam pemrograman, semua dimulai dari 0
  for(int i = 0; i < soal; i++){
    // Inisialisasi bobot[i]
    bobot[i] = i + 1;
    // supaya muncul 1 di layar, tambahkan saja + 1
    cout << "=== BOBOT SOAL ke-" << i + 1 << " ===" << endl;
    for(int j = 0; j < siswa; j++){
      cout << "Masukkan nilai siswa ke-" << j + 1<< " : ";
      cin >> grade[j][i];
    }
    cout << endl;
    // Jumlahkan bobot
    bobotTotal += bobot[i];
  }
}

void hitung() {
  for(int i = 0; i < soal; i++) {
    cout << "Bobot soal ke-" << i + 1 << endl;
    for(int j = 0; j < siswa; j++) {
      cout << "Nilai siswa ke-" << j + 1 << " yaitu: ";
      cout << grade[j][i] << endl;
      akhir[j] += (grade[j][i] * bobot[i]);
    }
    cout << "Bobot: " << bobot[i] << endl;
    // cout << "Bobot total: " << bobotTotal << endl;
    cout << endl;
  }
}

void cetak() {
  for (int n = 0; n < siswa; n++) {
    // hasil perkalian dan penjumlahan nilai
    // lalu dibagi bobotTotal
    akhir[n] /= bobotTotal;
    cout << "Nilai akhir siswa ke-" << n + 1 << " yaitu: ";
    printf("%.2f ", akhir[n]);
    cout << endl;
  }
}

int main() {
  baca();
  hitung();
  cetak();
}