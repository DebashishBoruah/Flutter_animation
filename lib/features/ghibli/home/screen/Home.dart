import 'package:flutter/material.dart';
import 'package:ghibli_studio/utils/constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: TColors.primary,
        title: const Text(
          "Flutter Animation",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        width: 900,
        decoration: const BoxDecoration(color: TColors.secondary),
        child: const Column(
          children: [
            AnimationControllerWidget(),
          ],
        ),
      ),
    );
  }
}

class AnimationControllerWidget extends StatefulWidget {
  const AnimationControllerWidget({super.key});

  @override
  State<AnimationControllerWidget> createState() => _AnimationControllerWidgetState();
}

class _AnimationControllerWidgetState extends State<AnimationControllerWidget> {
  bool isSelected = false;
  final List<Color> colors = [
    Colors.red,
    Colors.green,
    Colors.pinkAccent,
    Colors.deepPurple,
    Colors.yellow,
    Colors.blue,
    Colors.orange,
    Colors.black,
    Colors.red,
    Colors.green,
    Colors.pinkAccent,
    Colors.deepPurple,
    Colors.yellow,
    Colors.blue,
    Colors.orange,
    Colors.black,
    Colors.red,
    Colors.green,
    Colors.pinkAccent,
    Colors.deepPurple,
    Colors.yellow,
    Colors.blue,
    Colors.orange,
    Colors.black,
    Colors.red,
    Colors.green,
    Colors.pinkAccent,
    Colors.deepPurple,
    Colors.yellow,
    Colors.blue,
    Colors.orange,
    Colors.black,
  ];

  final List<Alignment> alignments = [
    Alignment.bottomCenter,
    Alignment.bottomCenter,
    Alignment.bottomCenter,
    Alignment.bottomCenter,
    Alignment.bottomCenter,
    Alignment.bottomCenter,
    Alignment.bottomCenter,
    Alignment.bottomCenter,
    Alignment.bottomCenter,
    Alignment.bottomCenter,
    Alignment.bottomCenter,
    Alignment.bottomCenter,
    Alignment.bottomCenter,
    Alignment.bottomCenter,
    Alignment.bottomCenter,
    Alignment.bottomCenter,
    Alignment.bottomCenter,
    Alignment.bottomCenter,
    Alignment.bottomCenter,
    Alignment.bottomCenter,
    Alignment.bottomCenter,
    Alignment.bottomCenter,
    Alignment.bottomCenter,
    Alignment.bottomCenter,
    Alignment.bottomCenter,
    Alignment.bottomCenter,
    Alignment.bottomCenter,
    Alignment.bottomCenter,
    Alignment.bottomCenter,
    Alignment.bottomCenter,
    Alignment.bottomCenter,
    Alignment.bottomCenter,
  ];

  final List<Alignment> newAlignments = [
    Alignment.topCenter,
    Alignment.topCenter,
    Alignment.topCenter,
    Alignment.topCenter,
    Alignment.topCenter,
    Alignment.topCenter,
    Alignment.topCenter,
    Alignment.topCenter,
    Alignment.topCenter,
    Alignment.topCenter,
    Alignment.topCenter,
    Alignment.topCenter,
    Alignment.topCenter,
    Alignment.topCenter,
    Alignment.topCenter,
    Alignment.topCenter,
    Alignment.topCenter,
    Alignment.topCenter,
    Alignment.topCenter,
    Alignment.topCenter,
    Alignment.topCenter,
    Alignment.topCenter,
    Alignment.topCenter,
    Alignment.topCenter,
    Alignment.topCenter,
    Alignment.topCenter,
    Alignment.topCenter,
    Alignment.topCenter,
    Alignment.topCenter,
    Alignment.topCenter,
    Alignment.topCenter,
    Alignment.topCenter,
  ];

  final List<Curve> curves = [
    Curves.easeInOut,
    Curves.easeInOut,
    Curves.easeInOut,
    Curves.easeInOut,
    Curves.easeInOut,
    Curves.easeInOut,
    Curves.easeInOut,
    Curves.easeInOut,
    Curves.easeInOut,
    Curves.easeInOut,
    Curves.easeInOut,
    Curves.easeInOut,
    Curves.easeInOut,
    Curves.easeInOut,
    Curves.easeInOut,
    Curves.easeInOut,
    Curves.easeInOut,
    Curves.easeInOut,
    Curves.easeInOut,
    Curves.easeInOut,
    Curves.easeInOut,
    Curves.easeInOut,
    Curves.easeInOut,
    Curves.easeInOut,
    Curves.easeInOut,
    Curves.easeInOut,
    Curves.easeInOut,
    Curves.easeInOut,
    Curves.easeInOut,
    Curves.easeInOut,
    Curves.easeInOut,
    Curves.easeInOut,
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(11.0),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsetsDirectional.all(20),
            width: 700,
            height: 600,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: TColors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                for (int i = 0; i < colors.length; i++)
                  AnimatedAlign(
                    alignment: isSelected ? newAlignments[i] : alignments[i],
                    duration: Duration(seconds: 1 + (i % 9)),
                    curve: curves[i],
                    child: Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: colors[i],
                      ),
                    ),
                  ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: 130,
            height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: TColors.primary,
                foregroundColor: TColors.textWhite,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              ),
              onPressed: () {
                setState(() {
                  isSelected = !isSelected;
                  Future.delayed(const Duration(seconds: 1), () {
                    setState(() {
                      isSelected = false;
                    });
                  });
                });
              },
              child: const Text("Animate"),
            ),
          ),
        ],
      ),
    );
  }
}
