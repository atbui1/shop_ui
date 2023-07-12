import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_ui/src/blocs/category_bloc.dart';
import 'package:shop_ui/src/utils/app_constants.dart';

class CategoryCard extends StatefulWidget {
  const CategoryCard({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    // throw UnimplementedError();
    return _CategoryCardState();
  }
}

class _CategoryCardState extends State<CategoryCard> {
  CategoryBloc categoryBloc = CategoryBloc();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return Center(
      child: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        height: 110,
        padding: const EdgeInsets.all(0),
        decoration: BoxDecoration(
          // color: const Color(0xFF4A1111),
          borderRadius: BorderRadius.circular(0),
        ),
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: categoryBloc.categories!.length,
          itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3),
            child: TextButton(
              onPressed: (){
                categoryBloc.selectedCategory(index);
                print('"currentSelected: ${categoryBloc.currentSelected}');
                print('"isSelected: ${categoryBloc.isSelected(index)}');
                setState(() {

                });
                },
              style: TextButton.styleFrom(
                backgroundColor: categoryBloc.isSelected(index) ? Colors.white : Colors.black12,
              ),
              child: SizedBox(
                width: (MediaQuery.of(context).size.width * 0.9 - 50)/ (categoryBloc.categories!.length + 1),
                child: Column(
                  children: [
                    Container(
                      width: 50,
                     height: 50,
                     padding: const EdgeInsets.all(10),
                     decoration: BoxDecoration(
                       borderRadius: const BorderRadius.all(Radius.circular(10)),
                       color: tPrimaryColor.withOpacity(0.2),
                       border: Border.all(
                         color: tPrimaryColor,
                         style: BorderStyle.solid,
                         width: 1,
                       ),
                     ),
                     child: SvgPicture.asset(categoryBloc.categories!.elementAt(index).icon),
                    ),
                    Text(
                    categoryBloc.categories!.elementAt(index).name,
                    style:  TextStyle(
                      fontSize: 17,
                      color: tPrimaryColor.withOpacity(0.5),
                    ),
                    textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          );
        },),
      ),
    );
  }

}