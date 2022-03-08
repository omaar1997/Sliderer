import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Center(child: Text('Shahd')),
            backgroundColor: Color.fromARGB(255, 24, 160, 76),
          ),
          backgroundColor: Color.fromARGB(255, 83, 160, 69),
          body: omar()),
    ),
  );
}

/*OutlinedButton(
              onPressed: () => {},
              child: Text('Next'),
              style: OutlinedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(24),
              ),
            ),*/

/*  child: ClipRRect(
              borderRadius: BorderRadius.circular(25),),*/

class omar extends StatefulWidget {
  const omar({Key? key}) : super(key: key);

  @override
  State<omar> createState() => _omarState();
}

class _omarState extends State<omar> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _tween;

  String texts = 'Previous';
  final List<String> pics = [
    'images/Shahd.jpg',
    'images/diamond.png',
    'images/vect.png'
  ];
  String path = 'images/Shahd.jpg';
  int index = 0;

  @override
  initState() {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      pics.forEach((imageUrl) {
        precacheImage(AssetImage(imageUrl), context);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 1,
        height: MediaQuery.of(context).size.height * 1,
        color: Colors.brown,
        child: CarouselSlider.builder(
          itemCount: pics.length,
          options: CarouselOptions(
            //width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * 0.80,
            autoPlay: true,
            //aspectRatio: 2.0,
            //onPageChanged: ,
            enlargeCenterPage: true,
          ),
          itemBuilder: (context, index, realIdx) {
            return Container(
              color: Colors.amberAccent,
              child: Image.asset(pics[index], fit: BoxFit.cover, width: 1000),
              /*decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(pics[index]), fit: BoxFit.cover),
              ),*/
            );
          },
        ));
  }

  /* Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.85,
        height: MediaQuery.of(context).size.height * 0.80,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(path), fit: BoxFit.cover),
        ),
        child: Row(
          //crossAxisAlignment: CrossAxisAlignment.end,
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () {
                setState(() {
                  path = pics[index - 1];
                  index--;
                });
              },
              child: Container(
                // alignment: Alignment.topRight,
                margin: EdgeInsets.only(left: _tween.value),
                width: MediaQuery.of(context).size.width * 0.2,
                height: MediaQuery.of(context).size.height * 0.055,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[
                      Color.fromARGB(255, 14, 149, 54),
                      Color.fromARGB(255, 21, 192, 121),
                      Color.fromARGB(255, 4, 219, 165),
                    ],
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                // padding: const EdgeInsets.all(10.0),
                child: const Center(
                  child: Text(
                    'Previous',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  path = pics[index + 1];
                  index++;
                });
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 0.2,
                height: MediaQuery.of(context).size.height * 0.055,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[
                      Color.fromARGB(255, 14, 149, 54),
                      Color.fromARGB(255, 21, 192, 121),
                      Color.fromARGB(255, 4, 219, 165),
                    ],
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                //padding: const EdgeInsets.all(10.0),
                child: const Center(
                  child: Text(
                    'Next',
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );*/
}

//-------------------------- Animation Tween ----------------------------
/*

double targetValue = 24.0;
TweenAnimationBuilder<double>(
          tween: Tween<double>(begin: 0, end: targetValue),
          duration: const Duration(seconds: 1),
          builder: (BuildContext context, double size, Widget? child) {
            return ElevatedButton(
                onPressed: () {
                  setState(() {
                    targetValue = 48.0;
                  });
                },
                child: Text('data'));
          });
          */