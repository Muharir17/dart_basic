import 'dart:io';

void main(List<String> arguments) {

  for(int i=0; i<= 10; i++)
    {
      print("Perulangan ke $i");
    }

  print('');
  print('#Perulangan While#');
  int i = 10;
  while(i <= 15){
      print("Perulangan ke $i");
      i++;
  }

  print('');
  print('#Perulangan Do...While#');
  int j = 10;
  do{
    print("Perulangan Ke $j");
    j++;
  }while(j <= 100);

}

