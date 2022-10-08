import 'package:flutter/material.dart';
import './errorfinal.dart';
import './bodyfinal.dart';
import './flashcardsc.dart';
import 'screens/trangtrong.dart';

class profile extends StatelessWidget {
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
      body: Container(
        child: MainPage(),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        // ignore: unnecessary_new
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
            PopupMenuButton(
              icon: Icon(
                Icons.share,
                color: Colors.white,
              ),
              itemBuilder: (context) => [
                // ignore: prefer_const_constructors
                PopupMenuItem(
                  value: 1,
                  child: Text("Facebook"),
                ),
                // ignore: prefer_const_constructors
                PopupMenuItem(
                  value: 2,
                  child: Text("Schooler"),
                ),
              ],
            ),
            IconButton(
              icon: Icon(
                Icons.account_box_rounded,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  final double coverHeight = 280;
  final double profileHeight = 144;
  final double top = 0;
  // top = coverHeight - profileHeight/2;
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildTop(),
    );
  }

  Widget buildTop() {
    final top = coverHeight - profileHeight / 2;
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        buildCoverImage(),
        Positioned(
          top: top,
          child: buildProfileImage(),
        ),
      ],
    );
  }

  Widget buildCoverImage() => Container(
        color: Colors.grey,
        // ignore: sort_child_properties_last
        child: Image.network(
          'https://vcdn1-vnexpress.vnecdn.net/2021/10/14/BKphoto-edit-Final-8691-1634193916.jpg?w=0&h=0&q=100&dpr=2&fit=crop&s=qafFBfVVkCXRjDLa-agQcg',
          width: double.infinity,
          height: coverHeight,
          fit: BoxFit.cover,
        ),
      );

  Widget buildProfileImage() => CircleAvatar(
        radius: profileHeight / 2,
        backgroundColor: Colors.grey.shade800,
        backgroundImage: NetworkImage(
            'https://i.pinimg.com/originals/e0/7a/22/e07a22eafdb803f1f26bf60de2143f7b.png'),
      );
}
