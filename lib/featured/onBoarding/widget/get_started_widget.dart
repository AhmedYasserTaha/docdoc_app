import 'package:doc_doc/core/theme/colors.dart';
import 'package:doc_doc/core/theme/styles.dart';
import 'package:flutter/material.dart';

class GetStartedWidget extends StatelessWidget {
  const GetStartedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: TextButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(ColorsManeger.primaryColor),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          maximumSize: WidgetStateProperty.all(Size(double.infinity, 52)),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          ),
        ),
        child: Text("Get Started", style: TextStyles.font16SemBold),
      ),
    );
  }
}
