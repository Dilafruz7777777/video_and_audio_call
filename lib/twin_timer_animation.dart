import 'package:agora_uikit/agora_uikit.dart';
import 'package:flutter/material.dart';

class TwinTimerAnimationPage extends StatefulWidget
{

  const TwinTimerAnimationPage(
      {Key? key, })
      : super(key: key);

  @override
  State<TwinTimerAnimationPage> createState() => _TwinTimerAnimationPageState();
}

class _TwinTimerAnimationPageState extends State<TwinTimerAnimationPage>
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
          Container(
            width: 200,
            height: 200,
            color: Colors.red,
            child: Text(
              ""
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
