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
        child: SafeArea(
          child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              // These are the slivers that show up in the "outer" scroll view.
              return <Widget>[
                SliverAppBar(
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
                  sliver: SliverAppBar(
                    toolbarHeight: 0.0,
                    expandedHeight: 0.0,
                    primary: false,
                    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                    pinned: true,
                    floating: true,
                    bottom: const TabBar(
                      indicatorColor: Colors.white,
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
              children: [
                CustomGridView(),
                CustomGridView(),
                CustomGridView(),
              ],
            ),
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

class CustomGridView extends StatelessWidget {
  const CustomGridView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Builder(
        builder: (BuildContext context) {
          return CustomScrollView(
            key: const PageStorageKey<String>('Posts'),
            slivers: <Widget>[
              SliverOverlapInjector(
                handle:
                    NestedScrollView.sliverOverlapAbsorberHandleFor(context),
              ),
              SliverGrid(
                delegate: SliverChildBuilderDelegate(
                  (context, index) => Container(
                    color: Colors.white,
                  ),
                  childCount: 22,
                ),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 2,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
