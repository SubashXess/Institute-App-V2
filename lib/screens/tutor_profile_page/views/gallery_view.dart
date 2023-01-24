import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:institute_app_v2/constants/themes.dart';

class GalleryView extends StatelessWidget {
  const GalleryView({super.key, required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
      child: MasonryGridView.builder(
        gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3),
        mainAxisSpacing: 16.0,
        crossAxisSpacing: 16.0,
        itemCount: 60,
        shrinkWrap: true,
        itemBuilder: (context, index) => buildImageCard(index),
      ),
    );
  }

  Widget buildImageCard(int index) => Container(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: AppContainerTheme.appContainerGreyTheme,
        ),
        child: Image.network(
          'https://source.unsplash.com/random?sig=$index',
          fit: BoxFit.cover,
        ),
      );
}
