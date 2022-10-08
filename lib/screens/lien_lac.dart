import 'package:flutter/material.dart';
import 'package:flutter_chat_demo/webview.dart';

class lienLac extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ho tro liec lac")),
      body: Container(
        padding: EdgeInsets.all(20),
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              mainAxisExtent: 100,
              childAspectRatio: 10),
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => nghiHoc()));
              },
              child: Text('xin nghi hoc'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => chuyenCan()));
              },
              child: Text('Dieu chinh chuyen can'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => thanhTich()));
              },
              child: Text('Điều chỉnh thành tích'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Khac()));
              },
              child: Text('Vấn đề khác'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => danhSachLop()));
              },
              child: Text('DANH SÁCH LỚP'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => taiLieu()));
              },
              child: Text('TÀI LIỆU '),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => chuongTrinhhoc()));
              },
              child: Text('CHƯƠNG TRÌNH HỌC'),
            ),
          ],
        ),
      ),
    );
  }
}
