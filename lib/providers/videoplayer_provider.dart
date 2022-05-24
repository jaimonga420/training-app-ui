import 'package:flutter/material.dart';

import 'package:video_player/video_player.dart';

class VideoPlayerProvider with ChangeNotifier {
  bool _isPlayerLoaded = false;
  VideoPlayerController? _playerController;

  bool get isPlayerLoaded => _isPlayerLoaded;
  VideoPlayerController? get playerController => _playerController;

  void loadPlayer() {
    _isPlayerLoaded = true;
    notifyListeners();
  }

  onTapVideo(int index, List videosList) {
    _playerController =
        VideoPlayerController.network(videosList[index]["videoUrl"]);
    notifyListeners();
    // ignore: avoid_single_cascade_in_expression_statements
    _playerController!
      ..initialize().then((_) {
        _playerController!.play();
      });
    notifyListeners();
  }
}
