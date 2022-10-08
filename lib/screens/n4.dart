// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class N4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        child: Text('N4_Nihongo_Challenge_Kotoba'),
        onPressed: () => launch(
            'https://drive.google.com/uc?id=1GlxYVBb1xjkNR39XRKz1xXzN8dWbDUBJ&export=download'),
      ),
    );
  }
}
