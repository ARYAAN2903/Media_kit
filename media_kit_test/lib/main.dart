import 'package:flutter/material.dart';
import 'package:media_kit/media_kit.dart';
import 'package:media_kit_video/media_kit_video.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MediaKit.ensureInitialized();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MyScreen(),
    ),
  );
}

class MyScreen extends StatefulWidget {
  const MyScreen({Key? key}) : super(key: key);
  @override
  State<MyScreen> createState() => MyScreenState();
}

class MyScreenState extends State<MyScreen> {
  late final Player player = Player();
  late final VideoController controller = VideoController(player);

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  void playVideo(String videoUrl) {
    player.open(Media(videoUrl));
  }

  Future<void> playNextVideo() async {
    await player.next();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video List', style: TextStyle(
          color: Colors.white
        ),),
        backgroundColor: Colors.blue,

        // Set color for the AppBar
      ),
      body: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width * 9.0 / 16.0,
            child: Video(controller: controller),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    buildVideoListItem('Video 1',
                        'https://user-images.githubusercontent.com/28951144/229373695-22f88f13-d18f-4288-9bf1-c3e078d83722.mp4'),
                    buildVideoListItem('Video 2',
                        'https://user-images.githubusercontent.com/28951144/229373709-603a7a89-2105-4e1b-a5a5-a6c3567c9a59.mp4'),
                    buildVideoListItem('Video 3',
                        'https://user-images.githubusercontent.com/28951144/229373716-76da0a4e-225a-44e4-9ee7-3e9006dbc3e3.mp4'),
                    buildVideoListItem('Video 4',
                        'https://user-images.githubusercontent.com/28951144/229373718-86ce5e1d-d195-45d5-baa6-ef94041d0b90.mp4'),
                    buildVideoListItem('Video 5',
                        'https://user-images.githubusercontent.com/28951144/229373720-14d69157-1a56-4a78-a2f4-d7a134d7c3e9.mp4'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildVideoListItem(String title, String videoUrl) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: ListTile(
        title: Text(title),
        trailing: IconButton(
          icon: Icon(Icons.play_arrow),
          onPressed: () {
            playVideo(videoUrl);
          },
        ),
      ),
    );
  }
}
