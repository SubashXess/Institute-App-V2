import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import '../../../constants/dimensions.dart';
import '../../../constants/textstyles.dart';
import '../../../constants/themes.dart';

class DetailsView extends StatefulWidget {
  const DetailsView({super.key, required this.size});

  final Size size;

  @override
  State<DetailsView> createState() => _DetailsViewState();
}

class _DetailsViewState extends State<DetailsView> {
  double height = 40.0;
  bool onClick = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ReadMoreText(
            """I am student of Data Science at CMI. I did my Bachelors' in Mathematics and Computing. I have always made it to the top ranks in my examinations. Mathematics and Computer Science have always interested me. In my +2 standard I had English, Physics, Chemistry, Mathematics and Computer Science. My % aggregate of the latter four subjects is 93.75%. "I am reliable, patient and friendly tutor."- this is what the ones I teach, say. I will help and guide in other subjects and planning of studies too. For GRE, we can work together collaborating our our resources and learning together. Mathematics, I have been attracted to this subject right from the moment I started my student life. Narrowing down to one or two topics of Mathematics has been difficult for me, but there is no rush. I will try to know the subject more and the topic will come to me. In Computer Science my basic interest lies in programming. I know three programming languages- C,C++,python. I keep practicing to hone my skills and widen my knowledge base.""",
            trimLines: 5,
            trimMode: TrimMode.Line,
            trimCollapsedText: ' Show more',
            trimExpandedText: ' Show less',
            style: AppTextStyle.h4TextStyle(
                color: AppTextTheme.appTextThemeLight, size: 13.0),
            lessStyle: AppTextStyle.h4TextStyle(
                fontWeight: FontWeight.w500, color: AppTheme.appThemeColor),
            moreStyle: AppTextStyle.h4TextStyle(
                fontWeight: FontWeight.w500, color: AppTheme.appThemeColor),
          ),
          const SizedBox(height: 16.0),
          _buildRowItems(
              size: widget.size,
              icons: Icons.location_on_rounded,
              value:
                  'District Square, Chandrasekharpur, Bhubaneswar, Odisha 751019'),
          const SizedBox(height: 10.0),
          _buildRowItems(
              size: widget.size,
              icons: Icons.school_rounded,
              value: 'IIT Kharagpur in Metallurgical Engineering'),
        ],
      ),
    );
  }

  Widget _buildRowItems(
      {required Size size, required IconData icons, required String value}) {
    return SizedBox(
      width: size.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icons,
            size: AppIconDimensions.appIconSystemSize,
            color: AppIconTheme.appIconThemeLight,
          ),
          const SizedBox(width: 16.0),
          Expanded(
            child: Text(
              value,
              style: AppTextStyle.h4TextStyle(
                  fontWeight: FontWeight.normal,
                  color: AppTextTheme.appTextThemeLight),
            ),
          ),
        ],
      ),
    );
  }
}
