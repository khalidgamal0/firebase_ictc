import 'package:flutter/material.dart';

import 'widgets/category_list_item.dart';


class CategroyScreen extends StatelessWidget {
  const CategroyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) =>
              CategoriesListViewItem(index: index),
          separatorBuilder: (context, index) =>const Divider(thickness: 1),
          itemCount: 6),
    );;
  }
}
