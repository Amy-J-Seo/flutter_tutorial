import 'package:get/get.dart';

enum NUM {FIRST, SECOND}

class User {
  String? name;
  int? age;
  User({this.name, this.age});
}


class CountControllerWithReactive extends GetxController{
  RxInt count = 0.obs;
 RxDouble _double = 0.0.obs;
 RxString value = ''.obs;
 Rx<NUM> nums = NUM.FIRST.obs;
 Rx<User> user = User(name:'Foxy', age:3).obs;
 RxList<String> list = ['test'].obs;

  void increase(){
    count++;
    // _double++;
    _double(24.3);

    nums(NUM.SECOND);
    user(User());
    user.update((user) {
      user?.name = 'Test';
    });
    list.add('hellop');
    list.addIf(user.value.name=='hello', 'test2');
  }
  void putNumber(int value){
    count(value);
  }

  @override
  void onInit() {
    ever(count, (callback) => print('everytime called'));
    once(count, (callback) => print('once'));
    debounce(count, (callback) => print('called one time on a last change '), time: Duration(seconds: 1));
    interval(count, (callback) => print('while on changing called everytime for a sec'), time: Duration(seconds: 1));
    super.onInit();
  }


}
