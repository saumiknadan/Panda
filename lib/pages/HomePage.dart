import 'package:flutter/material.dart';
import 'package:panda/widgets/AppBarWidget.dart';

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
            padding: EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 15
            ) ,
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
                    offset: Offset(0, 3)
                  )
                ],
              ),
            ),
          
          )
        ],
      ),
    );
  }
}
