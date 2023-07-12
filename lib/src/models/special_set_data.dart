
import 'special_item.dart';

class SpecialSetData {
  static List<SpecialItem>? specials;

  static List<SpecialItem>? getSetSpecialData() {
    if(specials != null) {
      return specials;
    }

    /** hardcode products*/
    specials = [];

    specials?.add(SpecialItem("phone", "assets/images/img_banner_1.png", 10, "Apple"));
    specials?.add(SpecialItem("computer", "assets/images/img_banner_2.png", 5, "Samsung"));
    specials?.add(SpecialItem("tablet", "assets/images/img_banner_1.png", 16, "GooGle"));
    specials?.add(SpecialItem("laptop", "assets/images/img_banner_2.png", 3, "Huawei"));
    specials?.add(SpecialItem("headphone", "assets/images/img_banner_2.png", 10, "Microsoft"));
    specials?.add(SpecialItem("smart watch", "assets/images/img_banner_1.png", 20, "LG"));
    specials?.add(SpecialItem("television", "assets/images/img_banner_2.png", 7, "Sony"));

    return specials;
  }

}