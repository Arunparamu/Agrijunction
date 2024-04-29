import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'login.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(

      options: FirebaseOptions(
        apiKey: "AIzaSyDCmv_-c744Tradqsm_RJBtn2UBZlx-Hdg",
        appId: "1:915379924277:web:8d793a369ed1abbbd8b07c",
        messagingSenderId: "915379924277",
        projectId: "agrijunctions-a6ea",
      ));
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'agrijunction',
      theme: ThemeData(
        primaryColor: Colors.orange[900],
      ),
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
