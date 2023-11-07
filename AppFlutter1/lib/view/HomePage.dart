import 'package:appflutter1/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class api extends StatelessWidget {


  apicontroller controller = Get.put(apicontroller());
  @override
  Widget build(BuildContext context) {
    const primaryColor = Colors.black;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("Result",
            style: TextStyle(
                color: Colors.black),),

        ),
      body: FutureBuilder(
        future: controller.fetchposts(),
          builder: (con , snap){
      if (snap.data != null){
        return ListView.builder(
            itemBuilder: (con , index){
              return Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.purpleAccent,
                  borderRadius: BorderRadius.circular(30)
                ),
                child: ListTile(
                  title: Text(snap.data![index].title),
                  subtitle: Text(snap.data![index].body),
                ),
              );
            });

      }else{
        return Center(child: CircularProgressIndicator(),);
      }

          }
      )
    );
  }
}






