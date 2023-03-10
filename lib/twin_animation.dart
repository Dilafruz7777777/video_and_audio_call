import 'package:flutter/material.dart';
class TwinAnimationPage extends StatefulWidget {
  const TwinAnimationPage({Key? key}) : super(key: key);

  @override
  State<TwinAnimationPage> createState() => _TwinAnimationPageState();
}

class _TwinAnimationPageState extends State<TwinAnimationPage>
    with SingleTickerProviderStateMixin {
  double targetValue = 24.0;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TweenAnimationBuilder<double>(
          tween: Tween<double>(begin: 0, end: targetValue),
          duration: Duration(seconds: 1),
          builder: (BuildContext context, double size, Widget? model){
            return TextButton( child: Text("Text", style: TextStyle(fontSize: size),),

              onPressed: (){
              targetValue  =  ((targetValue == 48.0) ? 96.0 : 48.0);
              setState(() {});
              },
            );
          },
        )
        ),
      );
  }
}
