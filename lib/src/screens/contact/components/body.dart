import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
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
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Slidable(
            // Specify a key if the Slidable is dismissible.
            key: Key(demoContacts[index].id),

            // The start action pane is the one at the left or the top side.
            startActionPane: ActionPane(
              // A motion is a widget used to control how the pane animates.
              motion: const ScrollMotion(),

              // A pane can dismiss the Slidable.
              dismissible: DismissiblePane(onDismissed: () {
                setState(() {
                  demoContacts.removeAt(index);
                });
              }),

              // All actions are defined in the children parameter.
              children: const [
                // A SlidableAction can have an icon and/or a label.
                SlidableAction(
                  onPressed: null,
                  backgroundColor: Color(0xFFFE4A49),
                  foregroundColor: Colors.white,
                  icon: Icons.delete,
                  label: 'Delete',
                ),
                SlidableAction(
                  onPressed: null,
                  backgroundColor: Color(0xFF21B7CA),
                  foregroundColor: Colors.white,
                  icon: Icons.share,
                  label: 'Share',
                ),
              ],
            ),
            // The end action pane is the one at the right or the bottom side.
            endActionPane: const ActionPane(
              motion: ScrollMotion(),
              children: [
                SlidableAction(
                  // An action can be bigger than the others.
                  flex: 2,
                  onPressed: null,
                  backgroundColor: Color(0xFF7BC043),
                  foregroundColor: Colors.white,
                  icon: Icons.archive,
                  label: 'Archive',
                ),
                SlidableAction(
                  onPressed: null,
                  padding: EdgeInsets.all(10),
                  backgroundColor: Color(0xFF0392CF),
                  foregroundColor: Colors.white,
                  icon: Icons.save,
                  label: 'Save',
                ),
              ],
            ),
            // The child of the Slidable is what the user sees when the
            // component is not dragged.
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: ContactView(demoContacts[index])),
          ),
        );
      },
    );
  }

}