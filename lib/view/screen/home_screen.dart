import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paioneers_task/view/widget/photo_widget.dart';
import 'package:paioneers_task/viewmodel/home_controller.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) => Scaffold(
        appBar: AppBar(
          title: Text('Pioneers Task'),
        ),
        body: controller.isLoading
            ? Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        child: Image.asset(
                          'assets/loading.gif',
                          fit: BoxFit.fill,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 30,
                            child: Image.asset(
                              'assets/loading.gif',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
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
