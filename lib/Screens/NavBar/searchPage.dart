import 'package:flutter/material.dart';

import '../../Widgets/appBar.dart';
import '../../Widgets/category_item.dart';
import '../../app_data.dart';

class searchPage extends StatefulWidget {
  const searchPage({Key? key}) : super(key: key);

  @override
  State<searchPage> createState() => _searchPageState();
}

class _searchPageState extends State<searchPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: appBar(shadow: 0, context: context,  height: 80),
      body: GridView(
        padding: EdgeInsets.all(10),
        gridDelegate:const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 250,
          childAspectRatio: 7/9,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        children: Categories_data.map((e) => categoryitem( e.title ,e.imageUrl)).toList(),
      ),
    );
  }

}
