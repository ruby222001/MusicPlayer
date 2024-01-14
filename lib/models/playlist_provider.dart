import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:musicplayer/models/song.dart';
class PlaylistProvider extends ChangeNotifier{
  final List<Song> _playlist=[

    Song(
  songname: "Try Again",
 artistname: "jaehyun",
 albumImagepath:"assets/images/jaehyun.jpg",
  audioPath: "audio/Tryagain.mp3",
  ),
   
   Song(
  songname: "Love Yourself",
 artistname: "BTS",
 albumImagepath:"assets/images/bts.jpg",
  audioPath: "audio/Tryagain.mp3",
  ), 
  Song(
  songname: "Lover",
 artistname: "taylor Swift",
 albumImagepath:"assets/images/tay.jpg",
  audioPath: "audio/likecrazy.mp3",
  ),
  
];
//current song playing index
int? _currentSongIndex;

final  AudioPlayer _audioPlayer = AudioPlayer();
Duration _currentDuration = Duration.zero;
Duration _totalDuration = Duration.zero;
PlaylistProvider(){
  listenToDuration();
}
bool _isPlaying = false;

void play() async{
  final String path =_playlist[_currentSongIndex!].audioPath;
  await _audioPlayer.stop();
  await _audioPlayer.play(AssetSource(path));
  _isPlaying= true;
  notifyListeners();
}
void pause() async{
  await _audioPlayer.pause();
  _isPlaying=false;
  notifyListeners();
}
void resume() async{
  await _audioPlayer.resume();
  _isPlaying=true;
  notifyListeners();
}
void pauseOrResume() async{
  if(_isPlaying){
    pause();
  }else{
    resume();
  }
  notifyListeners();
}
void seek(Duration position) async{
  await _audioPlayer.seek(position);
}
void playNextSong(){
  if(_currentSongIndex != null){
    if(_currentSongIndex! < _playlist.length -1){
currentSongIndex=_currentSongIndex! +1;
    }else{
currentSongIndex = 0;
    }
  }
}


void playPreviousSong() async{
  if(_currentDuration.inSeconds > 2){
seek(Duration.zero);
  }
  else{
    if(_currentSongIndex! > 0){
      currentSongIndex =_currentSongIndex! -1;

    }else{
      currentSongIndex=_playlist.length -1;
    }
  }
}
void  listenToDuration(){
_audioPlayer.onDurationChanged.listen((newDuration){
  _totalDuration= newDuration;
  notifyListeners();
});
_audioPlayer.onPositionChanged.listen((newPosition){
_currentDuration= newPosition;
notifyListeners();
});
_audioPlayer.onPlayerComplete.listen((event) { });
}
List<Song> get playlist => _playlist;
int? get currentSongIndex => _currentSongIndex;
bool get isplaying => _isPlaying;
Duration get currentDuration => _currentDuration;
Duration get totalDuration => _totalDuration;

set currentSongIndex(int? newIndex){
  _currentSongIndex = newIndex;
  if(newIndex != null){
    play();
  }
  notifyListeners();
}

}