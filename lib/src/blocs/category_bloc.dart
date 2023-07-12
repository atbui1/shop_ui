import 'dart:async';

import 'package:shop_ui/src/models/category_item.dart';
import 'package:shop_ui/src/models/category_set_data.dart';

class CategoryBloc {
  final StreamController _categoryController = StreamController();

  Stream get categoryStream => _categoryController.stream;

  var categories = CategorySetData.getSetCategoryData();
  var currentSelected = 0;

  void selectedCategory(int positions) {
    currentSelected = positions;
    _categoryController.sink.add(currentSelected);
  }

  bool isSelected(int positions) {
    return currentSelected == positions;
  }

  CategoryItem getCurrentCategory() {
    return categories!.elementAt(currentSelected);
  }

  void dispose() {
    _categoryController.close();
  }
}