import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:institute_app_v2/constants/dimensions.dart';
import 'package:institute_app_v2/constants/textstyles.dart';
import 'package:institute_app_v2/models/drawer_model.dart';
import '../constants/boxshadow.dart';
import '../constants/themes.dart';

class CustomDrawerWidget extends StatelessWidget {
  const CustomDrawerWidget({super.key, required this.drawerModel});
  final List<DrawerModel> drawerModel;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 6.0, sigmaY: 6.0),
      child: SafeArea(
        child: Container(
          width: size.width * 0.76,
          height: size.height,
          margin: const EdgeInsets.all(16.0),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            color: Colors.white,
          ),
          child: Column(
            children: [
              Container(
                width: size.width,
                padding: const EdgeInsets.all(10.0),
                margin: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 32.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  border: Border.all(width: 1.4, color: Colors.black12),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 46.0,
                      height: 46.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        color: Colors.white,
                        boxShadow: [
                          AppBoxShadow.s1BoxShadow(
                              color: Colors.black.withOpacity(0.12), y: 4.0)
                        ],
                      ),
                      child: Container(
                        margin: const EdgeInsets.all(3.0),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          color: AppContainerTheme.appContainerGreyTheme,
                        ),
                        child: Image.asset(
                          'assets/temp/pexels-tam-hoang-1007066.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hajah Bolot',
                            maxLines: 1,
                            overflow: TextOverflow.clip,
                            style: AppTextStyle.h3TextStyle(
                                size: 14.0, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(height: 4.0),
                          Text(
                            '+91 987654 32310',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: AppTextStyle.h4TextStyle(
                              color: AppTextTheme.appTextThemeLight,
                              size: 12.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 14.0,
                      color: Colors.black12,
                    )
                  ],
                ),
              ),
              ListView(
                shrinkWrap: true,
                children: List.generate(drawerModel.length, (index) {
                  final items = drawerModel[index];
                  return Container(
                    width: size.width,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 16.0),
                    child: InkWell(
                      onTap: () => onItemPressed(context, index),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(items.icon,
                              size: AppIconDimensions.appIconSystemSize,
                              color: Colors.black54),
                          const SizedBox(width: 16.0),
                          Text(
                            items.label,
                            style: AppTextStyle.h3TextStyle(
                              color: AppTextTheme.appTextThemeLight,
                              size: 14.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.only(
                    left: 16.0, bottom: 32.0, right: 16.0),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      const Icon(
                        Icons.logout_rounded,
                        color: Colors.black54,
                        size: AppIconDimensions.appIconSystemSize,
                      ),
                      const SizedBox(width: 16.0),
                      Text(
                        'Sign out',
                        style: AppTextStyle.h3TextStyle(
                          color: Colors.black54,
                          size: 14.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onItemPressed(BuildContext context, int index) {
    Navigator.pop(context);

    switch (index) {
      case 0:
        // Navigator.pushNamed(context, '/');
        break;
      case 1:
        // Navigator.pushNamed(context, '/');
        break;
      case 2:
        // Navigator.pushNamed(context, '/');
        break;
      case 3:
        // Navigator.pushNamed(context, '/');
        break;
      case 4:
        // Navigator.pushNamed(context, '/');
        break;
      case 5:
        // Navigator.pushNamed(context, '/');
        break;
      case 6:
        // Navigator.pushNamed(context, '/');
        break;
      default:
    }
  }
}
