import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Layout%20Adaptativo/Plataformas%20IOS/mobile_layout.dart';
import 'package:flutter_application_1/Layout%20Adaptativo/Plataformas%20IOS/web_layout.dart';
import '../i_class_app.dart';

class Ios implements CustomApp {
  @override
  show(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: const Text(
          'Ajuda',
          style: TextStyle(color: Colors.black),
        ),
        leading: CupertinoButton(
          child: const Icon(CupertinoIcons.back),
          onPressed: () {},
        ),
        backgroundColor: Colors.grey[300],
      ),
      body: LayoutBuilder(builder: (context,Constraints) {
        if (Constraints.maxWidth < 550) {
          return const MobileIos(body: Text('como posso ajudar?',style: TextStyle(fontSize: 30),),);
        } else {
          return const WebIos();
        }
      }),
    );
  }
}
