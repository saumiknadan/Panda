import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:panda/widgets/AppBarWidget.dart';
import 'package:panda/widgets/CategoryWidget.dart';

import '../widgets/PopularItemWidget.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
      ),
      body: ListView(
        children: [
          // Custom APPbar
          AppBarWidget(),

          // SearchBar
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: Offset(0, 3))
                ],
              ),
              child: Padding(padding: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Row(
                children: [
                  Icon(
                    CupertinoIcons.search,
                    color: Colors.red,),
                  Container(
                    height: 50,
                    width: 300,
                    child: Padding(
                      padding:EdgeInsets.symmetric(
                        horizontal: 15,
                      ) ,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "What would you like to order?",
                          border: InputBorder.none,
                        ),
                      ),
                      ),
                  ),
                  Icon(Icons.filter_list),
                ]),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 10),
            child: Text("Categories",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            ),

            // Category Widget
            CategoryWidget(),

            // Popular Item
              Padding(
            padding: EdgeInsets.only(top: 20, left: 10),
            child: Text("Popular Item",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            ),

             // Popular Item Widget
            PopularItemWidget(),
        ],
      ),
    );
  }
}
