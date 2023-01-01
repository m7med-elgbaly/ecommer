import 'package:flutter/material.dart';

import 'circular_container.dart';
import '../curved_edges/curved_edges.dart';
import '../../../../utils/constants/colors.dart';

class AppPrimaryHeaderContainer extends StatelessWidget {
  const AppPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: AppCustomCurvedEdges(),
      child: Container(
        color: AppColors.primary,
        padding: const EdgeInsets.all(0),
        child: Stack(
          children: [
            Positioned(
              top: -150,
              right: -250,
              child: AppCircularContainer(
                backgroundColor: AppColors.textwhite.withOpacity(0.1),
              ),
            ),
            Positioned(
              top: 100,
              right: 300,
              child: AppCircularContainer(
                backgroundColor: AppColors.textwhite.withOpacity(0.1),
              ),
            ),
            Positioned.fill(
              child: child,
            ),
          ],
        ),
      ),
    );
  }
}
