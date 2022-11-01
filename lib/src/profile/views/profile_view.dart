import 'package:flutter/material.dart';
import 'package:instagram_ui/src/core/constants.dart';
import 'package:instagram_ui/src/profile/widgets/edit_profile_row.dart';
import 'package:instagram_ui/src/profile/widgets/hightlight_item.dart';
import 'package:instagram_ui/src/profile/widgets/profile_pic_row.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            // These are the slivers that show up in the "outer" scroll view.
            return <Widget>[
              SliverAppBar(
                pinned: true,
                backgroundColor: Colors.transparent,
                elevation: 0.0,
                title: const Text(
                  'amansa1n1',
                ),
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add_box,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.menu,
                    ),
                  ),
                ],
                forceElevated: innerBoxIsScrolled,
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const ProfilePicRow(),
                      verticalSizedBox,
                      const Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text('Aman Saini'),
                      ),
                      verticalSizedBoxSmall,
                      const Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text('Bio'),
                      ),
                      verticalSizedBox,
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: EditProfileRow(),
                      ),
                      SizedBox(
                        height: 110.0,
                        child: ListView.builder(
                          itemCount: 15,
                          scrollDirection: Axis.horizontal,
                          physics: const BouncingScrollPhysics(),
                          itemBuilder: (context, index) =>
                              const HighlightItem(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SliverOverlapAbsorber(
                handle:
                    NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                sliver: const SliverAppBar(
                  toolbarHeight: 0.0,
                  expandedHeight: 0.0,
                  primary: false,
                  backgroundColor: Colors.transparent,
                  pinned: true,
                  bottom: TabBar(
                    tabs: <Widget>[
                      Tab(
                        icon: Icon(Icons.grid_on),
                      ),
                      Tab(
                        icon: Icon(Icons.slideshow),
                      ),
                      Tab(
                        icon: Icon(Icons.account_box_outlined),
                      ),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: const TabBarView(
            children: <Widget>[
              Center(
                child: Text("It's cloudy here"),
              ),
              Center(
                child: Text("It's rainy here"),
              ),
              Center(
                child: Text("It's sunny here"),
              ),
            ],
          ),
        ),
        // ListView(
        //   padding: const EdgeInsets.symmetric(horizontal: 10.0),
        //   children: [
        //
      ),
    );
  }
}
