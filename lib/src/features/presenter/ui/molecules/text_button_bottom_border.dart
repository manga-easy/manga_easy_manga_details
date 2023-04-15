import 'package:coffee_cup/coffe_cup.dart';
import 'package:flutter/material.dart';

class TextButtonBottomBorder extends StatefulWidget {
  final Function()? onTap;
  final Color color;
  final String text;
  const TextButtonBottomBorder({
    Key? key,
    required this.text,
    required this.onTap,
    required this.color,
  }) : super(key: key);

  @override
  State<TextButtonBottomBorder> createState() => _TextButtonBottomBorderState();
}

class _TextButtonBottomBorderState extends State<TextButtonBottomBorder> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        width: 100,
        height: 35,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 3,
              color: widget.color,
            ),
          ),
        ),
        child: Center(
          child: CoffeeText(
            text: widget.text,
            typography: CoffeeTypography.button,
          ),
        ),
      ),
    );
  }
}
