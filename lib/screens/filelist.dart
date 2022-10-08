import 'package:flutter/material.dart';
import '../errorfinal.dart';

class trangtrong2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey,
      appBar: AppBar(
        // foregroundColor: Colors.amber,
        // backgroundColor: Colors.red,
        title: Text('Name'),
      ),
      drawer: Drawer(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Center(
              child: Column(
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.star)),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => AppChuaPhatTrien()));
                  },
                  child: Center(child: Text('Tiếng Nhật chuyên ngành IT'))),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => AppChuaPhatTrien()));
                  },
                  child: Center(child: Text('Nghe'))),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => AppChuaPhatTrien()));
                  },
                  child: Center(child: Text('Nói'))),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => AppChuaPhatTrien()));
                  },
                  child: Center(child: Text('Đọc '))),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => AppChuaPhatTrien()));
                  },
                  child: Center(child: Text('Viết'))),
            ],
          )),
        ),
      ),
      body: Container(child: Text(' ')),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        child: Container(
          height: 60,
        ),
      ),
    );
    ;
  }
}
