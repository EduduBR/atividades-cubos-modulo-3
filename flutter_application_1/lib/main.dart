import 'package:flutter/material.dart';
import 'package:flutter_application_1/Layout%20Adaptativo/Plataformas%20Android/android.dart';

void main() {
  runApp(const MaterialApp(home: Myapp(),));
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});
  @override
  Widget build(BuildContext context) {
    
    return Android().show(context);
            // Platform.isAndroid ? Android().show(context) : Ios().show(context);
  }
}
