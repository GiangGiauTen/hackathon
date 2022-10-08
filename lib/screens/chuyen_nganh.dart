// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class chuyenNganh extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        child: Text('Tieng_Nhat_Chuyen_Nganh_1'),
        onPressed: () => launch(
            'https://drive.google.com/uc?id=1GlxYVBb1xjkNR39XRKz1xXzN8dWbDUBJ&export=download'),
      ),
    );
  }
}
