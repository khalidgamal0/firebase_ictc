import 'package:flutter/material.dart';

class HomeProductsGridViewItem extends StatelessWidget {
  const HomeProductsGridViewItem({Key? key, required this.index}) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/images/card_1.png', width: double.infinity,
            height: 150,),
          // Image.network(
          //   cubit.product[index].image!,
          //   width: double.infinity,
          //   height: 150,
          // ),
          const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              // cubit.product[index].name!,
              'ddd',
              style:const TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(height: 10,),
          Text(
            // cubit.product[index].price!,
            '250',
            overflow: TextOverflow.ellipsis,
            style:const TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
          ),        ],
      ),
    );
  }
}