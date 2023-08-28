import 'package:flutter/material.dart';
import 'package:shop_ui/src/models/contacts.dart';
import 'package:shop_ui/src/models/messages.dart';
import 'package:shop_ui/src/screens/message/components/message_input_field.dart';

import 'message_card.dart';

class Body extends StatelessWidget {
  final Contacts contact;

  Body({required this.contact});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("1 chat messages ${demoMessages.length}"),
        Text("2 chat messages: "
            "${contact.id} + "
            "${contact.messages.last.contentMessage} +"
            " ${contact.isStatus} +"
            "${contact.user.id} +"
            "${contact.user.avatar} "),
        Expanded(child: ListView.builder(
          itemCount: demoMessages.length,
          itemBuilder: (context, index) {
            return MessageCard(demoMessages[index]);
          },
        )),
        MessageInputField(),
      ],
    );
  }

}