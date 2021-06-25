import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paioneers_task/network/network_service.dart';
import 'package:paioneers_task/view/screen/home_screen.dart';
import 'package:paioneers_task/view/widget/no_connection_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Task',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: StreamBuilder<NetworkStatus>(
        stream: NetworkStatusService().networkStatusController.stream,
        builder: (context, snapshot) {
          return snapshot.data == NetworkStatus.Online
            ?HomeScreen()
            :NoConnectionWidget();
        }
      ),
    );
  }
}
