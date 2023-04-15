import 'package:flutter/material.dart';
import 'package:manga_easy_themes/manga_easy_themes.dart';

class OptionsAppbar extends StatelessWidget {
  const OptionsAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      // back and more options buttons
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios,
            color: ThemeService.of.backgroundText,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.more_vert),
          color: ThemeService.of.backgroundText,
        ),
      ],
    );
  }
}
