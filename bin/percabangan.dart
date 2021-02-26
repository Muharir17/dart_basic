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

  // bisa juga menggunakan ternari seperti di bawah ini

  // String tampil = angka < 0 ? "Negatif" : "Positif";
  // print(tampil);


  // ini contoh penggunaan switch
  switch(angka){
    case 0 :
      print('Angkanya Nol');
      break;
    case 1 :
      print('Angkanya Satu');
      break;
    default:
      print('Kaga Ada Dalam List');
      break;
  }

}

