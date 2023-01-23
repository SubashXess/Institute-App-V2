import 'package:flutter/material.dart';
import 'package:institute_app_v2/components/star_ratings.dart';
import 'package:institute_app_v2/constants/boxshadow.dart';
import 'package:institute_app_v2/constants/dimensions.dart';
import 'package:institute_app_v2/constants/textstyles.dart';
import 'package:institute_app_v2/constants/themes.dart';
import 'package:institute_app_v2/widgets/rounded_button_widget.dart';
import 'package:readmore/readmore.dart';

import '../../../components/view_review_contents.dart';

class ViewerVisitTutorProfilePage extends StatefulWidget {
  const ViewerVisitTutorProfilePage({super.key});

  @override
  State<ViewerVisitTutorProfilePage> createState() =>
      _ViewerVisitTutorProfilePageState();
}

class _ViewerVisitTutorProfilePageState
    extends State<ViewerVisitTutorProfilePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      // bottomSheet: SafeArea(
      //   child: Container(
      //     width: size.width,
      //     child: Column(
      //       mainAxisSize: MainAxisSize.min,
      //       children: [
      //         Row(
      //           children: [
      //             Expanded(
      //               child: RoundedButtonWidget(
      //                 size: size,
      //                 color: AppTheme.appThemeColor,
      //                 label: Text(
      //                   'Request a call back',
      //                   style: AppTextStyle.h4TextStyle(color: Colors.white),
      //                 ),
      //               ),
      //             ),
      //             Expanded(
      //               child: RoundedButtonWidget(
      //                 size: size,
      //                 color: AppTheme.appThemeColor,
      //                 label: Text(
      //                   'Send a message',
      //                   style: AppTextStyle.h4TextStyle(color: Colors.white),
      //                 ),
      //               ),
      //             ),
      //           ],
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
      body: Container(
        width: size.width,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () => Navigator.pop(context),
                        child: Container(
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12.0),
                            boxShadow: [
                              AppBoxShadow.s0BoxShadow(
                                  color: Colors.black.withOpacity(0.086))
                            ],
                          ),
                          child: const Icon(
                            Icons.arrow_back_rounded,
                            size: AppIconDimensions.appIconMediumSize,
                            color: AppIconTheme.appIconThemeDark,
                          ),
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () => _simplePopup(),
                        child: Container(
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12.0),
                            boxShadow: [
                              AppBoxShadow.s0BoxShadow(
                                  color: Colors.black.withOpacity(0.086))
                            ],
                          ),
                          child: const Icon(
                            Icons.more_vert_rounded,
                            size: AppIconDimensions.appIconMediumSize,
                            color: AppIconTheme.appIconThemeDark,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: size.width,
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [
                      Material(
                        elevation: 5.0,
                        shadowColor: Colors.black.withOpacity(0.086),
                        child: const CircleAvatar(
                          backgroundColor:
                              AppContainerTheme.appContainerBluishTheme,
                          radius: 52.0,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            backgroundImage: NetworkImage(
                                'https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHw%3D&w=1000&q=80'),
                            radius: 48.0,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      Text('Jack Snow',
                          textAlign: TextAlign.center,
                          style: AppTextStyle.h1TextStyle()),
                      const SizedBox(height: 6.0),
                      Text('Personal Tutor',
                          textAlign: TextAlign.center,
                          style: AppTextStyle.h4TextStyle(
                              color: AppTextTheme.appTextThemeLight)),
                      SizedBox(height: size.height * 0.056),
                    ],
                  ),
                ),
                Container(
                  width: size.width,
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          _buildProfileStatus(
                            header: '830 Ratings'.toUpperCase(),
                            value: '4.7',
                            title: const StarDisplayWidget(
                              initialRatings: 4.7,
                              color: AppTextTheme.appTextThemeLight,
                              size: 14.0,
                            ),
                          ),
                          const SizedBox(width: 10.0),
                          _buildProfileStatus(
                            header: 'Enrollment'.toUpperCase(),
                            value: '1200+',
                            title: Text(
                              'Students',
                              style: AppTextStyle.h4TextStyle(
                                  size: 13.0,
                                  color: AppTextTheme.appTextThemeLight),
                            ),
                          ),
                          const SizedBox(width: 10.0),
                          _buildProfileStatus(
                            header: 'Experience'.toUpperCase(),
                            value: '7+',
                            title: Text(
                              'Years',
                              style: AppTextStyle.h4TextStyle(
                                  size: 13.0,
                                  color: AppTextTheme.appTextThemeLight),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16.0),
                      Text('About', style: AppTextStyle.h2TextStyle()),
                      const SizedBox(height: 10.0),
                      ReadMoreText(
                        """I am student of Data Science at CMI. I did my Bachelors' in Mathematics and Computing. I have always made it to the top ranks in my examinations. Mathematics and Computer Science have always interested me. In my +2 standard I had English, Physics, Chemistry, Mathematics and Computer Science. My % aggregate of the latter four subjects is 93.75%. "I am reliable, patient and friendly tutor."- this is what the ones I teach, say. I will help and guide in other subjects and planning of studies too. For GRE, we can work together collaborating our our resources and learning together. Mathematics, I have been attracted to this subject right from the moment I started my student life. Narrowing down to one or two topics of Mathematics has been difficult for me, but there is no rush. I will try to know the subject more and the topic will come to me. In Computer Science my basic interest lies in programming. I know three programming languages- C,C++,python. I keep practicing to hone my skills and widen my knowledge base.""",
                        trimLines: 5,
                        trimMode: TrimMode.Line,
                        trimCollapsedText: ' Show more',
                        trimExpandedText: ' Show less',
                        style: AppTextStyle.h4TextStyle(
                            color: AppTextTheme.appTextThemeLight, size: 13.0),
                        lessStyle: AppTextStyle.h4TextStyle(
                            fontWeight: FontWeight.w500,
                            color: AppTheme.appThemeColor),
                        moreStyle: AppTextStyle.h4TextStyle(
                            fontWeight: FontWeight.w500,
                            color: AppTheme.appThemeColor),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: size.width,
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 16.0),
                      Text('Reviews', style: AppTextStyle.h2TextStyle()),
                      const SizedBox(height: 10.0),
                      const ViewReviewsContents(
                        img:
                            'https://media.istockphoto.com/id/539246041/photo/happy-student-in-class.jpg?s=612x612&w=0&k=20&c=lIyIt9Rq5Ahj140VLYYDB8urF8ss-eqoZVbkAlAsXIk=',
                        name: 'Johan Perkins',
                        ratings: 4.5,
                        createdBy: '1',
                        content:
                            'he is a very good personality and very brilliant student. his math and science subject is very well.And they explain science and math like that even a small child can do advanced level math?',
                      ),
                      const ViewReviewsContents(
                        img:
                            'https://media.istockphoto.com/id/1278973857/photo/smiling-student-guy-preparing-for-exam-at-school.jpg?s=612x612&w=0&k=20&c=mIz_-ZiJgtWAUD5Pc4YpbS8sY9iqaEsCOcB8lez019k=',
                        name: 'Jitendra kumar',
                        ratings: 4.0,
                        createdBy: '2',
                        content:
                            'Excellent knowledge in physics you obtained during study in Sainik School would help the aspirant students as well parents a lot as a trustworthy teacher like you..wish you all the best in your future ...',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _simplePopup() => PopupMenuButton<int>(
        itemBuilder: (context) => [
          const PopupMenuItem(
            value: 1,
            child: Text("First"),
          ),
          const PopupMenuItem(
            value: 2,
            child: Text("Second"),
          ),
        ],
      );

  Widget _buildProfileStatus(
      {required String header, required String value, required Widget title}) {
    return Expanded(
      child: Column(
        children: [
          Text(
            header,
            style: AppTextStyle.h4TextStyle(
              fontWeight: FontWeight.w500,
              size: 12.0,
              color: AppTextTheme.appTextThemeLight.withOpacity(0.30),
            ),
          ),
          const SizedBox(height: 6.0),
          Text(
            value,
            style: AppTextStyle.h3TextStyle(
              fontWeight: FontWeight.w700,
              color: AppTextTheme.appTextThemeLight,
              size: 15.0,
            ),
          ),
          const SizedBox(height: 6.0),
          title,
        ],
      ),
    );
  }
}
