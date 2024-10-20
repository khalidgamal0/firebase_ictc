import 'package:book_app/features/home/views/widgets/home_list_view_item.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'widgets/home_grid_view_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarouselSlider(
              items: [
                Image.asset('assets/images/card_1.png'),
                Image.asset('assets/images/card_1.png'),
                Image.asset('assets/images/card_1.png'),
              ],
              options: CarouselOptions(
                height: 250.0,
                initialPage: 0,
                viewportFraction: 1.0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(seconds: 1),
                autoPlayCurve: Curves.fastOutSlowIn,
                scrollDirection: Axis.horizontal,
              ),
            ),
            const Text('Categories',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            SizedBox(
              height: 100,
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: 8,
                separatorBuilder: (context, index) => const SizedBox(width: 15),
                itemBuilder: (context, index) => CategoriesListViewItem(
                  index: index,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text('New Products',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            Container(
              color: Colors.grey[300],
              child: GridView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 2,
                  childAspectRatio: 1 / 1.3,
                  crossAxisSpacing: 2,
                ),
                itemCount: 8,
                itemBuilder: (context, index) =>
                    HomeProductsGridViewItem(index: index),
              ),
            )
          ],
        ),
      ),
    );
  }
}
