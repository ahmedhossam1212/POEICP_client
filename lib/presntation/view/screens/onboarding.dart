import 'package:flutter/material.dart';
import 'package:poeicp_client/core/utils/app_colors.dart';
import 'package:poeicp_client/core/utils/media_query_values.dart';
import 'package:poeicp_client/core/utils/style_manager.dart';
import 'package:poeicp_client/presntation/view/screens/login_screen.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController pageController = PageController();
  bool lastpage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(
              top: context.height * 0.075,
              right: context.width * 0.05,
              left: context.width * 0.05,
              bottom: context.height * 0.05,
            ),
            child: Stack(
              children: [
                PageView(
                  onPageChanged: (index) {
                    setState(() {
                      lastpage = (index == 2);
                    });
                  },
                  controller: pageController,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/logo.png",
                          color: AppColors.primary,
                          height: context.height * 0.3,
                        ),
                        const Spacer(),
                        Container(
                          width: double.infinity,
                          height: context.height * 0.5,
                          decoration: BoxDecoration(
                            color: AppColors.primary,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "ما استخدام برنامج الرقابة و الجرد الالكتروني لحمايه المستهلك ؟",
                                    style: getSemiBoldStyle(
                                        color: AppColors.black,
                                        fontSize: context.height * 0.04),
                                  ),
                                  SizedBox(
                                    height: context.height * 0.01,
                                  ),
                                  Text(
                                    "الإبلاغ الفورى عن أية مُخالفات من شأنها الإضرار بحقوق المستهلك أو المُغالاة فى الأسعار وحجب السلع",
                                    style: getRegularStyle(
                                        color: AppColors.white,
                                        fontSize: context.height * 0.023),
                                  ),
                                  SizedBox(
                                    height: context.width * 0.1,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/logo.png",
                          color: AppColors.primary,
                          height: context.height * 0.3,
                        ),
                        const Spacer(),
                        Container(
                          width: double.infinity,
                          height: context.height * 0.5,
                          decoration: BoxDecoration(
                            color: AppColors.primary,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "متى الجأ لحماية المستهلك؟",
                                    style: getSemiBoldStyle(
                                        color: AppColors.black,
                                        fontSize: context.height * 0.04),
                                  ),
                                  SizedBox(
                                    height: context.height * 0.01,
                                  ),
                                  Text(
                                    "عند  وجود المستهلك سلعة غذائية تهدد أمنه الغذائي أو وجود عيوب في أحد السلع تهدد سلامته أو إعلان مضلل يستغل حاجة المستهلك , من أجل ذلك ومن أجل حماية المستهلك من هذه الاخطار يقدم جهاز حماية المستهلك تحذيراته بصورة دورية.",
                                    style: getRegularStyle(
                                        color: AppColors.white,
                                        fontSize: context.height * 0.023),
                                  ),
                                  SizedBox(
                                    height: context.width * 0.1,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/logo.png",
                          color: AppColors.primary,
                          height: context.height * 0.3,
                        ),
                        const Spacer(),
                        Container(
                          width: double.infinity,
                          height: context.height * 0.5,
                          decoration: BoxDecoration(
                            color: AppColors.primary,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "مهمتنا",
                                    style: getSemiBoldStyle(
                                        color: AppColors.black,
                                        fontSize: context.height * 0.04),
                                  ),
                                  SizedBox(
                                    height: context.height * 0.02,
                                  ),
                                  Text(
                                    "الواصل السريع بين المستهلك و الجهات المسؤلة دون وجود وسيط",
                                    style: getRegularStyle(
                                        color: AppColors.white,
                                        fontSize: context.height * 0.023),
                                  ),
                                  SizedBox(
                                    height: context.width * 0.1,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        alignment: Alignment(0, context.height * 0.001),
                        child: lastpage
                            ? Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: AppColors.white,
                                    borderRadius: BorderRadius.circular(30)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  const LoginScreen(),
                                            ));
                                      },
                                      child: Text(
                                        "تسجيل",
                                        style: getBoldStyle(
                                            color: AppColors.black,
                                            fontSize: 25),
                                      )),
                                ),
                              )
                            : Row(
                                children: [
                                  TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  const LoginScreen(),
                                            ));
                                      },
                                      child: Text(
                                        "تخطي",
                                        style: getBoldStyle(
                                            color: AppColors.black,
                                            fontSize: 20),
                                      )),
                                  const Spacer(),
                                  Container(
                                    width: context.width * 0.3,
                                    decoration: BoxDecoration(
                                        color: AppColors.white,
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextButton(
                                          onPressed: () {
                                            pageController.nextPage(
                                                duration: const Duration(
                                                    milliseconds: 500),
                                                curve: Curves.easeInOutCirc);
                                          },
                                          child: Text(
                                            "التالي",
                                            style: getBoldStyle(
                                                color: AppColors.black,
                                                fontSize: 20),
                                          )),
                                    ),
                                  ),
                                ],
                              ))),
                Positioned(
                  left: context.width * 0.4,
                  right: context.width * 0.4,
                  bottom: context.height * 0.01,
                  child: SmoothPageIndicator(
                    controller: pageController,
                    count: 3,
                    effect: SlideEffect(
                        dotHeight: context.height * 0.01,
                        dotWidth: context.width * 0.02,
                        dotColor: AppColors.white,
                        activeDotColor: AppColors.black),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
