import 'dart:isolate';

import 'package:get/get.dart';
import 'package:paioneers_task/model/photo.dart';
import 'package:paioneers_task/repository/home_repository.dart' as homeRepo;

class HomeViewModel extends GetxController {
  List<Photo> photoList = [];
  bool isLoading = false;

  fetchPhotos() async {
    isLoading = true;
    update();
    await homeRepo.getPhoto().then((value) {
      photoList = value;
      isLoading = false;
    });
    update();
  }

  @override
  void onInit() {
    fetchPhotos();
    super.onInit();
  }

}
