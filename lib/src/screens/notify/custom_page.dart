import 'package:flutter/material.dart';

class CustomPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('custom page'),
      ),
      body: Container(
        child: Hero(
          tag: 'hero',
          child: Image.asset('assets/images/bag_1.png', fit: BoxFit.fitHeight,),
        ),
      ),
    );
  }

}