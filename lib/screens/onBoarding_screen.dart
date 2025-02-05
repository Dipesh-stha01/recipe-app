import 'package:flutter/material.dart';
import 'package:recipe_app/constants/images_path.dart';
import 'package:recipe_app/screens/home.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SizedBox(
        height: h,
        width: w,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              child: Container(
                height: h * .79,
                width: w,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(ImagesPath.onBoardingBackground),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Center(
              child: Image.asset(ImagesPath.onBoardingTitle),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                height: h * .243,
                width: w,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: h * 0.032),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Let\'s cook some delicious food 😋',
                        style: TextStyle(
                          fontSize: w * .06,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: h * 0.01),
                      const Text(
                        'Check out the app and start cooking🍽️',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SizedBox(height: h * 0.032),
                      SizedBox(
                        width: w * 0.8,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const Home(),
                              ),
                            );
                          },
                          child: const Text(
                            'Get Started',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
