import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paioneers_task/main.dart';
import 'package:paioneers_task/view/widget/photo_widget.dart';
import 'package:paioneers_task/viewmodel/home_viewmodel.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return GetBuilder<HomeViewModel>(
      init: HomeViewModel(),
      builder: (controller) => Scaffold(
        appBar: AppBar(
          title: Obx(()=>Text('${x.toString()}')),
        ),
        body: controller.isLoading
            ?Center(child: CircularProgressIndicator())
            : ListView.builder(
                shrinkWrap: true,
                itemCount: controller.photoList.length,
                itemBuilder: (context, index) => PhotoWidget(
                  photo: controller.photoList[index],
                ),
              ),
      ),
    );
  }
}
