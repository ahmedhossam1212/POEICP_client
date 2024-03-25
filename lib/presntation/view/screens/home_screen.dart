import 'package:flutter/material.dart';
import 'package:poeicp_client/core/utils/app_colors.dart';
import 'package:poeicp_client/core/utils/media_query_values.dart';
import 'package:poeicp_client/core/utils/style_manager.dart';
import 'package:poeicp_client/presntation/view/screens/food_report.dart';
import 'package:poeicp_client/presntation/view/screens/midicen_report.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "POEICP",
          style: getBoldStyle(color: AppColors.black, fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          top: 10,
        ),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FoodReport(),
                    ));
              },
              child: Material(
                clipBehavior: Clip.hardEdge,
                borderRadius: BorderRadius.circular(20),
                elevation: 5,
                child: SizedBox(
                    height: context.height * 0.4,
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          "assets/images/food.jpg",
                          height: context.height * 0.35,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          "سلع غذائية",
                          style: getMediumStyle(
                              color: AppColors.black, fontSize: 20),
                        )
                      ],
                    )),
              ),
            ),
            SizedBox(
              height: context.height * 0.02,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MidicenReport(),
                    ));
              },
              child: Material(
                clipBehavior: Clip.hardEdge,
                borderRadius: BorderRadius.circular(20),
                elevation: 5,
                child: SizedBox(
                    height: context.height * 0.4,
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          "assets/images/medicin.jpg",
                          height: context.height * 0.35,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          "سلع علاجية",
                          style: getMediumStyle(
                              color: AppColors.black, fontSize: 20),
                        )
                      ],
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
