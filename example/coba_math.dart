import 'package:belajar_dart_packages_library/Math.dart';


void FactorialExample(){
  int maxNumber = 10;
  for (var i =1;i<maxNumber;i+=2){
    int result = factorial(i);
    print('suku ke $i,nilai factorial:$result');
  }
  print('\n');
}

void VarianceExample(){
  var dummyData = [2.0,2.0,1.2,3.4];
  double resultVariance= Variance(dummyData);
  print('variance dari $dummyData adalah:$resultVariance');
  print('\n');
}

void main(){
  // factorial example
  FactorialExample();
  VarianceExample();
}