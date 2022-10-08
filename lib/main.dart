import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_demo/constants/app_constants.dart';
import 'package:flutter_chat_demo/providers/auth_provider.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'constants/color_constants.dart';
import 'pages/pages.dart';
import 'providers/providers.dart';
import 'package:flutter/material.dart';
import './errorfinal.dart';
import './bodyfinal.dart';
import './flashcardsc.dart';
import 'screens/trangtrong.dart';
import './screens/filelist.dart';
import 'package:webview_flutter/webview_flutter.dart';
import './webview.dart';
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//   runApp(MyApp2(prefs: prefs));
// }

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
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
        padding: EdgeInsets.all(30),
        child: GridView(
          // ignore: prefer_const_constructors
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              mainAxisExtent: 100,
              childAspectRatio: 10),
          children: [
            Container(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => fl1()));
                  },
                  // ignore: prefer_const_constructors
                  child: Text(
                    "Falsh Card",
                    // ignore: prefer_const_constructors
                    style: TextStyle(fontSize: 20),
                  )),
            ),
            Container(
              child: ElevatedButton(
                  onPressed: () {},
                  // ignore: prefer_const_constructors
                  child: Text(
                    "Bài tập theo tiến độ",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  )),
            ),
            Container(
              child: ElevatedButton(
                  onPressed: () {},
                  // ignore: prefer_const_constructors
                  child: Text(
                    "Tiếng Nhật chuyên ngành IT",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18),
                  )),
            ),
            Container(
              child: ElevatedButton(
                  onPressed: () {},
                  // ignore: prefer_const_constructors
                  child: Text(
                    "Liên lạc Giảng Viên",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  )),
            ),
            Container(
              child: ElevatedButton(
                  onPressed: () {},
                  // ignore: prefer_const_constructors
                  child: Text(
                    "N5",
                    textAlign: TextAlign.center,
                    // ignore: prefer_const_constructors
                    style: TextStyle(fontSize: 20),
                  )),
            ),
            Container(
              child: ElevatedButton(
                  onPressed: () {},
                  // ignore: prefer_const_constructors
                  child: Text(
                    "N4",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  )),
            ),
            Container(
              child: ElevatedButton(
                  onPressed: () {},
                  // ignore: prefer_const_constructors
                  child: Text(
                    "N3",
                    textAlign: TextAlign.center,
                    // ignore: prefer_const_constructors
                    style: TextStyle(fontSize: 20),
                  )),
            ),
            Container(
              child: ElevatedButton(
                  onPressed: () {},
                  // ignore: prefer_const_constructors
                  child: Text(
                    "N2",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  )),
            ),
            Container(
              child: ElevatedButton(
                  onPressed: () {},
                  // ignore: prefer_const_constructors
                  child: Text(
                    "N1",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  )),
            ),
            Container(
              child: ElevatedButton(
                  onPressed: () {
                    main2();
                  },
                  // ignore: prefer_const_constructors
                  child: Text(
                    "Chat Box",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  )),
            ),
          ],
        ),
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
            IconButton(
              icon: Icon(
                Icons.facebook,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.web,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => schooler()));
              },
            ),
            // PopupMenuButton(
            //   icon: Icon(
            //     Icons.share,
            //     color: Colors.white,
            //   ),
            //   itemBuilder: (context) => [
            //     // ignore: prefer_const_constructors
            //     PopupMenuItem(
            //       value: 1,
            //       child: Text("Facebook"),
            //     ),
            //     // ignore: prefer_const_constructors
            //     PopupMenuItem(
            //       value: 2,
            //       child: Text("Schooler"),
            //       onTap: () {
            //         Navigator.push(
            //             context, MaterialPageRoute(builder: (_) => fl1()));
            //       },
            //     ),
            //   ],
            // ),
            IconButton(
              icon: Icon(
                Icons.account_box_rounded,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => profile()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

void main2() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  runApp(MyApp2(prefs: prefs));
}

class MyApp2 extends StatelessWidget {
  final SharedPreferences prefs;
  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  final FirebaseStorage firebaseStorage = FirebaseStorage.instance;

  MyApp2({required this.prefs});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AuthProvider>(
          create: (_) => AuthProvider(
            firebaseAuth: FirebaseAuth.instance,
            googleSignIn: GoogleSignIn(),
            prefs: this.prefs,
            firebaseFirestore: this.firebaseFirestore,
          ),
        ),
        Provider<SettingProvider>(
          create: (_) => SettingProvider(
            prefs: this.prefs,
            firebaseFirestore: this.firebaseFirestore,
            firebaseStorage: this.firebaseStorage,
          ),
        ),
        Provider<HomeProvider>(
          create: (_) => HomeProvider(
            firebaseFirestore: this.firebaseFirestore,
          ),
        ),
        Provider<ChatProvider>(
          create: (_) => ChatProvider(
            prefs: this.prefs,
            firebaseFirestore: this.firebaseFirestore,
            firebaseStorage: this.firebaseStorage,
          ),
        ),
      ],
      child: MaterialApp(
        title: AppConstants.appTitle,
        theme: ThemeData(
          primaryColor: ColorConstants.themeColor,
          primarySwatch: MaterialColor(0xfff5a623, ColorConstants.swatchColor),
        ),
        home: SplashPage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
