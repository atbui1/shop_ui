import 'package:flutter/material.dart';
import 'package:shop_ui/src/screens/message/message_page.dart';
import 'package:shop_ui/src/utils/app_constants.dart';
import 'package:shop_ui/src/utils/app_size_config.dart';
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
    return GestureDetector(
      onTap: (){
        print("1111: ${widget.contactsItem.id}");
        // Navigator.push(context, MaterialPageRoute(builder: (context) => MessagePage()));
        Navigator.push(context, MaterialPageRoute(builder: (context) => MessagePage(contact: widget.contactsItem)));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 5,
          vertical: 10
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          // border: Border.all(
          //   color: Colors.red,
          //   width: 1,
          //   style: BorderStyle.solid,
          // ),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, -5),
                blurRadius: 10,
                color: tSecondaryColor.withOpacity(0.15)
            ),
          ],
        ),
        child: Row(
          children: [
            /** img avatar */
            SizedBox(
              width: 60,
              child: Stack(
                children: [
                AspectRatio(
                  aspectRatio: 0.9,
                  child: CircleAvatar(
                    backgroundColor: Colors.yellow,
                    child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Image.asset(widget.contactsItem.user.avatar)),
                  ),
                ),
                  widget.contactsItem.isStatus ?
                  Positioned(
                    bottom: 5,
                    right: 5,
                    child: Container(
                      width: 15,
                      height: 15,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.green,
                      ),
                    ),
                  ) : Positioned(
                          bottom: 5,
                          right: 5,
                          child: Container(
                            width: 15,
                            height: 15,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: tSecondaryColor,
                            ),
                          ),
                        )
                ],
              ),
            ),
            /** content messages */
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        /** name user */
                        Expanded(
                          child: Text(
                            widget.contactsItem.user.name,
                            // "name",
                            style: const TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              overflow: TextOverflow.ellipsis,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                        ),
                        /** time sent messages */
                        SizedBox(
                          width: getProportionateScreenWidth(80),
                          child: Text(
                            widget.contactsItem.messages[0].time,
                            style: const TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w300,
                              overflow: TextOverflow.ellipsis,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        /** last message */
                        Expanded(
                          child: Text(
                            widget.contactsItem.messages.last.contentMessage,
                            // "name",
                            style: const TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w300,
                              overflow: TextOverflow.ellipsis,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                        ),
                        /** status messages */
                        SizedBox(
                          width: getProportionateScreenWidth(50),
                          child: const Text(
                            "seen",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w300,
                              overflow: TextOverflow.ellipsis,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}