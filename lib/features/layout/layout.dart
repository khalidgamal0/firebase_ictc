import 'package:book_app/features/layout/cubit/layout_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LayoutView extends StatelessWidget {
  const LayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LayoutCubit(),
      child: BlocBuilder<LayoutCubit, LayoutState>(
        builder: (context, state) {
var cubit=LayoutCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              title: Text(cubit.titles[cubit.currentIndex]),
            ),
            body: cubit.bottomScreen[cubit.currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: cubit.currentIndex,
              onTap: (index) {
                cubit.changeBottomScreen(index);
              },
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home_sharp,), label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.category_rounded,), label: 'Category'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person,), label: 'Profile'),
              ],
            ),
          );
        },
      ),
    );
  }
}
