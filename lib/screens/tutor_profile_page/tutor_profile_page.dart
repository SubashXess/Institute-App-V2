import 'package:flutter/material.dart';
import 'dart:math' as math;

class TutorProfilePage extends StatefulWidget {
  const TutorProfilePage({super.key});

  @override
  State<TutorProfilePage> createState() => _TutorProfilePageState();
}

class _TutorProfilePageState extends State<TutorProfilePage>
    with TickerProviderStateMixin {
  late ScrollController _scrollController;

  final List<String> listItems = [];

  final List<String> _tabs = <String>[
    "Details",
    "Course",
    "Review",
  ];

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
        length: _tabs.length,
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverOverlapAbsorber(
                handle:
                    NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                sliver: SliverAppBar(
                  // expandedHeight: size.height * 0.4,
                  backgroundColor: Colors.deepPurple.shade200,
                  floating: true,
                  pinned: true,
                  snap: false,
                  primary: true,
                  forceElevated: innerBoxIsScrolled,
                  bottom: TabBar(
                    isScrollable: true,
                    tabs: _tabs.map((String name) => Tab(text: name)).toList(),
                  ),
                ),
              ),
            ];
          },
          body: TabBarView(
            // These are the contents of the tab views, below the tabs.
            children: _tabs.map((String name) {
              return SafeArea(
                top: false,
                bottom: false,
                child: Builder(
                  // This Builder is needed to provide a BuildContext that is "inside"
                  // the NestedScrollView, so that sliverOverlapAbsorberHandleFor() can
                  // find the NestedScrollView.
                  builder: (BuildContext context) {
                    return CustomScrollView(
                      // the tab view is not on the screen.
                      key: PageStorageKey<String>(name),
                      slivers: <Widget>[
                        SliverOverlapInjector(
                          handle:
                              NestedScrollView.sliverOverlapAbsorberHandleFor(
                                  context),
                        ),
                      ],
                    );
                  },
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

// SliverToBoxAdapter(
//               child: Container(
//                 width: size.width,
//                 height: size.height * 0.26,
//                 margin: const EdgeInsets.all(16.0),
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(12.0),
//                   color: Colors.deepPurple.shade400,
//                 ),
//               ),
//             ),
