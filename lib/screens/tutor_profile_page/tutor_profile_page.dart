import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:institute_app_v2/screens/tutor_profile_page/views/gallery_view.dart';
import 'package:institute_app_v2/widgets/rounded_button_widget.dart';
import '../../components/star_ratings.dart';
import '../../constants/boxshadow.dart';
import '../../constants/dimensions.dart';
import '../../constants/textstyles.dart';
import '../../constants/themes.dart';
import 'views/course_view.dart';
import 'views/details_view.dart';
import 'views/review_view.dart';

class TutorProfilePage extends StatefulWidget {
  const TutorProfilePage({super.key});

  @override
  State<TutorProfilePage> createState() => _TutorProfilePageState();
}

class _TutorProfilePageState extends State<TutorProfilePage> {
  final _popupKey = GlobalKey<PopupMenuButtonState<int>>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomSheet: SafeArea(
        top: false,
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Physics', style: AppTextStyle.h3TextStyle()),
              Row(
                children: [
                  Expanded(
                    child: RoundedButtonWidget(
                      size: size,
                      color: Colors.amberAccent.shade700,
                      label: const Icon(
                        Icons.message_rounded,
                        color: Colors.white,
                        size: AppIconDimensions.appIconMediumSize,
                      ),
                    ),
                  ),
                  const SizedBox(width: 16.0),
                  Expanded(
                    flex: 4,
                    child: RoundedButtonWidget(
                      size: size,
                      color: AppTheme.appThemeColor,
                      label: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.call_rounded,
                            color: Colors.white,
                            size: AppIconDimensions.appIconMediumSize,
                          ),
                          const SizedBox(width: 10.0),
                          Text(
                            'Request a Call',
                            style: AppTextStyle.h4TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: DefaultTabController(
          length: 4,
          child: SizedBox(
            width: size.width,
            height: size.height,
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
                      PopupMenuButton<int>(
                        key: _popupKey,
                        elevation: 2.0,
                        splashRadius: 10.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0)),
                        padding: EdgeInsets.zero,
                        position: PopupMenuPosition.under,
                        color: Colors.white,
                        offset: const Offset(0.0, 10.0),
                        itemBuilder: (context) => [
                          PopupMenuItem(
                            value: 1,
                            height: 0.0,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 10.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Share',
                                      style: AppTextStyle.h4TextStyle(
                                        color: AppTextTheme.appTextThemeLight,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 20.0),
                                  const Icon(
                                    Icons.share_outlined,
                                    size: 20.0,
                                    color: AppIconTheme.appIconThemeLight,
                                  )
                                ],
                              ),
                            ),
                          ),
                          PopupMenuItem(
                            value: 2,
                            height: 0.0,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 10.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Favorite',
                                      style: AppTextStyle.h4TextStyle(
                                        color: AppTextTheme.appTextThemeLight,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 20.0),
                                  const Icon(
                                    Icons.favorite_outline_rounded,
                                    size: 20.0,
                                    color: AppIconTheme.appIconThemeLight,
                                  )
                                ],
                              ),
                            ),
                          ),
                          PopupMenuItem(
                            value: 3,
                            height: 0.0,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 10.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Report',
                                    style: AppTextStyle.h4TextStyle(
                                        color: AppTextTheme.appTextThemeError),
                                  ),
                                  const SizedBox(width: 20.0),
                                  SvgPicture.asset(
                                    'assets/icons/exclamation.svg',
                                    height: 18.0,
                                    width: 18.0,
                                    color: AppTextTheme.appTextThemeError,
                                    fit: BoxFit.contain,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                        child: Container(
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            color: Colors.white,
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
                  child: Row(
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
                      const SizedBox(width: 16.0),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Jack Snow',
                                textAlign: TextAlign.center,
                                style: AppTextStyle.h1TextStyle(
                                    fontWeight: FontWeight.w600, size: 18.0)),
                            const SizedBox(height: 6.0),
                            Text(
                              'Personal Tutor',
                              textAlign: TextAlign.center,
                              style: AppTextStyle.h4TextStyle(
                                color: AppTextTheme.appTextThemeLight,
                              ),
                            ),
                            const SizedBox(height: 6.0),
                            Text(
                              'Bhubaneswar, Odisha 751019',
                              textAlign: TextAlign.center,
                              style: AppTextStyle.h4TextStyle(
                                color: AppTextTheme.appTextThemeLight,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20.0),
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
                    ],
                  ),
                ),
                const SizedBox(height: 20.0),
                SizedBox(
                  width: size.width,
                  child: TabBar(
                    unselectedLabelColor: Colors.black38,
                    labelColor: Colors.black,
                    labelStyle: AppTextStyle.h4TextStyle(
                        fontWeight: FontWeight.w500, size: 15.0),
                    isScrollable: true,
                    indicatorPadding: EdgeInsets.zero,
                    indicatorColor: AppTheme.appThemeColor,
                    labelPadding: const EdgeInsets.only(right: 16.0),
                    splashBorderRadius: BorderRadius.circular(12.0),
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    splashFactory: NoSplash.splashFactory,
                    overlayColor: MaterialStateProperty.all(Colors.transparent),
                    tabs: const [
                      Tab(text: 'Details'),
                      Tab(text: 'Course'),
                      Tab(text: 'Gallery'),
                      Tab(text: 'Review'),
                    ],
                  ),
                ),
                Flexible(
                  child: TabBarView(
                    children: [
                      DetailsView(size: size),
                      CourseView(size: size),
                      GalleryView(size: size),
                      ReviewView(size: size),
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
