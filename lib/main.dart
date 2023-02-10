import 'package:appstore/components/trendingComponent.dart';
import 'package:appstore/screens/app.dart';
import 'package:appstore/screens/scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'components/CategoryComponent.dart';
import 'globals/globals.dart';

void main() {
  runApp(myStore());
}

class myStore extends StatefulWidget {
  const myStore({Key? key}) : super(key: key);

  @override
  State<myStore> createState() => _myStoreState();
}

class _myStoreState extends State<myStore> with SingleTickerProviderStateMixin {
  late TabController tb;
  PageController pg = PageController();

  @override
  int index = 0;

  void initState() {
    tb = TabController(length: 2, vsync: this);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return (ios == false)
        ? MaterialApp(
            debugShowCheckedModeBanner: false,
            routes: {
              'newPage': (context) => AppInfo(),
            },
            home: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                title: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Builder(builder: (context) {
                    return Container(
                      height: 45,
                      width: double.infinity,
                      child: Row(
                        children: [
                          Container(
                            height: 45,
                            width: 300,
                            child: Row(
                              children: [
                                Text('S'),
                                Icon(
                                  Icons.search,
                                  color: Colors.grey,
                                ),
                                Text('S'),
                                Text(
                                  'Search',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Text('Search'),
                              ],
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(color: Colors.grey, blurRadius: 5)
                              ],
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Switch(
                              value: ios,
                              onChanged: (val) {
                                setState(() {
                                  ios = val;
                                });
                              })
                        ],
                      ),
                    );
                  }),
                ),
                bottom: TabBar(
                  onTap: (val) {
                    setState(() {
                      pg.animateToPage(val,
                          duration: Duration(milliseconds: 500),
                          curve: Curves.linear);
                    });
                  },
                  controller: tb,
                  tabs: const [
                    Tab(
                      child: Text(
                        'Trending',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Categories',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              body: PageView(
                controller: pg,
                children: [
                  trendingComponent(),
                  Category(),
                ],
              ),
            ),
          )
        : CupertinoApp(
            debugShowCheckedModeBanner: false,
            home: CupertinoPageScaffold(
              navigationBar: CupertinoNavigationBar(
                trailing: CupertinoSwitch(
                  value:ios ,
                  onChanged: (val){
                    setState(() {
                      ios=val;
                    });
                  },
                ),
                leading: Text(
                  'AppStore',
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 25),
                ),
              ),
              child: Column(
                children: [
                  Expanded(
                    flex: 10,
                    child: IndexedStack(
                      index: index,
                      children: [
                        Expanded(flex: 10, child: trendingComponent()),
                        Expanded(flex: 10, child: Category()),
                      ],
                    ),
                  ),
                  Expanded(
                      child: CupertinoTabBar(
                    currentIndex: index,
                    onTap: (val) {
                      setState(() {
                        index = val;
                      });
                    },
                    items: [
                      BottomNavigationBarItem(
                          icon: Icon(CupertinoIcons.app_badge_fill)),
                      BottomNavigationBarItem(icon: Icon(Icons.apps_outlined)),
                    ],
                  )),
                ],
              ),
            ),
          );
  }
}
