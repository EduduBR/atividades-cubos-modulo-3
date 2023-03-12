import 'package:flutter/material.dart';
import 'package:flutter_application_1/Layout%20Adaptativo/Plataformas%20Android/mobile_layout.dart';
import 'package:flutter_application_1/Layout%20Adaptativo/Plataformas%20Android/web_layout.dart';
import 'package:flutter_application_1/Layout%20Adaptativo/i_class_app.dart';

class Android implements CustomApp {
  @override
  show(BuildContext context) {
    final widthscreen = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar:
          AppBar(backgroundColor: Colors.purple, title: const Text('Ajuda')),
      body: LayoutBuilder(builder: (context,Constraints) {
        if (Constraints.maxWidth < 550) {
          return const MobileAndroid(body: Text('como posso ajudar?',style: TextStyle(fontSize: 30),),);
        } else {
          return const WebAndroid();
        }
      })
    );
  }
}
