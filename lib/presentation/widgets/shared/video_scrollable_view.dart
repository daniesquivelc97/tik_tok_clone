import 'package:flutter/material.dart';
import 'package:tik_tok_clone/domain/entities/video_post.dart';
import 'package:tik_tok_clone/presentation/widgets/shared/video_buttons.dart';

class VideoScrollableView extends StatelessWidget {
  const VideoScrollableView({
    Key? key,
    required this.videos,
  }) : super(key: key);

  final List<VideoPost> videos;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: videos.length,
      itemBuilder: (context, index) {
        final VideoPost videoPost = videos[index];
        return Stack(
          children: [
            Positioned(
              bottom: 40,
              right: 20,
              child: VideoButtons(video: videoPost),
            )
          ],
        );
      },
      scrollDirection: Axis.vertical,
    );
  }
}
