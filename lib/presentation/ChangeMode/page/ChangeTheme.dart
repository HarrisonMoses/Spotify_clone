import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify/common/ElevatedButton.dart';
import 'package:spotify/core/config/assets/app-images.dart';
import 'package:spotify/core/config/assets/app-vectors.dart';

class Changetheme extends StatelessWidget {
  const Changetheme({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: 420.0,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.choosemode),
                fit: BoxFit.fill,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(80.0),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: SvgPicture.asset(AppVectors.logo),
                  ),
                  const Spacer(),
                  const Text(
                    'Choose your mode',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100.0),
                          border: Border.all(color: Colors.grey),
                        ),
                        child: SvgPicture.asset(AppVectors.lightmode),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100.0),
                          border: Border.all(color: Colors.grey),
                        ),
                        child: SvgPicture.asset(AppVectors.lightmode),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Button(onPressed: () {}, text: "Countinue"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
