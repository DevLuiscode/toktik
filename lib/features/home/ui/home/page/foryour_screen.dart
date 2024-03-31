import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconsax/iconsax.dart';

import 'package:toktik/features/home/ui/home/page/providers/foryou_provider.dart';
import 'package:toktik/shared/shared.dart';
import 'package:video_player/video_player.dart';

class ForyouScreen extends ConsumerStatefulWidget {
  const ForyouScreen({
    super.key,
  });

  @override
  ForyouScreenState createState() => ForyouScreenState();
}

class ForyouScreenState extends ConsumerState<ForyouScreen> {
  @override
  void initState() {
    ref.read(fecthForyouModelProvider.notifier).loadData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final foryouProvide = ref.watch(fecthForyouModelProvider);
    return PageView.builder(
      itemCount: foryouProvide.length,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, verticalIndex) {
        final videoUrl = foryouProvide[verticalIndex].videos.firstOrNull?.url;
        final imagePath = foryouProvide[verticalIndex].imageProfile;
        return Stack(
          children: [
            VideoPlayerItem(
              videoUrl: videoUrl!,
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: FloatingActionsButtonWidget(
                imagePath: imagePath,
              ),
            ),
          ],
        );
      },
    );
  }
}

class VideoPlayerItem extends StatefulWidget {
  const VideoPlayerItem({
    super.key,
    required this.videoUrl,
  });

  final String videoUrl;

  @override
  State<VideoPlayerItem> createState() => _VideoPlayerItemState();
}

class _VideoPlayerItemState extends State<VideoPlayerItem> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    var uri = Uri.parse(widget.videoUrl);
    _controller = VideoPlayerController.networkUrl(uri)
      ..initialize().then((_) {
        setState(() {
          _controller.play();
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
    return Container(
      color: Colors.black,
      child: Stack(
        children: [
          GestureDetector(
            onTap: () {
              print("pause");
              setState(() {
                if (_controller.value.isPlaying) {
                  _controller.pause();
                } else {
                  _controller.play();
                }
              });
            },
            child: VideoPlayer(
              _controller,
            ),
          ),
          Positioned(
            bottom: 0,
            top: 0,
            left: 0,
            right: 0,
            child: Icon(
              size: 60,
              Icons.play_arrow,
              color: _controller.value.isPlaying
                  ? Colors.transparent
                  : Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}
