import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify/common/ElevatedButton.dart';
import 'package:spotify/core/config/assets/app-images.dart';
import 'package:spotify/core/config/assets/app-vectors.dart';
import 'package:spotify/presentation/ChangeMode/page/ChangeTheme.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.GetstartedBG),
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
                    'Welcome to Spotify',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Button(
                      onPressed: () {
                        // Navigate to the Login screen
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Changetheme()));
                      },
                      text: "Get Started"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
