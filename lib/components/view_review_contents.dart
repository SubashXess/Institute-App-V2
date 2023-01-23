import 'package:flutter/material.dart';
import 'package:institute_app_v2/components/star_ratings.dart';
import 'package:readmore/readmore.dart';
import '../constants/textstyles.dart';
import '../constants/themes.dart';

class ViewReviewsContents extends StatelessWidget {
  const ViewReviewsContents({
    Key? key,
    required this.name,
    required this.img,
    required this.ratings,
    required this.content,
    required this.createdBy,
    this.updatedBy,
  }) : super(key: key);
  final String name;
  final String img;
  final double ratings;
  final String content;
  final String createdBy;
  final String? updatedBy;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: AppContainerTheme.appContainerBluishTheme,
                radius: 15.0,
                backgroundImage: NetworkImage(img),
              ),
              const SizedBox(width: 16.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyle.h4TextStyle(
                          fontWeight: FontWeight.w500, size: 13.0),
                    ),
                    const SizedBox(height: 4.0),
                    Row(
                      children: [
                        StarDisplayWidget(
                          initialRatings: ratings,
                          color: AppTheme.appThemeColor,
                          size: 14.0,
                        ),
                        const SizedBox(width: 6.0),
                        Text(
                          '($ratings ratings)',
                          style: AppTextStyle.h4TextStyle(
                              color: AppTextTheme.appTextThemeLight,
                              fontWeight: FontWeight.w500,
                              size: 12.0),
                        ),
                        const Spacer(),
                        Text(
                          '$createdBy days ago',
                          style: AppTextStyle.h4TextStyle(
                            color: AppTextTheme.appTextThemeLight,
                            size: 12.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 10.0),
          ReadMoreText(
            content,
            trimLines: 5,
            trimMode: TrimMode.Line,
            trimCollapsedText: ' Show more',
            trimExpandedText: ' Show less',
            style: AppTextStyle.h4TextStyle(
                color: AppTextTheme.appTextThemeLight, size: 13.0),
            lessStyle: AppTextStyle.h4TextStyle(
                fontWeight: FontWeight.w500,
                size: 13.0,
                color: AppTheme.appThemeColor),
            moreStyle: AppTextStyle.h4TextStyle(
                fontWeight: FontWeight.w500,
                size: 13.0,
                color: AppTheme.appThemeColor),
          ),
        ],
      ),
    );
  }
}
