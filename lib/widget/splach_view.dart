import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hellllllo/constants/constants.dart';
import 'package:hellllllo/widget/home_view.dart';

class splash_view extends StatefulWidget {
  const splash_view({super.key});

  @override
  State<splash_view> createState() => _splash_viewState();
}

class _splash_viewState extends State<splash_view>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> silidingAnimation;
  @override
  void initState() {
    super.initState();
    initSilidingAnimation(); // انا هنا بعمل الانيميشن
    navigatetoHome();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            AssetData.logo,
          ),
          const SizedBox(
            height: 10,
          ),
          SlideTransition(
            position: silidingAnimation,
            child: const Text(
              'Hello everybody',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: kGtSectrafine,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();

    animationController.dispose();
  }

  void initSilidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        seconds: 4,
      ),
    );
    silidingAnimation =
        Tween<Offset>(begin: const Offset(0, 3), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
    // silidingAnimation.addListener(() {}); // مش مهمه اوى
  }

  void navigatetoHome() {
    Future.delayed(
      const Duration(seconds: 5),
      () {
        Get.to(
          () => const HomeView(),
          transition: Transition.fade,
          duration: kduration,
        );

        // GoRouter.of(context).push('/homeView');
      },
    );
  }
}
