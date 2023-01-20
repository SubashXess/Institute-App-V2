import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:institute_app_v2/widgets/textform_widget.dart';

import '../constants/boxshadow.dart';
import '../constants/dimensions.dart';
import '../constants/textstyles.dart';
import '../constants/themes.dart';
import '../widgets/custom_drawer_widget.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  late TextEditingController _searchController;
  late FocusNode _searchNode;

  bool searchOnTap = false;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController()..addListener(onListen);
    _searchNode = FocusNode();
  }

  @override
  void dispose() {
    _searchController.dispose();
    _searchController.removeListener(onListen);
    _searchNode.dispose();
    super.dispose();
  }

  void onListen() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        drawer: CustomDrawerWidget(),
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                DashboardAppBarWidget(
                  size: size,
                  controller: _searchController,
                  node: _searchNode,
                  title: 'Home',
                  city: 'Bhubaneswar',
                  onTapSearch: () {
                    setState(() {
                      searchOnTap = true;
                    });
                  },
                ),
                SizedBox(
                  width: size.width,
                  child: Column(
                    children: [
                      Container(
                        width: size.width,
                        height: size.height * 0.26,
                        margin: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          color: AppTheme.appThemeColor,
                        ),
                      ),
                      Container(
                        width: size.width,
                        height: size.height * 0.26,
                        margin: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          color: AppTheme.appThemeColor,
                        ),
                      ),
                      Container(
                        width: size.width,
                        height: size.height * 0.26,
                        margin: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          color: AppTheme.appThemeColor,
                        ),
                      ),
                      Container(
                        width: size.width,
                        height: size.height * 0.26,
                        margin: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          color: AppTheme.appThemeColor,
                        ),
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
}

class DashboardAppBarWidget extends StatelessWidget {
  const DashboardAppBarWidget({
    super.key,
    required this.size,
    required this.title,
    required this.city,
    required this.controller,
    required this.node,
    required this.onTapSearch,
  });

  final Size size;
  final String title;
  final String city;
  final TextEditingController controller;
  final FocusNode node;
  final VoidCallback onTapSearch;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      color: AppContainerTheme.appContainerBluishTheme,
      padding: const EdgeInsets.all(16.0),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Builder(builder: (context) {
                  return InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {
                      Scaffold.of(context).openDrawer();
                    },
                    child: Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        color: Colors.white,
                        boxShadow: [
                          AppBoxShadow.s1BoxShadow(
                              color: Colors.black.withOpacity(0.086))
                        ],
                      ),
                      child: Container(
                        margin: const EdgeInsets.all(2.0),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: AppContainerTheme.appContainerGreyTheme,
                        ),
                        child: Image.asset(
                          'assets/temp/pexels-tam-hoang-1007066.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                }),
                Flexible(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Current City ',
                          style: AppTextStyle.h4TextStyle(
                            color: AppTextTheme.appTextThemeLight,
                            size: 13.0,
                          ),
                        ),
                        const SizedBox(height: 6.0),
                        InkWell(
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () {},
                          child: Text(
                            city,
                            maxLines: 1,
                            overflow: TextOverflow.clip,
                            textAlign: TextAlign.center,
                            style: AppTextStyle.h4TextStyle(
                              fontWeight: FontWeight.w500,
                              color: AppTextTheme.appTextThemeDark,
                              size: 14.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Badge(
                  position: BadgePosition.topEnd(end: -4),
                  badgeColor: Colors.redAccent,
                  elevation: 0.0,
                  padding: const EdgeInsets.all(5.0),
                  showBadge: true,
                  badgeContent: Text(
                    '5',
                    style: AppTextStyle.h4TextStyle(
                        size: 10.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                      boxShadow: [
                        AppBoxShadow.s0BoxShadow(
                            color: Colors.black.withOpacity(0.06))
                      ],
                    ),
                    child: SvgPicture.asset(
                      'assets/icons/bell.svg',
                      height: AppIconDimensions.appIconMediumSize,
                      width: AppIconDimensions.appIconMediumSize,
                      color: AppTheme.appThemeColor,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            Text('Good Morning,',
                style: AppTextStyle.h3TextStyle(
                    fontWeight: FontWeight.w500,
                    color: AppTextTheme.appTextThemeLight)),
            const SizedBox(height: 6.0),
            Text('Hajah Bolot', style: AppTextStyle.h1TextStyle(size: 22.0)),
            const SizedBox(height: 16.0),
            SearchFieldWidget(
              controller: controller,
              node: node,
              hint: 'Looking for a course?',
              fillColor: Colors.white,
              prefixIcon: const Icon(
                Icons.search_rounded,
                size: AppIconDimensions.appIconMediumSize,
                color: AppIconTheme.appIconThemeLight,
              ),
              onTap: onTapSearch,
            ),
          ],
        ),
      ),
    );
  }
}
