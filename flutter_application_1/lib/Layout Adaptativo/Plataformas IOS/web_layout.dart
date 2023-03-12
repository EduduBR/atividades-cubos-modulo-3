import 'package:flutter/material.dart';
import 'package:flutter_application_1/Layout%20Adaptativo/Plataformas%20IOS/mobile_layout.dart';

class WebIos extends StatelessWidget {

  const WebIos({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: MobileIos(
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
            'https://cdn-icons-png.flaticon.com/512/682/682055.png',
            scale: 3,
          ))
        ],
      ),
    );
  }
}
