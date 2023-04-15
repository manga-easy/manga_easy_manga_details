import 'package:coffee_cup/features/text/coffee_text.dart';
import 'package:flutter/material.dart';

class GenresChips extends StatefulWidget {
  const GenresChips({super.key, required this.genres});
  final List<String> genres;
  @override
  State<GenresChips> createState() => _GenresChipsState();
}

class _GenresChipsState extends State<GenresChips> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        itemCount: widget.genres.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Chip(
              label: CoffeeText(text: widget.genres[index]),
              labelPadding:
                  const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
            ),
          );
        },
      ),
    );
  }
}
