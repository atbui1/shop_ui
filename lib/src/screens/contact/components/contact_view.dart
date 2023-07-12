import 'package:flutter/material.dart';
import '../../../models/contacts.dart';

class ContactView extends StatefulWidget {

  final Contacts contactsItem;
  ContactView(this.contactsItem);

  @override
  State<StatefulWidget> createState() {
    return _ContactState();
  }

}

class _ContactState extends State<ContactView> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          color: Colors.orange,
          width: 100,
          child: Stack(
            children: [
            AspectRatio(
              aspectRatio: 0.9,
              // child: Container(
              //   decoration: BoxDecoration(
              //     // color: const Color(0xFFF5F6F9),
              //     color: Colors.red,
              //     borderRadius: BorderRadius.circular(15),
              //   ),
              //   // child: Image.asset(widget.chatsItem.user.avatar),
              //   child: CircleAvatar(
              //     backgroundColor: Colors.yellow,
              //     backgroundImage: AssetImage(widget.chatsItem.user.avatar),
              //   ),
              //   // child: Image.asset(""),
              // ),
              child: CircleAvatar(
                backgroundColor: Colors.yellow,
                child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Image.asset(widget.contactsItem.user.avatar)),
              ),
            ),
              Positioned(
                bottom: 10,
                right: 10,
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.green,
                  ),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  /** name user */
                  Container(

                    width: MediaQuery.of(context).size.width - 240,
                    child: Text(
                      // cartItem.product.title,
                      "name: sdasdasdasdasdas ${widget.contactsItem.user.name}",
                      // "name",
                      style: const TextStyle(
                        fontSize: 17,
                        color: Colors.red,
                        fontWeight: FontWeight.w500,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  /** time sent messages */
                  Container(
                    width: 100,
                    color: Colors.blue,
                    child: Text(
                      // widget.contactsItem.messages[0].time,
                      "1456787859",
                      style: const TextStyle(
                        fontSize: 17,
                        color: Colors.orange,
                        fontWeight: FontWeight.w500,
                        overflow: TextOverflow.ellipsis,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  /** name user */
                  Container(
                    color: Colors.cyan,
                    width: 100,
                    child: Text(
                      // cartItem.product.title,
                      "name: sdasdasdasdasdas ${widget.contactsItem.user.name}",
                      // "name",
                      style: const TextStyle(
                        fontSize: 17,
                        color: Colors.red,
                        fontWeight: FontWeight.w500,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  /** time sent messages */
                  Container(
                    alignment: Alignment.centerRight,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    color: Colors.black,
                    child: Text(
                      // widget.contactsItem.messages[0].time,
                      "159",
                      style: const TextStyle(
                        fontSize: 17,
                        color: Colors.orange,
                        fontWeight: FontWeight.w500,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ],
              ),
              /** last text message */
              // Row(
              //   children: [
              //     Text(
              //       "mess: ${widget.contactsItem.messages.last.messages}",
              //       style: const TextStyle(
              //         fontSize: 17,
              //         color: Colors.green,
              //         fontWeight: FontWeight.w500,
              //         overflow: TextOverflow.ellipsis,
              //       ),
              //     ),
              //     /** time 2*/
              //     Text(
              //        widget.contactsItem.messages[0].time,
              //       style: const TextStyle(
              //         fontSize: 17,
              //         color: Colors.orange,
              //         overflow: TextOverflow.ellipsis,
              //       ),
              //     ),
              //   ],
              // ),

              // Text(
              //   // cartItem.product.title,
              //   "name: ${widget.contactsItem.user.name}",
              //   // "name",
              //   style: const TextStyle(
              //     fontSize: 17,
              //     color: Colors.red,
              //     fontWeight: FontWeight.w500,
              //   ),
              //   maxLines: 2,
              // ),
              // const SizedBox(height: 5,),
              // Text(
              //   "mess: ${widget.contactsItem.messages.last.messages}",
              //   style: const TextStyle(
              //     fontSize: 17,
              //     color: Colors.green,
              //     fontWeight: FontWeight.w500,
              //   ),
              // ),
              // const SizedBox(height: 5,),
              // Text(
              //   "time: ${widget.contactsItem.messages[0].time}",
              //   style: const TextStyle(
              //     fontSize: 17,
              //     color: Colors.orange,
              //     fontWeight: FontWeight.w500,
              //   ),
              // ),
              // const SizedBox(height: 5,),
            ],
          ),
        ),
      ],
    );
  }

}