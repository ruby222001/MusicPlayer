import 'package:flutter/material.dart';
import 'package:musicplayer/models/song.dart';
class PlaylistProvider extends ChangeNotifier{
  final List<Song> _playlist=[
Song(
  songname: "Try Again",
 artistname: "jehyun",
 albumImagepath:"assets/images/audioimage.jpg",
  audioPath: "assets/audios/tryagain.mp3"
  ),
    Song(
  songname: "Try Again",
 artistname: "jehyun",
 albumImagepath:"assets/images/audioimage.jpg",
  audioPath: "assets/audios/tryagain.mp3"
  ),
    
  
];
//current song playing index
int? _curerntSongIndex;

List<Song> get playlist => _playlist;
int? get currentSongIndex => _curerntSongIndex;

set currentSongIndex(int? newIndex){
  _curerntSongIndex = newIndex;
  notifyListeners();
}

}