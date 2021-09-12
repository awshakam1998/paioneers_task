import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paioneers_task/viewmodel/login_viewmodel.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginViewModel>(
      init: LoginViewModel(),
      builder: (controller) => Scaffold(
        appBar: AppBar(),
        body: controller.isLoading
            ? Center(child: CircularProgressIndicator())
            : SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        onChanged: (value) {
                          controller.email = value;
                          controller.update();
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'email',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        obscureText: true,
                        onChanged: (value) {
                          controller.password = value;
                          controller.update();
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        controller.login();
                      },
                      child: Container(
                        color: Colors.red,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 8),
                          child: Text('Login'),
                        ),
                      ),
                    ),
                    Text('${controller.user?.data?.name ?? ''}'),
                    controller.user?.data==null?Container(): Image.network(controller.user?.data?.media[0].url,width: 200,height: 400,)
                  ],
                ),
              ),
      ),
    );
  }
}
