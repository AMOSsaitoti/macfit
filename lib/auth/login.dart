import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
        title: Text('Macfit'),
        centerTitle: true,
        backgroundColor:Color.fromARGB(255, 239, 102, 5) ,
     ),
     
      body: Padding(
        padding: const EdgeInsets.all(45.0),
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
                Center(
                  
                  child: Padding(
                    padding: const EdgeInsets.only(top: 90),
                    child: Text('Login', style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 21.0,
                        ),),
                  ),
                ),
                 TextField(
                      decoration: InputDecoration(
                               label: Text('Email'),
                               border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                      )
                      ),
                  ),
                  SizedBox(height: 10,),
                 
                 TextField(
                      decoration: InputDecoration(
                               label: Text('password'),
                               prefix: Icon(Icons.lock),
                               border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                      )
                      ),
                  ),
                
                SizedBox(height: 10,),
                ElevatedButton(onPressed:(){} ,  child: Text('login')),
                SizedBox(height: 10,),
                RichText(text: TextSpan(children: [
                TextSpan(text: 'Don\'t have an account?'),
                TextSpan(text: 'Register', recognizer:TapGestureRecognizer(), )
                ]
               ))
                 
            ]),
        ),
      ),
    );
  }
}
      