import 'package:flutter/material.dart';


class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image.asset("images/logo.jpg")),

          Container(
            padding: EdgeInsets.all(20),
            child: Form(child: Column(children: [
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.phone_android),
                  hintText: "Phon Number",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 2)
                  ),
                ),
              ),
              SizedBox(height: 10,),

              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.password),
                  hintText: "Password",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 1)
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Row(
                children: [
                  Text("If you don't have aaccount "),
                  InkWell(
                    onTap: (){
                      Navigator.of(context).pushNamed("signup");
                    },
                    child: Text("click Here" ,
                    style: TextStyle(color: Colors.blue),),)
                ],
              ),
                
              ),
              Container(child:RaisedButton(
                textColor: Colors.white,
                onPressed: (){
                  Navigator.of(context).pushReplacementNamed("homepage");
                } ,
                child: Text("Login", style: TextStyle(fontSize: 20),),),)
            ],)),
          )
        ],
      )

    );
  }
}
