import 'package:bottomnavigateandtapbar/Tapbar/tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: TabBarView(
        controller: _tabController,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          ToptaBar(),
          Center(
            child: Icon(
              Icons.emoji_emotions,
              size: 100,
              color: Colors.black,
            ),
          ),
          Center(
            child: Icon(
              Icons.emoji_events,
              size: 100,
              color: Colors.black,
            ),
          ),
        ],
      )),
      bottomNavigationBar: Container(
        color: Colors.black,
        child: TabBar(
            unselectedLabelColor: Colors.amber,
            controller: _tabController,
            tabs: const [
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                icon: Icon(Icons.place_rounded),
              ),
              Tab(
                icon: Icon(Icons.stacked_bar_chart),
              ),
            ]),
      ),
    );
  }
}
