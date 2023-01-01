import 'package:flutter/material.dart';

import '../../../../../utils/constants/texet_string.dart';

class SignUpHeader extends StatelessWidget {
  const SignUpHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(AppText.signUpTitle,
      style: Theme.of(context).textTheme.headlineMedium,);
  }
}