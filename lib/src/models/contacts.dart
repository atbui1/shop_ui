import 'package:shop_ui/src/models/messages.dart';
import 'package:shop_ui/src/models/user.dart';

class Contacts {
  String id;
  final User user;
  final List<Messages> messages;
  final bool isStatus;

  Contacts(this.id, this.user, this.messages, this.isStatus);
}

List<Contacts> demoContacts = [
  Contacts(
      "contact 1",
      User("uc1", "name user uc1", "assets/images/ps4_console_white_1.png"),
      [
        demoMessages[0],
        demoMessages[1],
        demoMessages[2],
      ],
      true),
  Contacts(
      "contact 2",
      User("uc12", "name user uc12", "assets/images/ps4_console_white_2.png"),
      [
        demoMessages[1],
        demoMessages[2],
        demoMessages[3],
      ],
      true),
  Contacts(
      "contact 3",
      demoListUser[0],
      [
        demoMessages[1],
        demoMessages[2],
        demoMessages[2],
      ],
      false),
  Contacts(
      "contact 4",
      demoListUser[1],
      [
        demoMessages[0],
        demoMessages[2],
        demoMessages[5],
      ],
      false),
  Contacts(
      "contact 5",
      demoListUser[2],
      [
        demoMessages[0],
        demoMessages[1],
        demoMessages[4],
      ],
      true),
  Contacts(
      "contact 6",
     demoListUser[3],
      [
        demoMessages[0],
        demoMessages[1],
        demoMessages[2],
      ],
      true),
];