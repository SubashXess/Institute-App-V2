import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:institute_app_v2/constants/textstyles.dart';
import 'package:institute_app_v2/constants/themes.dart';

class GalleryView extends StatelessWidget {
  const GalleryView({super.key, required this.size});
  final Size size;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 16.0,
        mainAxisSpacing: 16.0,
        mainAxisExtent: size.height * 0.16,
      ),
      itemCount: 39,
      shrinkWrap: true,
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, index) => buildImageCard(index, context),
    );
  }

  Widget buildImageCard(int index, context) => InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () => showFullImage(
            context, "https://source.unsplash.com/random?sig=$index"),
        child: Container(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            color: AppContainerTheme.appContainerGreyTheme,
          ),
          child: Image.network(
            'https://source.unsplash.com/random?sig=$index',
            fit: BoxFit.cover,
          ),
        ),
      );

  Future showFullImage(BuildContext context, String img) {
    return showDialog(
      context: context,
      builder: (context) => BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 6.0, sigmaY: 6.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: size.width,
              margin: const EdgeInsets.all(16.0),
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: Colors.white,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: size.width,
                    // height: size.height * 0.4,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: AppContainerTheme.appContainerBluishTheme,
                    ),
                    child: Image.network(
                      img,
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Text('Title', style: AppTextStyle.h3TextStyle()),
                  const SizedBox(height: 16.0),
                  Text('Subtitle',
                      style: AppTextStyle.h4TextStyle(
                          color: AppTextTheme.appTextThemeLight)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
