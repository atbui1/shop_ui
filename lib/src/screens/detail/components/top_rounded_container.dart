import 'package:flutter/cupertino.dart';
import 'package:shop_ui/src/utils/app_size_config.dart';

class TopRoundedContainer extends StatelessWidget {
  final Color color;
  final Widget widget;

  TopRoundedContainer(this.color, this.widget);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();

    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        )
      ),
      child: widget,
    );
  }

}