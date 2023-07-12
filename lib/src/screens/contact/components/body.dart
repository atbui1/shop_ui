import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_ui/src/models/contacts.dart';
import 'package:shop_ui/src/screens/contact/components/contact_view.dart';



class Body extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BodyState();
  }
}

class _BodyState extends State<Body> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: demoContacts.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Dismissible(
            // key: Key(demoListCart[index].product.id.toString()),
            key: Key(demoContacts[index].id),
            direction: DismissDirection.endToStart,
            onDismissed: (direction) {
              setState(() {
                demoContacts.removeAt(index);
              });
            },
            background: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: const Color(0xFFFFE6E6),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  const Spacer(),
                  SvgPicture.asset("assets/icons/ic_delete.svg")
                ],
              ),
            ),
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: ContactView(demoContacts[index])),
          ),
        );

      },
    );
  }

}