import 'category_item.dart';

class CategorySetData {
  static List<CategoryItem>? categories;

  static List<CategoryItem>? getSetCategoryData() {
    if(categories != null) {
      return categories;
    }

    /** hardcode categories*/
    categories = [];

    categories?.add(CategoryItem("Flash Deal", "assets/icons/ic_flash.svg"));
    categories?.add(CategoryItem("Bill", "assets/icons/ic_bill.svg"));
    categories?.add(CategoryItem("Game", "assets/icons/ic_game.svg"));
    categories?.add(CategoryItem("Daily Gift", "assets/icons/ic_gift.svg"));
    categories?.add(CategoryItem("More", "assets/icons/ic_discover.svg"));

    return categories;
  }

}