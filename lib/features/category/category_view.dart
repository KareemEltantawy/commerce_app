import 'package:commerce_app/features/category/components/grid_item.dart';
import 'package:flutter/material.dart';

class CategoryView extends StatelessWidget {
  final String title;
  CategoryView(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$title'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: GridView.count(
          physics: BouncingScrollPhysics(),
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
          childAspectRatio: MediaQuery.of(context).size.width/610,
          children: List.generate(12, (index) => GridItem()),
        ),
      ),
    );
  }
}
