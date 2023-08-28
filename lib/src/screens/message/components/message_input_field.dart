import 'package:flutter/material.dart';
import 'package:shop_ui/src/models/messages.dart';

import '../../../utils/app_constants.dart';

class MessageInputField extends StatelessWidget {

  TextEditingController _txtText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: tPaddingDefault,
        vertical: tPaddingDefault / 2,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 4),
            blurRadius: 32,
            color: const Color(0xFF087949).withOpacity(0.08),
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(
            Icons.sentiment_satisfied_alt_outlined,
            color: Theme.of(context)
                .textTheme
                .bodyLarge!
                .color!
                .withOpacity(0.64),
          ),
          const SizedBox(width: tPaddingDefault / 4),
           Expanded(
            child: TextField(
              controller: _txtText,
              decoration: InputDecoration(
                hintText: "Type message",
                border: InputBorder.none,
                suffixIcon: GestureDetector(
                  onTap: (){
                    print('send text...: ${_txtText.text}');
                    addMessage();
                  },
                  child: const Icon(
                    Icons.attach_file,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
          ),
          Icon(
            Icons.attach_file,
            color: Theme.of(context)
                .textTheme
                .bodyLarge!
                .color!
                .withOpacity(0.64),
          ),
          const SizedBox(width: tPaddingDefault / 4),
          Icon(
            Icons.camera_alt_outlined,
            color: Theme.of(context)
                .textTheme
                .bodyLarge!
                .color!
                .withOpacity(0.64),
          ),
        ],
      ),
    );
  }

  void addMessage() {
    MessageStatus messagesStatus = MessageStatus.not_sent;
    if (_txtText.text.length < 5) {
      messagesStatus = MessageStatus.not_view;
    } else if (_txtText.text.length > 4 && _txtText.text.length < 10) {
      messagesStatus = MessageStatus.viewed;
    }
    if (_txtText.text.isNotEmpty) {
      demoMessages.add(
          Messages('isSender', true, _txtText.text, 'time', messagesStatus));
    }
    demoMessages.forEach((element) {
      print(element.contentMessage);
    });
    _txtText.text = "";
  }
}