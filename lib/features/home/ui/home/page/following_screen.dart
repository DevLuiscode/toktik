import 'package:flutter/material.dart';
import 'package:toktik/shared/shared.dart';

class FollowingScreen extends StatelessWidget {
  const FollowingScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: 10,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, verticalIndex) {
        return Stack(
          children: [
            Container(
              color: Colors.primaries[verticalIndex],
            ),
            const Positioned(
              bottom: 0,
              right: 0,
              child: FloatingActionsButtonWidget(),
            ),
          ],
        );
      },
    );
  }
}
