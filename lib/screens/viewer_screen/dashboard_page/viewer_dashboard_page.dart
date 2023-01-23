import 'package:flutter/material.dart';
import 'package:institute_app_v2/models/drawer_model.dart';
import '../../../widgets/custom_drawer_widget.dart';
import 'components/appbar_widget.dart';
import 'components/viewer_tutor_card_widget.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  late TextEditingController _searchController;
  late FocusNode _searchNode;
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
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
        drawer: CustomDrawerWidget(drawerModel: DrawerModel.generatedItems),
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
                  onTapSearch: () {},
                ),
                Container(
                  width: size.width,
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      ListView(
                        shrinkWrap: true,
                        padding: EdgeInsets.zero,
                        controller: _scrollController,
                        children: List.generate(
                            5, (index) => TutorCardWidget(size: size)),
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
