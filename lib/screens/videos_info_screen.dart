import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_player/video_player.dart';

import '../helpers/colors.dart' as color;
import '../widgets/tutorials.dart';
import '../widgets/video_info_header.dart';
import './home_screen.dart';
import '../providers/videoplayer_provider.dart';

class VideosInfo extends StatefulWidget {
  static const routeName = '/videosinfo';
  const VideosInfo({Key? key}) : super(key: key);

  @override
  State<VideosInfo> createState() => _VideosInfoState();
}

class _VideosInfoState extends State<VideosInfo> {
  @override
  Widget build(BuildContext context) {
    bool isPlayerLoaded =
        Provider.of<VideoPlayerProvider>(context).isPlayerLoaded;
    VideoPlayerController? playerController =
        Provider.of<VideoPlayerProvider>(context).playerController;
    bool isPlaying = Provider.of<VideoPlayerProvider>(context).isPlaying;

    Widget _playVideo(BuildContext context) {
      if (playerController != null) {
        return AspectRatio(
          aspectRatio: 23 / 9,
          child: VideoPlayer(playerController),
        );
      } else {
        return const AspectRatio(
          aspectRatio: 16.4 / 9,
          child: Center(
            child: CircularProgressIndicator(),
          ),
        );
      }
    }

    Widget _playerOptions(BuildContext context) {
      final bool noMute = (playerController!.value.volume) > 0;
      return Container(
        height: 40,
        color: color.AppColor.gradientSecond,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              color: Colors.white,
              onPressed: () {
                noMute
                    ? playerController.setVolume(0)
                    : playerController.setVolume(1);
              },
              icon: Icon(noMute ? Icons.volume_up_rounded : Icons.volume_off),
            ),
            IconButton(
              color: Colors.white,
              onPressed: () async {},
              icon: const Icon(Icons.fast_rewind),
            ),
            IconButton(
              color: Colors.white,
              onPressed: () async {
                isPlaying ? playerController.pause() : playerController.play();
              },
              icon: Icon(isPlaying ? Icons.pause : Icons.play_arrow),
            ),
            IconButton(
              color: Colors.white,
              onPressed: () {},
              icon: const Icon(Icons.fast_forward),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: isPlayerLoaded
              ? null
              : LinearGradient(
                  colors: [
                      color.AppColor.gradientFirst.withOpacity(0.9),
                      color.AppColor.gradientSecond
                    ],
                  begin: const FractionalOffset(0, 0.4),
                  end: Alignment.topRight),
        ),
        child: Column(
          children: [
            isPlayerLoaded
                ? Container(
                    padding: const EdgeInsets.only(top: 40),
                    height: 278.50,
                    color: color.AppColor.secondPageContainerGradient2ndColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.of(context).pushNamed(Home.routeName);
                              },
                              icon: const Icon(Icons.arrow_back_ios),
                              color: color.AppColor.secondPageTopIconColor,
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.info_outline),
                              color: color.AppColor.secondPageTopIconColor,
                            ),
                          ],
                        ),
                        _playVideo(context),
                        _playerOptions(context)
                      ],
                    ),
                  )
                : const VideoInfoHeader(),
            const Tutorials(),
          ],
        ),
      ),
    );
  }
}
