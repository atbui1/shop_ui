import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_ui/src/models/messages.dart';
import 'package:shop_ui/src/screens/message/components/text_message.dart';
import 'package:shop_ui/src/utils/app_constants.dart';
import 'package:shop_ui/src/utils/app_size_config.dart';

class MessageCard extends StatelessWidget {

  final Messages messages;


  MessageCard(this.messages);


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: messages.isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        !messages.isSender ?
        Row(
          children: [
            Container(
                padding: const EdgeInsets.all(5),
                constraints: const BoxConstraints(minWidth: 20, maxWidth: 30),
                child: const CircleAvatar(backgroundImage: AssetImage("assets/images/bag_1.png"),)
            ),
            TextMessage(messages.contentMessage) ,
          ],
        ) :
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextMessage(messages.contentMessage) ,
            Container(
                  padding: const EdgeInsets.all(5),
                  constraints: const BoxConstraints(minWidth: 20, maxWidth: 25),
                child: CircleAvatar(
                  child: SvgPicture.asset(
                      messages.messageStatus == MessageStatus.not_sent ? "assets/icons/not_sent.svg" :
                      (messages.messageStatus == MessageStatus.not_view ? "assets/icons/not_view.svg" : "assets/icons/viewed.svg")
                  ),
                ),
            ),
          ],
        )
      ],
    );
  }
  
}