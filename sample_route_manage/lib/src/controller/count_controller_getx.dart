import 'package:get/get.dart';

class CountControllerGetX extends GetxController{
int count = 0;
void increase(){
  count++;
  update();
}

}