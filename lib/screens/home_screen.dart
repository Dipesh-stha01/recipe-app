import 'package:flutter/material.dart';
import 'package:recipe_app/components/home_appbar.dart';
import 'package:recipe_app/constants/images_path.dart';

import '../components/tab_bar_Widget.dart';
import '../components/text_field_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HomeAppBar(),
                SizedBox(
                  height: h * 0.022,
                ),
                const TextFieldWidget(),
                SizedBox(height: h * 0.022),
                Container(
                  height: h * 0.25,
                  width: w,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(ImagesPath.explore),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                SizedBox(height: h * 0.023),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Categories',
                      style: TextStyle(
                        fontSize: w * 0.045,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text('see all'),
                    SizedBox(
                      width: w * 0.022,
                    ),
                  ],
                ),
                SizedBox(
                  height: h * 0.022,
                ),
                const TabBarWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
