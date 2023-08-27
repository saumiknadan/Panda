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
          AppBarWidget(),
        ],
      ),
    );
  }
}
