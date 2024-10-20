import 'package:flutter/material.dart';

class CategoriesListViewItem extends StatelessWidget {
  const CategoriesListViewItem({Key? key, required this.index}) : super(key: key);

  final int index;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/images/card_1.png', height: 100,
          width: 100,
          fit: BoxFit.cover,),
        // Image(image: NetworkImage(cubit.category[index].image!),
        //   height: 100,
        //   width: 100,
        //   fit: BoxFit.cover,
        // ),
        Positioned(
          bottom: 0,
          child: Container(
            alignment: Alignment.center,
            width: 100,
            color: Colors.black.withOpacity(0.8),
            child:  Text(
              // cubit.category[index].name!,
              'lll',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style:const TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}