import 'package:flutter/material.dart';
import 'package:institute_app_v2/constants/boxshadow.dart';
import 'package:institute_app_v2/constants/dimensions.dart';
import 'package:institute_app_v2/constants/textstyles.dart';
import 'package:institute_app_v2/constants/themes.dart';

class CourseView extends StatefulWidget {
  const CourseView({super.key, required this.size});

  final Size size;

  @override
  State<CourseView> createState() => _CourseViewState();
}

class _CourseViewState extends State<CourseView> {
  bool onClick = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.size.width,
      child: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
        children: List.generate(
          2,
          (index) {
            return Container(
              width: widget.size.width,
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
              margin: const EdgeInsets.only(bottom: 16.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: Colors.white,
                boxShadow: [
                  AppBoxShadow.s1BoxShadow(
                      color: Colors.black.withOpacity(0.036))
                ],
              ),
              child: InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () {
                  setState(() {
                    onClick = !onClick;
                  });
                },
                child: Row(
                  crossAxisAlignment: onClick
                      ? CrossAxisAlignment.start
                      : CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Physics',
                              style: AppTextStyle.h4TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: AppTextTheme.appTextThemeDark)),
                          const SizedBox(height: 6.0),
                          Text(
                            'Available 8:00 AM - 11:00 AM',
                            style: AppTextStyle.h4TextStyle(
                              fontWeight: FontWeight.normal,
                              color: AppTextTheme.appTextThemeLight
                                  .withOpacity(0.4),
                              size: 13.0,
                            ),
                          ),
                          Visibility(
                            visible: onClick,
                            child: const Padding(
                              padding: EdgeInsets.only(top: 10.0),
                              child: Text(
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                                textAlign: TextAlign.start,
                                style: TextStyle(height: 1.2),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Icon(
                      Icons.keyboard_arrow_down_rounded,
                      size: AppIconDimensions.appIconMediumSize,
                      color: AppIconTheme.appIconThemeLight,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
