import 'package:flutter/material.dart';
import 'package:flutter_social_ui/widgets/following_users.dart';

class HomeScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();

}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {


  // Ajout du singleTickerProviderStateMixin et _tabController
  // Pour la gestion des onglets plus bas.
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        iconTheme: IconThemeData(
            color: Theme.of(context).primaryColor
        ),
        title: new Text(
          'FRENZY',
          style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.0
          ),
        ),
        bottom: TabBar(
          controller: _tabController,
          labelColor: Theme.of(context).primaryColor,
          labelStyle: new TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w600
          ),
          unselectedLabelStyle: new TextStyle(fontSize: 18.0),
          indicatorWeight: 3.0,
          tabs: <Widget>[
            new Tab(text: 'Trending'),
            new Tab(text: 'Lastest'),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              FollowingUsers(),
            ],
          )
        ],
      ),
    );
  }
}