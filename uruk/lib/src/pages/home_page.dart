import 'package:flutter/material.dart';
import 'package:uruk/src/widgets/accounts_tab_widget.dart';
import 'package:uruk/src/widgets/cards_widget.dart';
import 'package:uruk/src/widgets/credit_card_widget.dart';

import '../constants/constants.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length:2);
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
              brightness: Brightness.light ,

          leading: Icon(Icons.sort,color:primaryColor,),
          centerTitle: false,
          elevation: 0,
          title: Text(StringContants.MY_ACCOUNTS,style: TextStyle(color:primaryColor,fontWeight: FontWeight.bold),),backgroundColor: Colors.white,
          bottom: TabBar(
            isScrollable: true,
            controller: _tabController,
            indicatorWeight:4.0,
            indicatorColor:primaryColor,
            tabs: [
            Tab(child: Container(
              width: 100,
              child: Text(StringContants.ACCOUNTS,style: TextStyle(color:primaryColor,fontWeight: FontWeight.bold,fontSize: 16),)),),
            Tab(child:Container(child: Text(StringContants.CARDS,style: TextStyle(color:primaryColor,fontWeight: FontWeight.bold,fontSize: 16))))
          ],),
          
          ),

          body: TabBarView(
            controller: _tabController,
            children: [
               AccountsTab(),
               CardsTab() 
            ],
          ),
          floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),
        backgroundColor: primaryColor,
      ),
      ),
    );
  }

}