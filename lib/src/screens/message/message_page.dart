import 'package:flutter/material.dart';
import 'package:shop_ui/src/models/contacts.dart';

import '../message/components/body.dart';

class MessagePage extends StatelessWidget {

  Contacts contact;


  MessagePage({required this.contact});

  static String routeName = "/message";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text(
              "Messages",
              style: TextStyle(
                fontSize: 20,
                color: Colors.red,
              ),
            ),
          ),
          body: Body(contact: contact,),
        ));
  }
}
// class getContact {
//   final Contacts contact;
//
//   getContact(this.contact);
// }