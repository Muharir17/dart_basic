import 'dart:io';


double luasPersegi(double panjang, double lebar)
{
  return panjang*lebar;
}

// mencoba optional parameter
String sapaDunia(String nama, alamat, { String umur = null, String status = null}){
  String kalimat = "Nama Kamu Adalah "+nama+" Alamat Kamu Ada Di "+alamat+ (umur != null ? " Umur Kamu "+umur : " ")+ (status != null ? " Status "+status : "");
  return kalimat;
}

// mencoba function dengan arrow function
double luasSegitiga(double alas, tinggi) => 0.5 * alas * tinggi;


// anonymous function
double luasLingkaran(double pi, r, Function operator){
  return operator(pi, r);
}

void main(List<String> arguments) {

  stdout.write("Masukkan Panjang = ");
  String panjang = stdin.readLineSync();

  stdout.write("Masukkan Lebar = ");
  String lebar = stdin.readLineSync();


  double hasil = luasPersegi(double.parse(panjang), double.parse(lebar));
  print(hasil);

  print("");
  print("###########################################################################");

  stdout.write("Masukkan Nama = "); String nama = stdin.readLineSync();
  stdout.write("Masukkan Alamat = "); String alamat = stdin.readLineSync();
  stdout.write("Masukkan Umur = "); String umur = stdin.readLineSync();
  stdout.write("Masukkan Status = "); String status = stdin.readLineSync();

  print(sapaDunia(nama, alamat, umur: "34", status: "Lajang"));

  print("");
  print("###########################################################################");

  print (luasSegitiga(4, 9));

  print("");
  print("###########################################################################");

  // pada dart kita function adalah first class object :
  // 1. fungsi dapat disimpan dalam sebuah variabel / identifier
  // 2. fungsi dapat di masukkan sebagai parameter
  // 3. Fungsi dapat dijadikan sebagai nilai kembalian.
  //

  Function varFunc = luasSegitiga;
  print(varFunc(7.0,8.9).toStringAsFixed(2)); // toStringAsFixed adalah fungsi untuk membulatkan nilai.


  //panggil anonimus function menggunakan arrow atau lamda
  print(luasLingkaran(3.14, 10, (a, b) => (a*b)*b));
}

