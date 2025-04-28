import 'package:doc_doc/core/theme/styles.dart';
import 'package:flutter/material.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: "By logging, you agree to our ",
            style: TextStyles.font13GreyReguler,
          ),
          TextSpan(
            text: "Terms & Conditions ",
            style: TextStyles.font14DarkBlueMedium,
          ),
          TextSpan(
            text: "and ",
            style: TextStyles.font13GreyReguler.copyWith(height: 1.4),
          ),
          TextSpan(
            text: "PrivacyPolicy.",
            style: TextStyles.font14DarkBlueMedium,
          ),
        ],
      ),
    );
  }
}
