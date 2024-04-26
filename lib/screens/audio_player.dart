import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class AudioPlay extends StatefulWidget {
  String? pathh;


  @override
  _AudioPlayState createState() => _AudioPlayState();

  AudioPlay({
    Key? key,
    this.pathh,

  }) : super(key: key);
}

class _AudioPlayState extends State<AudioPlay> {
  final progressNotifier = ValueNotifier<ProgressBarState>(
    ProgressBarState(
      current: Duration.zero,
      buffered: Duration.zero,
      total: Duration.zero,
    ),
  );

  final buttonNotifier = ValueNotifier<ButtonState>(ButtonState.paused);

  late AudioPlayer _audioPlayer;

  PageManager() {
    _init();
  }

  @override
  void initState() {
    PageManager();
    super.initState();
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  void _init() async {
    _audioPlayer = AudioPlayer();
    await _audioPlayer.setUrl(widget.pathh!);

    _audioPlayer.playerStateStream.listen((playerState) {
      final isPlaying = playerState.playing;
      final processingState = playerState.processingState;
      if (processingState == ProcessingState.loading || processingState == ProcessingState.buffering) {
        buttonNotifier.value = ButtonState.loading;
      } else if (!isPlaying) {
        buttonNotifier.value = ButtonState.paused;
      } else if (processingState != ProcessingState.completed) {
        buttonNotifier.value = ButtonState.playing;
      } else {
        _audioPlayer.seek(Duration.zero);
        _audioPlayer.pause();
      }
    });

    _audioPlayer.positionStream.listen((position) {
      final oldState = progressNotifier.value;
      progressNotifier.value = ProgressBarState(
        current: position,
        buffered: oldState.buffered,
        total: oldState.total,
      );
    });

    _audioPlayer.bufferedPositionStream.listen((bufferedPosition) {
      final oldState = progressNotifier.value;
      progressNotifier.value = ProgressBarState(
        current: oldState.current,
        buffered: bufferedPosition,
        total: oldState.total,
      );
    });

    _audioPlayer.durationStream.listen((totalDuration) {
      final oldState = progressNotifier.value;
      progressNotifier.value = ProgressBarState(
        current: oldState.current,
        buffered: oldState.buffered,
        total: totalDuration ?? Duration.zero,
      );
    });
  }

  void play() {
    _audioPlayer.play();
  }

  void pause() {
    _audioPlayer.pause();
  }

  void seek(Duration position) {
    _audioPlayer.seek(position);
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ButtonState>(
      valueListenable: buttonNotifier,
      builder: (_, value, __) {
        switch (value) {
          case ButtonState.loading:
            return const CircularProgressIndicator();
          case ButtonState.paused:
            return IconButton(
              icon: const Icon(Icons.play_arrow),
              iconSize: 25.0,
              onPressed: play,
            );
          case ButtonState.playing:
            return IconButton(
              icon: const Icon(Icons.pause),
              iconSize: 25.0,
              onPressed: pause,
            );
        }
      },
    );
  }
}
// class PageManager  {
//
//
//
//   final progressNotifier = ValueNotifier<ProgressBarState>(
//
//     ProgressBarState(
//       current: Duration.zero,
//       buffered: Duration.zero,
//       total: Duration.zero,
//     ),
//   );
//
//   final buttonNotifier = ValueNotifier<ButtonState>(ButtonState.paused);
//
//   static const url =
//       'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-2.mp3';
//
//
//   late AudioPlayer _audioPlayer;
//   PageManager() {
//     _init();
//   }
//
//   void _init() async {
//     _audioPlayer = AudioPlayer();
//     await _audioPlayer.setUrl(widget.pathh!);
//
//     _audioPlayer.playerStateStream.listen((playerState) {
//       final isPlaying = playerState.playing;
//       final processingState = playerState.processingState;
//       if (processingState == ProcessingState.loading ||
//           processingState == ProcessingState.buffering) {
//         buttonNotifier.value = ButtonState.loading;
//       } else if (!isPlaying) {
//         buttonNotifier.value = ButtonState.paused;
//       } else if (processingState != ProcessingState.completed) {
//         buttonNotifier.value = ButtonState.playing;
//       } else {
//         _audioPlayer.seek(Duration.zero);
//         _audioPlayer.pause();
//       }
//     });
//
//     _audioPlayer.positionStream.listen((position) {
//       final oldState = progressNotifier.value;
//       progressNotifier.value = ProgressBarState(
//         current: position,
//         buffered: oldState.buffered,
//         total: oldState.total,
//       );
//     });
//
//     _audioPlayer.bufferedPositionStream.listen((bufferedPosition) {
//       final oldState = progressNotifier.value;
//       progressNotifier.value = ProgressBarState(
//         current: oldState.current,
//         buffered: bufferedPosition,
//         total: oldState.total,
//       );
//     });
//
//     _audioPlayer.durationStream.listen((totalDuration) {
//       final oldState = progressNotifier.value;
//       progressNotifier.value = ProgressBarState(
//         current: oldState.current,
//         buffered: oldState.buffered,
//         total: totalDuration ?? Duration.zero,
//       );
//     });
//   }
//
//   void play() {
//     _audioPlayer.play();
//   }
//
//   void pause() {
//     _audioPlayer.pause();
//   }
//
//   void seek(Duration position) {
//     _audioPlayer.seek(position);
//   }
//
//   void dispose() {
//     _audioPlayer.dispose();
//   }
// }

class ProgressBarState {
  ProgressBarState({
    required this.current,
    required this.buffered,
    required this.total,
  });

  final Duration current;
  final Duration buffered;
  final Duration total;
}

enum ButtonState { paused, playing, loading }