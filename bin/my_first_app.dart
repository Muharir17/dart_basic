import 'dart:io';

void main(List<String> arguments) {
  String input = stdin.readLineSync();
  double data = double.tryParse(input);
  print( data == null ? 'Masukkan Angka' : "Jadi Jumlah Datanya Adalah = $data");
  // print(data);
}
