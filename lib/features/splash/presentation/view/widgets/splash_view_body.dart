part of '../../../index.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({
    super.key,
  });

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHome();
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    slidingAnimation = Tween<Offset>(
      begin: const Offset(0, 2),
      end: Offset.zero,
    ).animate(animationController);
    animationController.forward();
  }

  navigateToHome() {
    // Future.delayed(
    //   const Duration(milliseconds: 2000),
    //   () {
    //     g.Get.offAll(
    //       () => const EmailVerifyView(),
    //       transition: g.Transition.fadeIn,
    //       duration: kDurationTransition,
    //     );
    //   },
    // );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              AppImages.imagesLogo,
              // fit: BoxFit.fill,
              height: 40,
            ),
            const SizedBox(height: 8),
            TextSliding(slidingAnimation: slidingAnimation),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }
}
