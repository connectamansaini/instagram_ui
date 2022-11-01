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
      appBar: AppBar(
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
      ),
      body: DefaultTabController(
        length: 3,
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          children: [
            const ProfilePicRow(),
            verticalSizedBox,
            const Text('Aman Saini'),
            verticalSizedBoxSmall,
            const Text('Bio'),
            verticalSizedBox,
            const EditProfileRow(),
            SizedBox(
              height: 110.0,
              child: ListView.builder(
                itemCount: 15,
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) => const HighlightItem(),
              ),
            ),
            const TabBar(
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
            // const TabBarView(
            //   children: <Widget>[
            //     Center(
            //       child: Text("It's cloudy here"),
            //     ),
            //     Center(
            //       child: Text("It's rainy here"),
            //     ),
            //     Center(
            //       child: Text("It's sunny here"),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
