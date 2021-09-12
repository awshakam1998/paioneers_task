import 'package:get/get.dart';
import 'package:paioneers_task/model/user.dart';
import 'package:paioneers_task/repository/login_repository.dart' as loginRepo;

class LoginViewModel extends GetxController {
  String email = '';
  String password = '';
  String deviceToken = 'dfghmjmhgnfbdsa';
  User user = User();
  bool isLoading=false;

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
      update();
    });
  }
}
