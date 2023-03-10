import 'package:agora_uikit/agora_uikit.dart';
import 'package:flutter/material.dart';

class AnimationPage extends StatefulWidget {

  const AnimationPage(
      {Key? key, })
      : super(key: key);

  @override
  State<AnimationPage> createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      lowerBound: 0,
      upperBound: 200,
      vsync: this,
      duration: Duration(milliseconds: 1500),
    );
    _controller.forward();
    _controller.addListener(() {
      setState(() {});
      print("_controller.value");
      print("_controller.value");
    });
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            bottom: _controller.value / 2,
            left: _controller.value / 2,
            right: _controller.value / 2,
            child: Container(
              width: _controller.value,
              height: _controller.value,
              color: Colors.red,
            ),
          ),
        ],
      ),
      floatingActionButton: Row(
        children: [
          FloatingActionButton(
            onPressed: () {
              _controller.stop();
              _controller.value == 0
                  ? _controller.forward()
                  : _controller.reverse();
            },
          ),
           FloatingActionButton(
            onPressed: () {
              _controller.stop();

            },
          ),
        ],
      ),
    );
  }
}
