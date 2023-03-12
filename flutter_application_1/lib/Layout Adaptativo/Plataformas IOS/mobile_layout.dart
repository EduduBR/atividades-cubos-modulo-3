import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MobileIos extends StatelessWidget {
  final Widget body;
  const MobileIos({super.key, required this.body});

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
            CupertinoButton(
              color: Colors.blueAccent,
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
