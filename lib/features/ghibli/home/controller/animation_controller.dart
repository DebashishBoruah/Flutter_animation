import 'package:flutter/material.dart';

class AnimationController extends StatefulWidget {
  const AnimationController({super.key});

  @override
  State<AnimationController> createState() => _AnimationControllerState();
}

class _AnimationControllerState extends State<AnimationController> {
  @override
  Widget build(BuildContext context) {
    bool isSelected = false;
    return  GestureDetector(
      onTap: () =>
      {
       setState(() {
         isSelected = !isSelected;
       }),
      },
      child:  Padding(
        padding: const EdgeInsets.all(11.0),
        child: Container(
                height:90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue,
                ),
          child:AnimatedAlign(
            alignment: isSelected ? Alignment.bottomRight: Alignment.bottomLeft,
            duration: const Duration(seconds: 2),
            curve: Curves.fastOutSlowIn,
          ),
        ),
      ),
    );
  }
}