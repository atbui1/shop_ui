import 'package:flutter/material.dart';

class HomeMenu extends StatefulWidget {
  const HomeMenu({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    // throw UnimplementedError();
    return _HomeMenuState();
  }
}

class _HomeMenuState extends State<HomeMenu> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return(
    ListView(children: [
        ListTile(
          onTap: () {
            print("menu 111111111");
          },
          title: const Text(
            "menu 1",
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          leading: Padding(
            padding: const EdgeInsets.all(15),
              child: Image.asset("assets/icons/ic_menu_1.png")),
        ),
      ListTile(
        onTap: () {
          print("menu 22222222222222");
        },
        title: const Text(
          "menu 2",
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        leading: Padding(
            padding: const EdgeInsets.all(15),
            child: Image.asset("assets/icons/ic_menu_1.png")),
      ),
      ListTile(
        onTap: () {
          print("menu 333333333333333");
        },
        title: const Text(
          "menu 3",
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        leading: Padding(
            padding: const EdgeInsets.all(15),
            child: Image.asset("assets/icons/ic_menu_1.png")),
      ),
      ],)
    );
  }
}