import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<String> images = [
  "https://placeimg.com/500/500/1",
  "https://placeimg.com/500/500/2",
  "https://placeimg.com/500/500/3",
  "https://placeimg.com/500/500/4",
  "https://placeimg.com/500/500/5",
  "https://placeimg.com/500/500/6",
  "https://placeimg.com/500/500/7",
  "https://placeimg.com/500/500/8",
  "https://placeimg.com/500/500/10",
  "https://placeimg.com/500/500/22",
  "https://placeimg.com/500/500/32",
  "https://placeimg.com/500/500/23",
  "https://placeimg.com/500/500/12",
  "https://placeimg.com/500/500/22",
  "https://placeimg.com/500/500/333",
  "https://placeimg.com/500/500/47"
];

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: DefaultTabController(
          length: 3,
          child: NestedScrollView(
            physics: NeverScrollableScrollPhysics(),
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return [
                SliverAppBar(
                    backgroundColor: Colors.white,
                    expandedHeight: 350,
                    collapsedHeight: 360,
                    flexibleSpace: MyHeader()),
                SliverPersistentHeader(
                  delegate: MyDelegate(
                      tabBar: TabBar(
                    tabs: [
                      Tab(icon: Icon(Icons.grid_on)),
                      Tab(icon: Icon(Icons.favorite_border_outlined)),
                      Tab(icon: Icon(Icons.bookmark_border)),
                    ],
                    indicatorColor: Colors.black,
                    unselectedLabelColor: Colors.grey,
                    labelColor: Colors.black,
                  )),
                  floating: true,
                  pinned: true,
                )
              ];
            },
            body: TabBarView(
                children: [1, 2, 3]
                    .map((e) => GridView.count(
                          //physics: BouncingScrollPhysics(),
                          crossAxisCount: 3,
                          shrinkWrap: true,
                          mainAxisSpacing: 2.0,
                          crossAxisSpacing: 2.0,
                          children: images
                              .map((e) => Container(
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(e))),
                                  ))
                              .toList(),
                        ))
                    .toList()),
          ),
        ),
      ),
    );
  }
}

class MyHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(top: 20.0, left: 20, right: 20, bottom: 0),
          child: Row(
            children: [
              CircleAvatar(
                radius: 40,
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage(
                    "https://thumbs.dreamstime.com/b/handsome-man-black-suit-white-shirt-posing-studio-attractive-guy-fashion-hairstyle-confident-man-short-beard-125019349.jpg"),
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "61",
                          style: TextStyle(fontWeight: FontWeight.w900),
                        ),
                        Text("Posts")
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "645",
                          style: TextStyle(fontWeight: FontWeight.w900),
                        ),
                        Text("Followers")
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "994",
                          style: TextStyle(fontWeight: FontWeight.w900),
                        ),
                        Text("Followings")
                      ],
                    )
                  ],
                ),
              ))
            ],
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(top: 20.0, left: 20, right: 20, bottom: 0),
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "D H I R A J P A T E L",
                    style: TextStyle(fontWeight: FontWeight.w900),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text("Young , Wild , Free"),
                  SizedBox(
                    height: 5,
                  ),
                  Text("Surat ! India"),
                  SizedBox(
                    height: 5,
                  ),
                ],
              )
            ],
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(top: 20.0, left: 20, right: 20, bottom: 0),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  height: 32,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(6)),
                  child: Center(
                      child: Text(
                    "Edit Profile",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Expanded(
                child: Container(
                  height: 32,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(6)),
                  child: Center(
                      child: Text(
                    "Saved",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Container(
              height: 90,
              //color: Colors.blue,
              child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: images
                      .map(
                        (e) => Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(32),
                                    border: Border.all(color: Colors.black)),
                                child: CircleAvatar(
                                  radius: 32,
                                  backgroundColor: Colors.white,
                                  child: CircleAvatar(
                                    radius: 29,
                                    backgroundImage:
                                        NetworkImage(e + 12.toString()),
                                    backgroundColor: Colors.grey,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Flexible(child: Text("🔥"))
                            ],
                          ),
                        ),
                      )
                      .toList())),
        )
      ],
    );
  }
}

class MyDelegate extends SliverPersistentHeaderDelegate {
  final TabBar tabBar;
  MyDelegate({this.tabBar});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(color: Colors.white, child: tabBar);
  }

  @override
  double get maxExtent => tabBar.preferredSize.height;

  @override
  double get minExtent => tabBar.preferredSize.height;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
