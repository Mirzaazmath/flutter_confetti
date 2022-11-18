import 'package:flutter/material.dart';
import 'package:confetti/confetti.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 late  ConfettiController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller=ConfettiController(duration: Duration(seconds: 2));
    _controller.play();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:Column(
        children: [
          Center(
            child: ConfettiWidget(
              emissionFrequency: 0.6,
              confettiController: _controller,
              blastDirectionality: BlastDirectionality.explosive,
              shouldLoop: true,

            ),
          ),
        ],
      )
      ,
    );
  }
}

