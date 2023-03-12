import 'package:flutter/material.dart';

class MobileAndroid extends StatelessWidget {
  final Widget body;
  const MobileAndroid({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            body,
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.purple)),
              child: const SizedBox(
                height: 30,
                width: 300,
                child: Text(
                  'Enviar',
                  textAlign: TextAlign.center,
                ),
              ),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
