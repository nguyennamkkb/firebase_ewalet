import 'package:firebase_e_wallet_app/screens/auth/login.dart';
import 'package:firebase_e_wallet_app/screens/home/home.dart';
import 'package:firebase_e_wallet_app/widgets/widget.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    _checkUser(false);
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: wAppLoading(),
    );
  }

  void _checkUser(bool user) async {
    await Future.delayed((Duration(seconds: 2)));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) =>  user? HomePage() :LoginPage()));
  }
}
