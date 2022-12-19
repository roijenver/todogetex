import 'package:flutter/material.dart';
import 'package:flutter_ui/custom_appbar.dart'

class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);
    
  @override
State<PageOne> createState() => _PageOneState();
}
    
class _PageOneState extends State<PageOne> with SingleTickerProviderStateMixin {

  String? text;

  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext) {
  return Scaffold(
    appBar: AppBar(
      title: const Text('TODO LIST'),
      bottom: TabBar(
        controller: tabController,
        tabs: const[
          Tab(child: Text('Tab One')),
          Tab(child: Text('Tab One')),
        ],
      ),
    ),
    drawer: Drawer(
      child: ListView(
        children: [
          const CustomAppBar(),
          ListTile(
            title: const Text('List Item'),
            onTap(): {

       },
      )
    ]
  ),
),
    body: TabBarView(
    controller: tabController,
    children: [
     Center(child: Icon(Icons.home)),
     Center(child: Icon(Icons.home))
        ],
      ),
    );
  }
}

    