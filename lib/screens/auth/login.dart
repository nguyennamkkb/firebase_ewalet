import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Widget _authTitle() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Login",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 3,
          ),
          Text("Sub")
        ],
      ),
    );
  }

  Widget _inputEmail() {
    return Container(
      child: TextFormField(
        decoration: InputDecoration(hintText: "Email"),
      ),
    );
  }

  Widget _inputPassword() {
    return Container(
      child: TextFormField(
        decoration: InputDecoration(
            hintText: "Password",
            suffixIcon: IconButton(
              icon: Icon(Icons.visibility),
              onPressed: () {},
            )),
      ),
    );
  }

  Widget _forgotPassword() {
    return GestureDetector(
      onTap: () {
        print("Forgot pasword");
      },
      child: Container(
          color: Colors.transparent,
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.fromLTRB(0, 20, 20, 20),
          child: Text(
            "Forgot pasword?",
          )),
    );
  }

  Widget _textDivider() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: [
          Expanded(child: Divider()),
          Text("OR CONNECT WITH"),
          Expanded(child: Divider()),
        ],
      ),
    );
  }

  Widget _btnLogin() {
    return Container(
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueAccent,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
        child: Text(
          "Login",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),
        ),
        onPressed: () {},
      ),
    );
  }

  Widget _googleSignIn() {
    return GestureDetector(
      onTap: (){
        print("ASdasd");
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey.shade400
        ),
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: Icon(Icons.adb),
              onPressed: () {},
            ),
            Text("Google")
          ],
        ),
        height: 50,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _authTitle(),
            _inputEmail(),
            _inputPassword(),
            _forgotPassword(),
            _btnLogin(),
            _textDivider(),
            _googleSignIn()
          ],
        ),
      ),
    );
  }
}
