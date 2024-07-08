import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:provider/provider.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'audio.dart';
import 'main.dart';

void main() {
  runApp(MusicApp());
}

class MusicApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: musicsrc(),
      ),
    );
  }
}

class musicsrc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => AudioPlayerModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Music Player',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MusicPlayerScreen(),
      ),
    );
  }
}

class MusicPlayerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text(
          'Music Player',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 20),
          CircularProgress(),
          SizedBox(height: 20),
          TrackInfo(),
          SizedBox(height: 20),
          ProgressBar(),
          SizedBox(height: 20),
          PlayerControls(),
        ],
      ),
    );
  }
}

class AnimatedBackground extends StatefulWidget {
  @override
  _AnimatedBackgroundState createState() => _AnimatedBackgroundState();
}

class _AnimatedBackgroundState extends State<AnimatedBackground> {
  // Remove the timer and bubbles generation
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(); // Return an empty container
  }
}

class TrackInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final model = context.watch<AudioPlayerModel>();

    return Column(
      children: [
        Text(
          model.currentTrackTitle,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white, // Change text color to white
          ),
        ),
        SizedBox(height: 8),
        Text(
          model.currentTrackArtist,
          style: TextStyle(
            fontSize: 18,
            fontStyle: FontStyle.italic,
            color: Colors.white, // Change text color to white
          ),
        ),
      ],
    );
  }
}

class CircularProgress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final model = context.watch<AudioPlayerModel>();
    double wi = MediaQuery.of(context).size.width;

    return Stack(
      alignment: Alignment.center,
      children: [
        CircularPercentIndicator(
          radius: 150.0,
          lineWidth: 15.0,
          percent: model.duration.inSeconds == 0
              ? 0.0
              : model.position.inSeconds / model.duration.inSeconds,
          center: CircularPercentIndicator(
            center: Container(
              width: wi * 0.80,
              height: wi * 0.80,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors.yellow,
                  Colors.white,
                  Colors.yellow
                ]),
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/koyya.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            radius: 135,
            lineWidth: 20,
            backgroundColor: Colors.black,
          ),
          progressColor: Colors.yellow,
          backgroundColor: Colors.grey,
          circularStrokeCap: CircularStrokeCap.round,
        ),
      ],
    );
  }
}

class ProgressBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final model = context.watch<AudioPlayerModel>();

    return Column(
      children: [
        Slider(
          value: model.position.inSeconds.toDouble(),
          max: model.duration.inSeconds.toDouble(),
          onChanged: (value) {
            // model.seek(Duration(seconds: value.toInt()));
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                model.positionText,
                style: TextStyle(color: Colors.white), // Change text color to white
              ),
              Text(
                model.durationText,
                style: TextStyle(color: Colors.white), // Change text color to white
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class PlayerControls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final model = context.watch<AudioPlayerModel>();
    double wi = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(width: wi / 4),
            Container(
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.skip_previous, size: 35, color: Colors.white),
                    onPressed: model.previousTrack,
                  ),
                  IconButton(
                    icon: Icon(
                      model.isPlaying ? Icons.pause : Icons.play_arrow,
                      size: 35,
                      color: Colors.white,
                    ),
                    onPressed: model.togglePlayPause,
                  ),
                  IconButton(
                    icon: Icon(Icons.skip_next, size: 35, color: Colors.white),
                    onPressed: () => model.nextTrack(context),
                  ),
                ],
              ),
            ),
            SizedBox(width: 30),
            PlaybackSpeedControl(),
          ],
        ),
        SizedBox(height: 20),
      ],
    );
  }
}

class PlaybackSpeedControl extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final model = context.watch<AudioPlayerModel>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Speed: ',
          style: TextStyle(color: Colors.white), // Change text color to white
        ),
        DropdownButton<double>(
          value: model.playbackSpeed,
          dropdownColor: Colors.black,
          items: [
            DropdownMenuItem(value: 0.5, child: Text('0.5x', style: TextStyle(color: Colors.white))),
            DropdownMenuItem(value: 1.0, child: Text('1.0x', style: TextStyle(color: Colors.white))),
            DropdownMenuItem(value: 1.5, child: Text('1.5x', style: TextStyle(color: Colors.white))),
            DropdownMenuItem(value: 2.0, child: Text('2.0x', style: TextStyle(color: Colors.white))),
          ],
          onChanged: (value) {
            model.setPlaybackSpeed(value ?? 1.0);
          },
        ),
      ],
    );
  }
}

class AudioPlayerModel with ChangeNotifier {
  final AudioPlayer _player = AudioPlayer();
  int _currentTrackIndex = 0;
  bool _isPlaying = false;
  double _playbackSpeed = 1.0;

  Duration _duration = Duration.zero;
  Duration _position = Duration.zero;

  AudioPlayerModel() {
    _player.positionStream.listen((position) {
      _position = position;
      notifyListeners();
    });
    _player.durationStream.listen((duration) {
      _duration = duration ?? Duration.zero;
      notifyListeners();
    });
    _player.playerStateStream.listen((state) {
      _isPlaying = state.playing;
      notifyListeners();
    });
    _loadTrack();
  }

  void _loadTrack() async {
    await _player.setAsset(playlist[_currentTrackIndex].str);
    _player.setSpeed(_playbackSpeed);
    if (_isPlaying) {
      _player.play();
    }
  }

  String get currentTrackTitle => 'Audio- ${_currentTrackIndex + 1}';
  String get currentTrackArtist => 'Artist ${_currentTrackIndex + 1}';

  Duration get duration => _duration;
  Duration get position => _position;

  String get durationText => _formatDuration(_duration);
  String get positionText => _formatDuration(_position);

  bool get isPlaying => _isPlaying;
  double get playbackSpeed => _playbackSpeed;

  int get completedTracks => _currentTrackIndex;

  String getDurationText(String path) {
    return _duration.toString();
  }

  void togglePlayPause() {
    if (_isPlaying) {
      _player.pause();
    } else {
      _player.play();
    }
    _isPlaying = !_isPlaying;
    notifyListeners();
  }

  void nextTrack(BuildContext context) {
    if (_position >= _duration || playlist[_currentTrackIndex].vis) {
      if (_currentTrackIndex < playlist.length - 1) {
        playlist[_currentTrackIndex].vis = true;
        _currentTrackIndex++;
        _loadTrack();
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'You must complete the current audio to move to the next one.',
            style: TextStyle(color: Colors.white),
          ),
        ),
      );
    }
  }

  void previousTrack() {
    if (_currentTrackIndex > 0) {
      _currentTrackIndex--;
      _loadTrack();
    }
  }

  void loadTrackAtIndex(int index) {
    _currentTrackIndex = index;
    _loadTrack();
  }

  void seek(Duration position) {
    _player.seek(position);
  }

  void setPlaybackSpeed(double speed) {
    _playbackSpeed = speed;
    _player.setSpeed(speed);
    notifyListeners();
  }

  String _formatDuration(Duration duration) {
    final minutes = duration.inMinutes.remainder(60).toString().padLeft(2, '0');
    final seconds = duration.inSeconds.remainder(60).toString().padLeft(2, '0');
    return '$minutes:$seconds';
  }
}
