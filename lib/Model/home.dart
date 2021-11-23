import 'package:flutter/material.dart';
import 'package:nisachon_app/Model/regist.dart';

import 'login.dart';


class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isHidden = false;

  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("เข้าสู่ระบบ"),
      ),
      body: new Container(
        padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            new Image.asset("assets/image/images.png"),
            TextField(
              controller: _usernameController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'username',
                hintText: 'xxxx@hotmail.com',
                icon: Icon(Icons.people_outline),
              ),
            ),
            TextField(
              controller: _passwordController,
              obscureText: isHidden,
              decoration: InputDecoration(
                labelText: 'password',
                icon: Icon(Icons.lock),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: RaisedButton.icon(
                icon: Icon(Icons.add),
                label: Text("สร้างบัญชีผู้ใช้", style: TextStyle(fontSize: 15)),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return RegisterScreen();
                  }));
                },
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: RaisedButton.icon(
                icon: Icon(Icons.done),
                label: Text("เข้าสู่ระบบ", style: TextStyle(fontSize: 15)),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return HomeScreen();
                  }));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
} //end
