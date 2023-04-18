import 'package:flutter/material.dart';
import 'package:manga_easy_manga_details/src/features/presenter/controllers/manga_details_controller.dart';
import 'package:manga_easy_manga_details/src/features/presenter/ui/molecules/text_button_bottom_border.dart';
import 'package:manga_easy_themes/manga_easy_themes.dart';
import 'rating_page.dart';
import 'details_page.dart';

class BottomSidePage extends StatefulWidget {
  const BottomSidePage({super.key, required this.controller});
  final MangaDetailsController controller;
  @override
  State<BottomSidePage> createState() => _BottomSidePageState();
}

class _BottomSidePageState extends State<BottomSidePage> {
  @override
  void initState() {
    widget.controller.pageController.addListener(() {
      setState(() {});
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 70),
      color: ThemeService.of.backgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Positioned(
                child: Container(
                  width: double.infinity,
                  height: 3,
                  color: ThemeService.of.primaryColor,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextButtonBottomBorder(
                    text: 'Detalhes',
                    onTap: () => widget.controller.pageController.animateToPage(
                      0,
                      duration: widget.controller.duration,
                      curve: widget.controller.curves,
                    ),
                    color: widget.controller.page == 0
                        ? ThemeService.of.backgroundText
                        : ThemeService.of.primaryColor,
                  ),
                  const SizedBox(width: 10),
                  TextButtonBottomBorder(
                    text: 'Avaliações',
                    onTap: () => widget.controller.pageController.animateToPage(
                      1,
                      duration: widget.controller.duration,
                      curve: widget.controller.curves,
                    ),
                    color: widget.controller.page == 1
                        ? ThemeService.of.backgroundText
                        : ThemeService.of.primaryColor,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 1030,
            child: PageView(
              controller: widget.controller.pageController,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                DetailsPage(
                  controller: widget.controller,
                ),
                RatingPage(
                  controller: widget.controller,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
