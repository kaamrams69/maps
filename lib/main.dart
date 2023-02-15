import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maps/auth/main_auth.dart';
import 'package:maps/screens/account.dart';
import 'package:maps/screens/home.dart';
import 'package:maps/screens/home_page.dart';
import 'package:lottie/lottie.dart';
import 'package:maps/screens/search.dart';


void main() {
  runApp(MyApps());
}

Widget hehe(){
  return ProviderScope(child: HomePage());
}

class MyApps extends StatelessWidget {
  const MyApps({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      initialRoute: "splash",
      routes: {
        "auth": (context)=>MyAuth(),
        "maps": (context) => HomePage(),
        "splash": (context) => SplashScreen(),
        "home": (context) => First(),
        "search": (context) => Search(),
        "account": (context) => Account(),
      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 5)).then((value) => Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => MyAuth())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            height: 200.0,
            width: 200.0,
            child: Image.asset('assets/logo.jpg')),
      ),
    );
  }
}





/*
import 'package:flutter/material.dart';
import 'package:maps/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  HomeScreen(),
    );
  }
}
*/