import 'dart:math';

import 'package:BallBall/src/widgets/onboarding_Star.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnboadrdingPage extends StatelessWidget {
  final controller = OnboardingStar();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          itemCount: controller.OnboadrdingPage.length,
          itemBuilder: (context, index) {
            return Stack(
              children: [
                Image.asset(controller.OnboadrdingPage[index].imageAsset,
                    fit: BoxFit.cover,width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height),
                Positioned(
                  bottom: 150,
                  right: 0,
                  left: 0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0 ),
                    child: Text(controller.OnboadrdingPage[index].description,
                      style: TextStyle(fontSize: 40,fontFamily: "Inter",color: Colors.white),
                      textAlign: TextAlign.left
                    ),
                  ),
                )
              ],
            );
          }),
    );
  }
}
