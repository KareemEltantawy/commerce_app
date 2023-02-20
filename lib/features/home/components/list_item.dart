import 'package:commerce_app/core/router/router.dart';
import 'package:commerce_app/features/category/category_view.dart';
import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final int index;
  ListItem({required this.index});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        if(index != 0){
          MagicRouter.navigateTo(CategoryView('Women'));
        }
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 19.0,vertical: 10.0),
        decoration: BoxDecoration(
          color: index == 0 ? Colors.white : Colors.grey[200],
          borderRadius: BorderRadius.circular(17.0),
        ),
          child: Text('Women',style: TextStyle(
              fontSize: 12.0,
            fontWeight: FontWeight.w400
          ),)),
    );
  }
}
