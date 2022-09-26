import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ToptaBar extends StatefulWidget {
  const ToptaBar({super.key});

  @override
  State<ToptaBar> createState() => _ToptaBarState();
}

class _ToptaBarState extends State<ToptaBar>
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
      body: Column(
        children: [
          Container(
            height: 50,
            color: Colors.black,
            child: TabBar(
                unselectedLabelColor: Colors.grey,
                labelColor: Colors.yellow,
                controller: _tabController,
                tabs: const [
                  Tab(
                    icon: Icon(Icons.my_library_add),
                  ),
                  Tab(
                    icon: Icon(Icons.file_download),
                  ),
                  Tab(
                    icon: Icon(Icons.face_outlined),
                  ),
                ]),
          ),
          Expanded(
              child: TabBarView(
            controller: _tabController,
            children: const [
              Center(
                child: Icon(
                  Icons.home,
                  size: 100,
                ),
              ),
              Center(
                child: Icon(
                  Icons.wifi_calling,
                  size: 100,
                ),
              ),
              Center(
                child: Icon(
                  Icons.wifi,
                  size: 100,
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
