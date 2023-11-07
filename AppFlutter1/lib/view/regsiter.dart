import 'package:appflutter1/view/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({super.key});

  @override
  State<MyRegister> createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/signup.jpg"),fit:BoxFit.cover),),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
              elevation: 0,
        ),

        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left:35, top: 130),
              child: Text(
                "Create\n Account", style: TextStyle(
                  color: Colors.white,
                  fontSize: 33),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.28 ,
                    right: 35,
                    left: 35),

                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.black,),),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.black,),),

                          fillColor: Colors.grey.shade100,
                          filled: true,
                          hintText: 'Name',
                          hintStyle: TextStyle(color: Colors.grey),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.black,),),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.black,),),
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          hintText: 'Email',
                          hintStyle: TextStyle(color: Colors.grey),
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
                            Navigator.pushNamed(context, 'Login');
                          },
                          child:Text('Sign In', style: TextStyle(
                              color: Colors.grey,
                              fontSize: 27,
                              fontWeight: FontWeight.w700
                          ),),),
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.grey,
                          child: IconButton(
                            color: Colors.white,
                            onPressed: (){
                              // Get.toNamed("api");
                             Navigator.pushNamed(context, 'api');
                            },
                            icon: Icon(Icons.arrow_forward),

                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        TextButton(onPressed: (){
                          // Get.toNamed("login");
Navigator.pushNamed(context, 'login');
},
                          child:
                          Text("Sign Up",
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 18,
                                color: Colors.black),
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
