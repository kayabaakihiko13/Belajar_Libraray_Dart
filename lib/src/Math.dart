import 'dart:math';

double roundDouble(double value, int places){
  num mod = pow(10.0, places);
  return ((value * mod).round().toDouble() / mod);
}

double Sum<T extends num>(List<T>values){
  var result=0.0;
  for(var value in values){
    result +=value;
  }
  return result;
}

double Min<T extends num>(List<T> values){
  double minValue = values[0].toDouble();
  for (var value in values){
    if(minValue> value) {
      minValue = value.toDouble();
    }
  }
  return minValue;
}

double Max <T extends num>(List<T> values){
  double maxValue = values[0].toDouble();
  for(var value in values){
    if (maxValue < value){
      maxValue = value.toDouble();
    }
  }
  return maxValue;
}

double MeanValues<T extends num>(List<T?> values){
  num sum = 0;
  int count = 0;
  for (var val in values){
    if ( val !=null){
      sum+=val;
      count++;
    }
  }
  return count ==0?0 : roundDouble(sum/count,3);
}

double MedianValues<T extends num>(List<T> values){
  var copy_data = List<T>.from(values);
  copy_data.sort();
  int length = copy_data.length;
  if(length%2 ==0){
    int mid = length ~/2 ;
    return (copy_data[mid-1]+values[mid])/2;
  }else{
    int mid = length~/2;
    return copy_data[mid].toDouble();
  }
}


double ModusValue<T extends num>(List<num> value){
  var copy_data = List<T>.from(value);
  double maxValue = 0.0;
  var maxCount = 0;

  for(var i = 0;i<copy_data.length;++i){
    var count = 0;
    for (var j = 0;j<copy_data.length;++j){
      if(copy_data[j] == copy_data[i]) ++count;
    }
    if (count>maxCount){
      maxCount = count;
      maxValue = copy_data[i].toDouble();
    }
  }
  return maxValue;
}

int factorial(int number){
  if (number<=0){
    throw Exception("Suku pada number harus lebih dari 0");
  }
  int result = 1;
  for(var i =2;i<=number;i++){
    result *=i;
  }
  return result;
}

double Variance<T extends num>(List<T>values){
  double mean_values = MeanValues(values);
  double results = 0.0;
  int length_values = values.length;
  for(var value in values){
    results+=pow((value.toDouble() - mean_values),2);
  }
  return results /length_values;
}