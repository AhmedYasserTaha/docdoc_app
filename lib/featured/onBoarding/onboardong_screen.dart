import 'package:doc_doc/core/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: (SingleChildScrollView(
          padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
          child: Column(children: [DocLogoAndName(), SizedBox(height: 30.h)]),
        )),
      ),
    );
  }
}

class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset("assets/svgs/docdoc_logo.svg"),
        SizedBox(width: 10.w),
        Text("DocDoc", style: TextStyles.font24Black700W),
      ],
    );
  }
}
