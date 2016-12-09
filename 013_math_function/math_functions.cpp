// Program menentukan rumus statistika dari angka acak
#include <iostream>
// #include <conio.h> // entah ini ga bisa di laptop gw
#include <stdlib.h>
#include <cmath> // buat absolute value, di mean deviation
#include <algorithm> // max_element dan min_element
using namespace std;

// fungsi mengisi array
void isi(int &batas, float *angka, float &jumlah);
// fungsi menampilkan array
void tampil(int batas, float angka[], float jumlah);
// fungsi mencari nilai mean
float mean(int batas, float jumlah);
// fungsi mencari nilai mean deviation
float mean_deviation(int batas, float angka[], float rata, float &variance);
// fungsi mencari nilai harmonic mean
float harmonic_mean(int batas, float angka[]);
// fungsi mencari nilai range
float range(float variance);
// fungsi mencari nilai geometris
long double geometric_mean(int batas, float angka[]);

// main fungsi
int main(int a, char** b) { // variabel a sama b ini buat apa? wkwk
  int batas_acak;
  //angka meng-output jumlah yang diinput ke bawah
  cout << "Masukkan jumlah angka acak:\t";
  cin >> batas_acak;

  //keterangan variabel
  float *angka = new float[batas_acak];
  float *s = new float[batas_acak];
  float jumlah = 0, rata, M, simp_rata, variance;

  isi(batas_acak, angka, jumlah); // isi array

  cout << endl;

  tampil(batas_acak, angka, jumlah);

  cout << endl;

  // hitung mean
  rata = mean(batas_acak, jumlah);

  // hitung mean deviation
  simp_rata = mean_deviation(batas_acak, angka, rata, variance);

  //membuat tabel
  cout << "\n---------------------------------------------------------";

  //menampilkan rata-rata
  cout << "\n\n Rata-rata (Mean) \t\t\t: " << rata;

  //menampilkan simapangan rata-rata
  cout << "\n Simpangan Rata-rata (Mean Deviation)\t: ";
  printf("%.2f", simp_rata);
  cout << endl;

  //menampilkan harmonic mean
  cout << "\n (Harmonic Mean)\t: ";
  printf("%.2f", harmonic_mean(batas_acak, angka));
  cout << endl;

  //menampilkan range
  cout << "\n (Range atau Standar Deviasi)\t: ";
  printf("%.2f", range(variance));
  cout << endl;

  //menampilkan Geometric Mean
  cout << "\n (Geometric Mean)\t: ";
  printf("%.2Lf", geometric_mean(batas_acak, angka)); // Lf => long double
  cout << endl;

  cout << "---------------------------------------------------------" << endl;	
}

void isi(int &batas, float *angka, float &jumlah) {
  //looping bilangan acak
  for(int i = 0; i < batas; i++) {
    // cout << "Angka ke "<< i + 1 <<" : ";
    // cin >> angka[i]; 
    srand(i); // seed, initialize new random value
    angka[i] = rand() % 100 + 1; // masukkan angka acak ke dalam array "angka"
    jumlah += angka[i]; // jumlahkan semua "angka"
  }
}

void tampil(int batas, float angka[], float jumlah) {
  for(int i = 0; i < batas; i++) {
    cout << "Angka ke " << i + 1 << " yaitu: ";
    cout << angka[i] << endl;
  }
  cout << "Jumlah dari semua angka: ";
  cout << jumlah << endl;
}

float mean(int batas, float jumlah) {
  return jumlah / batas;
}

float mean_deviation(int batas, float angka[], float rata, float &variance) {
  float jumlah_md = 0;
  float jml_variance = 0;
  float *angka_temp = new float[batas];
  // cout << "Total pangkat 2, mencari standar deviasi: " << endl;
  for(int i = 0; i < batas; i++) {
    angka_temp[i] = abs(angka[i] - rata);
    jml_variance += pow(angka_temp[i], 2);
    // cout << jml_variance;
    // if (i != batas - 1) {
    //   cout << " + ";
    // } else {
    //   cout << " / " << batas;
    // }
    jumlah_md += angka_temp[i];
  }
  // cout << endl;
  variance = jml_variance / batas;
  // cout << "Varians: " << variance << "; o^2: " << jml_variance << endl;
  return jumlah_md / batas;
}

float harmonic_mean(int batas, float angka[]) {
  float jumlah_hm = 0;
  for(int i = 0; i < batas; i++) {
    jumlah_hm += 1 / angka[i];
  }
  return batas / jumlah_hm;
}

float range(float variance) {
  // return *max_element(angka, angka+batas) - *min_element(angka, angka+batas);
  return sqrt(variance); // standard deviation atau range
}

long double geometric_mean(int batas, float angka[]) {
  long double jumlah = 1;
  float gm = 1.0 / batas;
  // cout << endl;
  for (int i = 0; i < batas; i++) {
   jumlah *= angka[i];
  //  cout << jumlah << " ";
  }
  // cout << endl;
  // cout << "N root: " << gm;
  return pow(jumlah, gm);
}