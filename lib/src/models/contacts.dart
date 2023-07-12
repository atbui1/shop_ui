import 'package:shop_ui/src/models/messages.dart';
import 'package:shop_ui/src/models/user.dart';

class Contacts {
  // final String id, name, avatar;
  String id;
  final User user;
  final List<Messages> messages;
  final bool isStatus;

  Contacts(this.id, this.user, this.messages, this.isStatus);
}

List<Contacts> demoContacts = [
  Contacts(
      "cc1",
      User("uc1", "name user uc1", "assets/images/ps4_console_white_1.png"),
      [
        demoMessages[0],
        demoMessages[1],
        demoMessages[2],
        demoMessages[3],
      ],
      true),
  Contacts(
      "cc12",
      User("uc12", "name user uc12", "assets/images/ps4_console_white_2.png"),
      [
        demoMessages[0],
        demoMessages[1],
        demoMessages[2],
        demoMessages[3],
      ],
      true),
  Contacts(
      "c1",
      demoListUser[0],
      [
        demoMessages[0],
        demoMessages[1],
        demoMessages[2],
        demoMessages[3],
      ],
      true),
  Contacts(
      "c2",
      demoListUser[1],
      [
        demoMessages[0],
        demoMessages[1],
        demoMessages[2],
        demoMessages[3],
      ],
      true),
  Contacts(
      "c3",
      demoListUser[2],
      [
        demoMessages[0],
        demoMessages[1],
        demoMessages[2],
        demoMessages[3],
      ],
      true),
  Contacts(
      "c4",
     demoListUser[3],
      [
        demoMessages[0],
        demoMessages[1],
        demoMessages[2],
        demoMessages[3],
      ],
      true),
  // Chats(
  //     "c4",
  //     "user 1",
  //     "assets/images/ps4_console_white_4.png",
  //     [
  //       demoMessages[0],
  //       demoMessages[1],
  //       demoMessages[2],
  //       demoMessages[3],
  //     ],
  //     true)
];