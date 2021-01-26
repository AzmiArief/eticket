import 'package:eticket/services/services.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                child: Text("Sign Up"),
                onPressed: () async {
                  SignInSignUpResult result = await AuthService.signUp(
                    "azrief789@gmail.com",
                    "smkMQ",
                    "Azmi",
                    ["Action","Horror","Gore"],
                    "Indonesia"
                  );

                  if(result.user == null) {
                    print(result.massage);
                  }else{
                    print(result.user.toString());
                  }
                }
                )
            ],
          ),
        ),
      ),
    );
  }
}