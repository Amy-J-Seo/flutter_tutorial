import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key, required this.image, required this.text, required this.color, required this.radius, required this.onPressed});

  final Widget image;
  final Widget text;
  final Color color;
  final double radius;
  final VoidCallback onPressed;


  @override
  Widget build(BuildContext context) {
    return    ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius), // <-- Radius
        ),
        foregroundColor: Colors.grey, // background
        backgroundColor: color, // foreground
      ),
      onPressed:onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:<Widget> [
          image,
          text,
          Opacity(opacity: 0.0,child: image,
          )
        ],
      ),
    );
  }
}
