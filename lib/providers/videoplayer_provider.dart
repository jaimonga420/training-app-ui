import 'package:flutter/material.dart';

import 'package:video_player/video_player.dart';

class VideoPlayerProvider with ChangeNotifier {
  bool _isPlayerLoaded = false;
  VideoPlayerController? _playerController;
  bool _isPlaying = false;

  bool get isPlayerLoaded => _isPlayerLoaded;
  VideoPlayerController? get playerController => _playerController;
  bool get isPlaying => _isPlaying;

  void loadPlayer() {
    _isPlayerLoaded = true;
    notifyListeners();
  }

  void closePlayer() {
    _isPlayerLoaded = false;
    notifyListeners();
  }

  playPause() {
    if (playerController == null) {
      debugPrint('Contoller is Null');
    }
    if (!playerController!.value.isInitialized) {
      debugPrint('Not Initialsized');
    }
    _isPlaying = playerController!.value.isPlaying;
    notifyListeners();
  }

  onTapVideo(
    int index,
    List videosList,
  ) {
    _playerController =
        VideoPlayerController.network(videosList[index]["videoUrl"]);
    notifyListeners();

    // ignore: avoid_single_cascade_in_expression_statements
    _playerController!
      ..initialize().then((_) {
        _playerController!.addListener(playPause);
        _playerController!.play();
      });
    notifyListeners();
  }
}
