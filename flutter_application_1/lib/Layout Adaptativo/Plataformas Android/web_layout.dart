import 'package:flutter/material.dart';
import 'package:flutter_application_1/Layout%20Adaptativo/Plataformas%20Android/mobile_layout.dart';

class WebAndroid extends StatelessWidget {

  const WebAndroid({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: MobileAndroid(
            body: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Código do Cliente',
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Descrição do Pedido',
                  ),
                ),
              ],
            ),
          )),
          Expanded(
              child: Image.network(
            'https://cdn-icons-png.flaticon.com/512/2222/2222807.png',
            scale: 3,
          ))
        ],
      ),
    );
  }
}
