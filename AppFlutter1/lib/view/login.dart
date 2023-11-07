import 'package:appflutter1/view/regsiter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyLogin extends StatefulWidget {

  @override
  State<MyLogin> createState() => _MyLoginState();
}
class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left:35, top: 130),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/login.jpg"),fit:BoxFit.cover),),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              child: Text("Welcome\n Back", style: TextStyle(
                color: Colors.white,
                fontSize: 33),
              ),
            ),
            SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.5 ,
                right: 35,
                left: 35),

              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade100,
                      filled: true,
                      hintText: 'Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: 'Password',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),

                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                          onPressed: (){
                           Get.toNamed("MyRegister");
                        // Navigator.pushNamed(context, 'MyRegister');
                        },
                        child:Text('Sign In', style: TextStyle(
                          color: Colors.pink,
                          fontSize: 27,
                          fontWeight: FontWeight.w700
                      ),),),
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.pink,
                        child: IconButton(
                          color: Colors.white,
                          onPressed: (){
                            Navigator.pushReplacementNamed(context, 'api');
                          },
                          icon: Icon(Icons.arrow_forward),

                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      TextButton(
                        onPressed: (){
                          // Get.toNamed("MyRegister");
Navigator.pushNamed(context,'MyRegister' );
},
                        child:
                        Text("Sign Up",
                        style: TextStyle(
                        decoration: TextDecoration.underline,
                          fontSize: 18,
                        color: Colors.pinkAccent),
                      ),
                      ),
                      TextButton(onPressed: (){
                        
                      },
                        child:
                        Text("Forgot Password",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 18,
                            color: Colors.pinkAccent),
                      ),
                      ),
                    ],
                  )
            ],
              ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}
