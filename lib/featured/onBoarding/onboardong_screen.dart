import 'package:doc_doc/core/theme/styles.dart';
import 'package:doc_doc/featured/onBoarding/widget/doc_image_and_text.dart';
import 'package:doc_doc/featured/onBoarding/widget/doc_logo_and_name.dart';
import 'package:doc_doc/featured/onBoarding/widget/get_started_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: (SingleChildScrollView(
          padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
          child: Column(
            children: [
              const DocLogoAndName(),
              SizedBox(height: 30.h),
              const DocImageAndText(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      textAlign: TextAlign.center,
                      "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
                      style: TextStyles.font13GreyReguler,
                    ),
                    SizedBox(height: 30.h),
                    GetStartedWidget(),
                  ],
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
