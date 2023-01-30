import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:institute_app_v2/constants/textstyles.dart';

import '../../components/star_ratings.dart';
import '../../constants/boxshadow.dart';
import '../../constants/dimensions.dart';
import '../../constants/themes.dart';
import '../tutor_profile_page/components/dot_indicator.dart';
import '../tutor_profile_page/views/course_view.dart';
import '../tutor_profile_page/views/details_view.dart';
import '../tutor_profile_page/views/gallery_view.dart';
import '../tutor_profile_page/views/review_view.dart';

class TutorProfilePageV2 extends StatefulWidget {
  const TutorProfilePageV2({super.key});

  @override
  State<TutorProfilePageV2> createState() => _TutorProfilePageV2State();
}

class _TutorProfilePageV2State extends State<TutorProfilePageV2> {
  final _popupKey = GlobalKey<PopupMenuButtonState<int>>();
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: DefaultTabController(
        length: 4,
        child: CustomScrollView(
          physics: NeverScrollableScrollPhysics(),
          controller: _scrollController,
          slivers: [
            SliverAppBar(
              expandedHeight: size.height * 0.4,
              backgroundColor: Colors.grey.shade50,
              elevation: 0.0,
              scrolledUnderElevation: 0.0,
              automaticallyImplyLeading: false,
              floating: false,
              leadingWidth: 0.0,
              titleSpacing: 0.0,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                titlePadding: EdgeInsets.zero,
                expandedTitleScale: 1.0,
                collapseMode: CollapseMode.pin,
                background: Padding(
                  padding: const EdgeInsets.only(bottom: kToolbarHeight),
                  child: SafeArea(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
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
                                          color:
                                              Colors.black.withOpacity(0.086))
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
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                            child: Text(
                                              'Share',
                                              style: AppTextStyle.h4TextStyle(
                                                color: AppTextTheme
                                                    .appTextThemeLight,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(width: 20.0),
                                          const Icon(
                                            Icons.share_outlined,
                                            size: 20.0,
                                            color:
                                                AppIconTheme.appIconThemeLight,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  PopupMenuItem(
                                    value: 2,
                                    height: 0.0,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                            child: Text(
                                              'Favorite',
                                              style: AppTextStyle.h4TextStyle(
                                                color: AppTextTheme
                                                    .appTextThemeLight,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(width: 20.0),
                                          const Icon(
                                            Icons.favorite_outline_rounded,
                                            size: 20.0,
                                            color:
                                                AppIconTheme.appIconThemeLight,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  PopupMenuItem(
                                    value: 3,
                                    height: 0.0,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Report',
                                            style: AppTextStyle.h4TextStyle(
                                                color: AppTextTheme
                                                    .appTextThemeError),
                                          ),
                                          const SizedBox(width: 20.0),
                                          SvgPicture.asset(
                                            'assets/icons/exclamation.svg',
                                            height: 18.0,
                                            width: 18.0,
                                            color:
                                                AppTextTheme.appTextThemeError,
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
                                          color:
                                              Colors.black.withOpacity(0.086))
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
                                  radius: 48.0,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    backgroundImage: NetworkImage(
                                        'https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHw%3D&w=1000&q=80'),
                                    radius: 44.0,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 16.0),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Jack Snow',
                                        style: AppTextStyle.h1TextStyle(
                                            fontWeight: FontWeight.w600,
                                            size: 18.0)),
                                    const SizedBox(height: 6.0),
                                    Text(
                                      'Personal Tutor',
                                      style: AppTextStyle.h4TextStyle(
                                        color: AppTextTheme.appTextThemeDark,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    const SizedBox(height: 4.0),
                                    Text(
                                      'Bhubaneswar, Odisha 751019',
                                      style: AppTextStyle.h4TextStyle(
                                        color: AppTextTheme.appTextThemeLight,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),

                                    // Text(
                                    //   '${AppUnicode.rupeeUnicode}${250}/hour',
                                    //   textAlign: TextAlign.center,
                                    //   style: AppTextStyle.h3TextStyle(
                                    //     color: AppTheme.appThemeColor,
                                    //     fontWeight: FontWeight.w500,
                                    //   ),
                                    // ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 16.0),
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
                                          size: 11.0,
                                          color:
                                              AppTextTheme.appTextThemeLight),
                                    ),
                                  ),
                                  const SizedBox(width: 10.0),
                                  _buildProfileStatus(
                                    header: 'Experience'.toUpperCase(),
                                    value: '7+',
                                    title: Text(
                                      'Years',
                                      style: AppTextStyle.h4TextStyle(
                                          size: 12.0,
                                          color:
                                              AppTextTheme.appTextThemeLight),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              bottom: PreferredSize(
                preferredSize: Size(size.width, 0.0),
                child: TabBar(
                  unselectedLabelColor: Colors.black38,
                  labelColor: AppTheme.appThemeColor,
                  labelStyle: AppTextStyle.h4TextStyle(
                      fontWeight: FontWeight.w500, size: 15.0),
                  indicatorPadding: EdgeInsets.zero,
                  indicatorColor: AppTheme.appThemeColor,
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  splashFactory: NoSplash.splashFactory,
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                  indicator:
                      const CustomTabIndicator(color: AppTheme.appThemeColor),
                  tabs: const [
                    Tab(text: 'Details'),
                    Tab(text: 'Course'),
                    Tab(text: 'Gallery'),
                    Tab(text: 'Review'),
                  ],
                ),
              ),
            ),
            // SliverFillRemaining(
            //   fillOverscroll: true,
            //   child: TabBarView(
            //     children: [
            //       DetailsView(size: size),
            //       CourseView(size: size),
            //       GalleryView(size: size),
            //       ReviewView(size: size),
            //     ],
            //   ),
            // ),
            SliverToBoxAdapter(
              child: Container(
                width: size.width,
                height: size.height * 0.6 - 40.0,
                color: Colors.red.shade100,
                child: TabBarView(
                  children: [
                    DetailsView(size: size),
                    CourseView(
                      size: size,
                      controller: _scrollController,
                    ),
                    GalleryView(size: size),
                    ReviewView(size: size),
                  ],
                ),
              ),
            ),
            // SliverToBoxAdapter(
            //   child: Container(
            //     width: size.width,
            //     height: size.height * 0.26,
            //     margin: const EdgeInsets.all(16.0),
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(12.0),
            //       color: Colors.deepPurple.shade400,
            //     ),
            //   ),
            // ),
            // SliverToBoxAdapter(
            //   child: Container(
            //     width: size.width,
            //     height: size.height * 0.26,
            //     margin: const EdgeInsets.all(16.0),
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(12.0),
            //       color: Colors.deepPurple.shade400,
            //     ),
            //   ),
            // ),
            // SliverToBoxAdapter(
            //   child: Container(
            //     width: size.width,
            //     height: size.height * 0.26,
            //     margin: const EdgeInsets.all(16.0),
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(12.0),
            //       color: Colors.deepPurple.shade400,
            //     ),
            //   ),
            // ),
            // SliverToBoxAdapter(
            //   child: Container(
            //     width: size.width,
            //     height: size.height * 0.26,
            //     margin: const EdgeInsets.all(16.0),
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(12.0),
            //       color: Colors.deepPurple.shade400,
            //     ),
            //   ),
            // ),
          ],
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
              size: 11.0,
              color: AppTextTheme.appTextThemeLight.withOpacity(0.30),
            ),
          ),
          const SizedBox(height: 6.0),
          Text(
            value,
            style: AppTextStyle.h3TextStyle(
              fontWeight: FontWeight.w700,
              color: AppTextTheme.appTextThemeLight,
              size: 14.0,
            ),
          ),
          const SizedBox(height: 6.0),
          title,
        ],
      ),
    );
  }
}
