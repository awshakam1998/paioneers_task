import 'package:get/get.dart';
import 'package:paioneers_task/model/user.dart';
import 'package:paioneers_task/repository/login_repository.dart' as loginRepo;
import 'package:paioneers_task/utils/storage.dart';

class LoginViewModel extends GetxController {
  String email = '';
  String password = '';
  String deviceToken = 'dfghmjmhgnfbdsa';
  User user = User();
  bool isLoading=false;
  Storage storage=Storage();
  login() async {
    isLoading=true;
    update();
    await loginRepo.login({
      "email": "$email",
      "password": "$password",
      "device_token": "$deviceToken"
    }).then((value) {
      user = value;
      isLoading=false;

      storage.saveUser(user);
      update();
    });
  }

  @override
  void onInit() {
    // TODO: implement onInit
    getUser();
    super.onInit();
  }
  getUser()async{
    user =await storage.getUser();
    update();
  }

}
