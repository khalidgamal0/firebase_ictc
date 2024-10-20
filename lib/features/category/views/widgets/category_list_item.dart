import 'package:flutter/material.dart';

class CategoriesListViewItem extends StatelessWidget {
  const CategoriesListViewItem(
      {Key? key, required this.index, })
      : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Image.asset('assets/images/card_1.png'
          ,
          height: 100,
          width: 100,
          fit: BoxFit.cover,          ),
          // Image.network(
          //   cubit.category[index].image!,
          //   height: 100,
          //   width: 100,
          //   fit: BoxFit.cover,
          // ),
          const SizedBox(
            width: 20,
          ),
          Text(
            // cubit.category[index].name!,
            'sddddd',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const Spacer(),
          const Icon(
            Icons.arrow_forward_ios_outlined,
          )
        ],
      ),

    );
  }
}