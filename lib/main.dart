import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paioneers_task/network/network_service.dart';
import 'package:paioneers_task/utils/theme/theme.dart';
import 'package:paioneers_task/utils/translation.dart';
import 'package:paioneers_task/view/screen/home_screen.dart';
import 'package:paioneers_task/view/widget/no_connection_widget.dart';

void main() {
  runApp(MyApp());
}

var x ='Task'.obs;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Task',
      theme: AppTheme.lightTheme,
      translations: Translation(),
      locale: Locale('en'),
      fallbackLocale: Locale('en'),
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
