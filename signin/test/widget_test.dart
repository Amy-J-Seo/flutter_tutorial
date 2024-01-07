import 'dart:io';

void main(){
  showData();

}

void showData(){
  startTask();
  asscessData();
  fetchData();
}
void startTask(){
  String info1 = 'Start..11111';
  print(info1);

}

void asscessData(){
  Duration time = Duration(seconds: 3);
  if(time.inSeconds >2){

    Future.delayed(time, (){
      String info2 = 'accessing .222222.';
      print(info2);
    });


  }else{
    String info2 = 'accessing .22222.';
    print(info2);
  }

}
void fetchData(){
  String info3 = 'fetching..33333';
  print(info3);

}

