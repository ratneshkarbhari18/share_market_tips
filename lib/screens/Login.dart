import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../utils/Constants.dart';
import 'Home.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final prefs = Constants.prefs;


  var _loginError = "";

  _loginExe(){
    
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: ListView(
            children: [
              Image.asset("assets/images/bull_bear.jpg"),
              Text(_loginError),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    labelText: "Login Id",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4.0)),
                    )),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextField(
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4.0)),
                    )),
              ),
              SizedBox(
                height: 20.0,
              ),
              MaterialButton(
                height: 50.0,
                onPressed: _loginExe,
                color: Colors.indigo,
                child: Text("Login",style: TextStyle(color: Colors.white,fontSize: 16.0)),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
              ),
              SizedBox(height: 50,),
              GestureDetector(
                child: Text("To Home Page"),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=> Home()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
