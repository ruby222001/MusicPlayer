import 'package:flutter/material.dart';
import 'package:musicplayer/components/neu_box.dart';
import 'package:musicplayer/models/playlist_provider.dart';
import 'package:provider/provider.dart';
class SongPage extends StatelessWidget {
  const SongPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Consumer<PlaylistProvider>(
      builder: (context,value,child)=> Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
body: SafeArea(
  child: Padding(
    padding: const EdgeInsets.only(left:25,right: 25,bottom: 25),
    child: Column(
      children: [
    
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_back),
        ),
        const Text('"P L A Y L I S T'),
        IconButton(onPressed: (){}, icon: const Icon(Icons.menu),
        ),
      ],
    ),
    NeuBox(child: Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset("assets/images/audioimage.jpg"),
          ),
        const Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Try Again",style: TextStyle(
                      fontWeight: FontWeight.bold,fontSize: 20,
                    ),),
                    Text("Jehyun"),
                  ],
                ),
                Icon(Icons.favorite,color: Colors.red,)
              ],
            ),
        ),
      ],
    ),)
      ],
    ),
  ),
),
    ),
    );
  }
}