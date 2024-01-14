import 'package:flutter/material.dart';
import 'package:musicplayer/components/drawer.dart';
import 'package:musicplayer/models/playlist_provider.dart';
import 'package:musicplayer/models/song.dart';
import 'package:musicplayer/pages/song_page.dart';
import 'package:provider/provider.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late final dynamic playlistprovider;
  @override
  void initState(){
    super.initState();
    playlistprovider = Provider.of<PlaylistProvider>(context,listen:false);
  }
  void goToSong(int songIndex){
    playlistprovider.currentSongIndex = songIndex;
    Navigator.push(context,MaterialPageRoute(builder: (context)=> const SongPage(),
    ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(title:       
       const Center(child: Text('P L A Y L I S T')),
),
      drawer: const MyDrawer(),
      body: Consumer<PlaylistProvider>(
        builder:(context,value,child)
        {

          final List<Song> playlist = value.playlist;

          return ListView.builder(
            itemCount:playlist.length ,
          itemBuilder: (context,index){
            final Song song = playlist[index];
            return ListTile(
              title: Text(song.songname),
              leading: Image.asset(song.albumImagepath),
              subtitle: Text(song.artistname),
              onTap: () => goToSong(index),
            );
          },
          );
        },
       

      ),
    );
  }
}