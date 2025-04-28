import 'package:doc_doc/core/theme/styles.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccont extends StatelessWidget {
  const AlreadyHaveAccont({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: "Already have an account yet? ",
            style: TextStyles.font14DarkBlueMedium,
          ),
          TextSpan(text: "Sign Up", style: TextStyles.font14Bluebold),
        ],
      ),
    );
  }
}
