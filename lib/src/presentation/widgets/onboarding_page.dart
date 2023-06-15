
import 'package:BallBall/src/presentation/onboadrding/onboarding_Controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboadrdingPage extends StatelessWidget {
  final _controller = OnboardingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
                controller: _controller.pageController,
                onPageChanged: _controller.selectedPageeIndex,
                itemCount: _controller.OnboadrdingPage.length,
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      Image.asset(_controller.OnboadrdingPage[index].imageAsset,
                          fit: BoxFit.cover,
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height),
                      Positioned(
                        bottom: 150,
                        right: 0,
                        left: 0,
                        child: Padding(
                          padding: const EdgeInsets.all(17.0),
                          child: Text(
                            _controller.OnboadrdingPage[index].description,
                            style: const TextStyle(
                                fontSize: 40,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  );
                }),
            Positioned(
              right: 0,
              top: 16,
              child: Column(
                children: [
                  Container(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                        },
                        child: const Text(
                          'Bỏ qua',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              decoration: TextDecoration.underline),
                        ),
                      ))
                ],
              ),
            ),
            Positioned(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    _controller.OnboadrdingPage.length,
                    (index) => Obx(() {
                      return Container(
                        margin: const EdgeInsets.all(4),
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                            color: _controller.selectedPageeIndex.value == index
                                ? Colors.green
                                : Colors.white,
                            shape: BoxShape.circle),
                      );
                    }),
                  ),
              ),
            ),
            Positioned(
              bottom: 60,
              right: 28,
              child: InkWell(
                onTap: (){
                  _controller.forwarAction();
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Text(
                        'Tiếp tục',
                        style: TextStyle(fontSize: 16,
                        color : Colors.black54
                        ),
                      ),
                      SizedBox(width: 0.0),
                      Icon(Icons.navigate_next,color: Colors.black54,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
