import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TextAnimation extends StatefulWidget {
  const TextAnimation({super.key});

  @override
  State<TextAnimation> createState() => _TextAnimationState();
}

class _TextAnimationState extends State<TextAnimation> {
  bool switchAnim = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          AnimatedSwitcher(
            duration: Duration(seconds: 3),
            
            child: getWdiget(),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  switchAnim = !switchAnim;
                });
              },
              child: Text('click on me'))
        ],
      ),
    ));
  }

  Widget getWdiget() {
    return (switchAnim) ? getFirst() : getSecond();
  }

  Widget getFirst() {
    return Container(
      height: 200,
      width: 400,
      color: Colors.red,
    );
  }

  Widget getSecond() {
    return Container(
      height: 100,
      width: 300,
      color: Colors.blue,
    );
  }
}
