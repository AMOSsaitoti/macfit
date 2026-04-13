import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,

        appBar: AppBar(
        title: Text('App bar'),
        centerTitle: true,
        backgroundColor:Colors.blueGrey ,
     ),
     
      body: Padding(
        padding: const EdgeInsets.all(45.0),
          child: Column(
            children: [
                Center(
  
                  child: Padding(
                    padding: const EdgeInsets.only(top: 0),
                    child: Text('Register', style: TextStyle(
                            color: Colors.black26,
                            fontWeight: FontWeight.bold,
                            fontSize: 21.0,
                            
                        ),)
                  ),
                ),
                TextField(
                      decoration: InputDecoration(
                               label: Text('name'),
                               border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                      )
                      ),
                  ),
                 TextField(
                      decoration: InputDecoration(
                               label: Text('Email'),
                              prefixIcon:  Icon(Icons.email),
                               border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                      )
                      ),
                  ),

                  SizedBox(height: 10,),
                 
                 TextField(
                  obscureText: true,
                      decoration: InputDecoration(
                               label: Text('password'),
                               prefixIcon: Icon( Icons.lock),
                               suffixIcon: Icon( Icons.visibility_off),
                               border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                      )
                      ),
                  ),

                  SizedBox(height: 10,),

                  TextField(
                      decoration: InputDecoration(
                               label: Text('phone number'),
                              prefixIcon:  Icon(Icons.phone),
                               border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                      )
                      ),
                  ),

                 SizedBox(height: 10,),

                TextField(
                      decoration: InputDecoration(
                               label: Text('gender'),
                               border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                      )
                      ),
                  ),
                SizedBox(height: 10,),

                TextField(
                      decoration: InputDecoration(
                               label: Text('date of birth'),
                               border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                      )
                      ),
                  ),
                SizedBox(height: 10,),
                TextField(
                      decoration: InputDecoration(
                               label: Text('gym location'),
                               border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                      )
                      ),
                  ),
                 SizedBox(height: 10,),

                ElevatedButton(onPressed:(){} ,  child: Text('Sign up')),
                SizedBox(height: 10,),
                RichText(text: TextSpan(children: [
                TextSpan(text: 'Already have an account?'),
                TextSpan(text: 'Login', recognizer:TapGestureRecognizer(), )
                ]
               ))
                 
            ]),
       
      ),
 
    );
  }
}