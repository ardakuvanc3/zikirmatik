import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _counter = 0;
  void _incrementCounter(){
    _counter ++;
    setState(() {});
  }

  void _resetCounter(){
    _counter = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color((0xFF191919)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset('assets/images/zikirmatik.png', width: 300),
                 Positioned(
                    top: 46,
                    right: 80,
                    child: Text(_counter.toString(), style: const TextStyle(fontFamily: 'Digital7', fontSize: 50, color: Colors.white))),
                Positioned(
                  bottom: 26,
                    child:
                GestureDetector(
                  onTap: () {
                    _incrementCounter();
                  },
                  child: Container(
                    width: 100,
                    height: 100 ,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(60)),
                  ),
                )),
                  Positioned(
                    right: 75,
                      bottom: 114,
                      child:
                  GestureDetector(
                    onTap: (){
                      _resetCounter();
                    },
                    child: Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(60)),
                    ),
                  ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
