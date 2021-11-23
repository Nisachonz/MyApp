import 'package:flutter/material.dart';

import 'login.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("สร้างบัญชีผู้ใช้"),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("ชื่อ", style: TextStyle(fontSize: 20)),
                  TextFormField(),
                  SizedBox(
                    height: 15,
                  ),
                  Text("นามสกุล", style: TextStyle(fontSize: 20)),
                  TextFormField(),
                  SizedBox(
                    height: 15,
                  ),
                  Text("อีเมล", style: TextStyle(fontSize: 20)),
                  TextFormField(),
                  SizedBox(
                    height: 15,
                  ),
                  Text("รหัสผ่าน", style: TextStyle(fontSize: 20)),
                  TextFormField(),
                  SizedBox(
                    width: double.infinity,
                    child: RaisedButton.icon(
                      icon: Icon(Icons.add),
                      label:
                      Text("ลงทะเบียน", style: TextStyle(fontSize: 20)),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context){
                              return RegisterScreen();
                            })
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: RaisedButton.icon(
                      icon: Icon(Icons.add),
                      label:
                      Text("เข้าสู่ระบบ", style: TextStyle(fontSize: 20)),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context){
                              return HomeScreen();
                            })
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: RaisedButton.icon(
                      icon: Icon(Icons.add),
                      label:
                      Text("ยกเลิก", style: TextStyle(fontSize: 20)),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context){
                              return RegisterScreen();
                            })
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
