import 'package:flutter/material.dart';
import 'package:toktik/shared/shared.dart';
import 'package:video_player/video_player.dart';

class ForyouScreen extends StatefulWidget {
  const ForyouScreen({
    super.key,
  });

  @override
  State<ForyouScreen> createState() => _ForyouScreenState();
}

class _ForyouScreenState extends State<ForyouScreen> {
  late VideoPlayerController _controller;
  @override
  void initState() {
    _controller = VideoPlayerController.networkUrl(Uri.parse(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'))
      ..initialize().then((_) {
        setState(() {
          _controller.setLooping(true);
        });
      });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
              child: VideoPlayer(
                _controller,
              ),
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
