import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class schooler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Schooler Sun*',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Schooler Sun*'),
        ),
        body: WebView(
          initialUrl: "https://schooler.sun-asterisk.com/",
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}

class facebook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Facebook Hedspi',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Facebook Hedspi'),
        ),
        body: WebView(
          initialUrl: "https://www.facebook.com/groups/347673639804085",
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}

class nghiHoc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Xin nghi hoc',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Xin nghi hoc'),
        ),
        body: WebView(
          initialUrl:
              "https://www.youtube.com/watch?fbclid=IwAR3JLlTefzwXDqC1JXFCT3Vm3o7KkwFtejIdhLw7H0u_h1bbOVSxZBbhY2A&v=TMjAEk0bdvM&feature=youtu.be",
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}

class chuyenCan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dieu chinh chuyen can',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dieu chinh chuyen can'),
        ),
        body: WebView(
          initialUrl: "https://www.youtube.com/watch?v=M33fALe3Bgc",
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}

class thanhTich extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ' Điều chỉnh thành tích',
      home: Scaffold(
        appBar: AppBar(
          title: Text(' Điều chỉnh thành tích'),
        ),
        body: WebView(
          initialUrl: "https://www.youtube.com/watch?v=Xk7fBuPgUqE",
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}

class Khac extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Liên lạc về các vấn đề khác',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Liên lạc về các vấn đề khác'),
        ),
        body: WebView(
          initialUrl: "https://www.youtube.com/watch?v=HSVg_SLhyqc",
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}

class danhSachLop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DANH SÁCH LỚP - ĐĂNG KÍ LỚP NHẬT 5 TRÊN SCL',
      home: Scaffold(
        appBar: AppBar(
          title: Text('DANH SÁCH LỚP - ĐĂNG KÍ LỚP NHẬT 5 TRÊN SCL'),
        ),
        body: WebView(
          initialUrl:
              "https://www.facebook.com/groups/k65.hedspi/posts/787798975791547/",
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}

class taiLieu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TÀI LIỆU CHIA SẺ CHO SINH VIÊN (NHẬT 5)',
      home: Scaffold(
        appBar: AppBar(
          title: Text('TÀI LIỆU CHIA SẺ CHO SINH VIÊN (NHẬT 5)'),
        ),
        body: WebView(
          initialUrl:
              "https://drive.google.com/drive/folders/18gx_U1G80LdZwjl8skROn4far46kb7es?fbclid=IwAR3FXGu9R79IFAmFM2B-JC9jglzOBZky-1s8V0SMA8t8qFa88PxtxEyWAso",
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}

class chuongTrinhhoc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CHƯƠNG TRÌNH HỌC NHẬT 5 và GIÁO TRÌNH DÙNG ĐỂ TỰ ÔN JLPT',
      home: Scaffold(
        appBar: AppBar(
          title:
              Text('CHƯƠNG TRÌNH HỌC NHẬT 5 và GIÁO TRÌNH DÙNG ĐỂ TỰ ÔN JLPT'),
        ),
        body: WebView(
          initialUrl:
              "https://www.facebook.com/photo?fbid=10158364209747273&set=gm.778235080081270&idorvanity=347673639804085",
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
