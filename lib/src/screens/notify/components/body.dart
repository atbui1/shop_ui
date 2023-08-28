import 'package:flutter/material.dart';

import '../custom_page.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Center(
      child: Hero(
        tag: 'hero',
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CustomPage(),
              ),
            );
          },
          child: Image.asset('assets/images/bag_1.png',),
        ),
      ),
    ));
  }

}