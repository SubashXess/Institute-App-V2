import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:institute_app_v2/constants/dimensions.dart';
import 'package:institute_app_v2/constants/textstyles.dart';

import '../constants/boxshadow.dart';
import '../constants/themes.dart';

class CustomDrawerWidget extends StatelessWidget {
  const CustomDrawerWidget({super.key});

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
          padding: const EdgeInsets.all(16.0),
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
                      Icons.keyboard_arrow_down_rounded,
                      size: AppIconDimensions.appIconMediumSize,
                      color: Colors.black45,
                    )
                  ],
                ),
              ),
              SizedBox(height: size.height * 0.036),
              Row(
                children: [
                  const Icon(Icons.home),
                  const SizedBox(width: 16.0),
                  Text('Home', style: AppTextStyle.h3TextStyle()),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
