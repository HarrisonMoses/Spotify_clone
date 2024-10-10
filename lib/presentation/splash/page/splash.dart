import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify/core/config/assets/app-vectors.dart';
import 'package:spotify/presentation/get_started/get_started.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {


@override
  void initState() {
    super.initState();
    redirect();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SvgPicture.asset(
          AppVectors.logo,
        )
      ),
    );
  }
  Future<void> redirect() async {
    await Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context, 
      MaterialPageRoute(
        builder:(BuildContext context) => const GetStarted(),
        ),
      );
    });
  }
}