
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(80.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Welcome",
                style: Theme.of(context).textTheme.headline1,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "User name"
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Pass word",

                ),
                obscureText: true,
              ),
              SizedBox(height: 24,),
              ElevatedButton(
                child: Text("Enter"),
                onPressed: (){
                  Navigator.pushReplacementNamed(context, '/catalog');

                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.yellow
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
