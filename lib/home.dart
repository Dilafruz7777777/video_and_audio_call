import 'package:flutter/material.dart';
import 'package:video_and_audio_call/video_call_page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController channelName = TextEditingController();
  final TextEditingController userName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Events"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: TextFormField(
                          controller: channelName,
                          decoration:
                              InputDecoration(labelText: "Channel Name"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: TextFormField(
                          controller: userName,
                          decoration: InputDecoration(labelText: "User name"),
                        ),
                      ),
                    ],
                  ),
                  actions: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) {
                          return VideoCallPage(
                              channelName: channelName.text,
                              userName: userName.text, username: '',);
                        }));
                      },
                      child: Text("Go"),
                    )
                  ],
                );
              });
        },
      ),
    );
  }
}
