
import 'package:BallBall/src/onboadrding/onboarding_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/state_manager.dart';
import 'package:get/utils.dart';


class OnboardingController extends GetxController {
 var selectedPageeIndex = 0.obs;
 var pageController = PageController();
 forwarAction(){
  pageController.nextPage(duration: 300.milliseconds, curve: Curves.ease);
 }
 List<OnboardingInfo> OnboadrdingPage = [
  OnboardingInfo('assets/images/onboarding1.png', 'BẮT KÈO NHANH CHÓNG'),
  OnboardingInfo('assets/images/onboarding2.png', 'TẠO TRẤN ĐẤU MỌI LÚC '),
  OnboardingInfo('assets/images/onboarding3.png', 'GIAO LƯU VÀ KẾT BẠN')
 ];
 
}
