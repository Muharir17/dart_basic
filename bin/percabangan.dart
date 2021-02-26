import 'dart:io';

void main(List<String> arguments) {
  stdout.write("Masukkan Angka Yang Akan Di Cek = "); // stdout akan meng echo namun tidak ganti baris.
  int angka = int.tryParse(stdin.readLineSync());

  if(angka < 0){
    print("$angka Adalah Bilangan Negatif");
  }else if(angka > 0){
    print("$angka Adalah Bilangan Negatif");
  }else{
    print("$angka = nol");
  }
}
