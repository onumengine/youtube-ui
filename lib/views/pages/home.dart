import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:youtube/toolkit/asset_provider.dart';
import 'package:youtube/views/components/post_component.dart';
import 'package:youtube/views/components/short_component.dart';
import 'package:youtube/vms/home_vm.dart';
import 'package:youtube/views/components/custom_chip.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final vm = context.watch<HomeViewModel>();
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Image.asset(
          ImageAssetProvider().getAppLogo(),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.rss_feed_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset(ImageAssetProvider().getImageByName('avatar')),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size(MediaQuery.of(context).size.width, 1),
          child: Divider(
            thickness: 1,
            endIndent: 12,
            indent: 12,
            height: 1,
            color: HexColor('#CECECE'),
          ),
        ),
      ),
      body: LayoutBuilder(
        builder: (_, size) => SizedBox(
          height: size.maxHeight,
          width: size.maxWidth,
          child: SafeArea(
            bottom: false,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 56,
                    child: ListView.separated(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 4),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (_, index) => CustomChip(
                        key: UniqueKey(),
                        chipItem: vm.categories[index],
                        isSelected: vm.categories[index] == vm.selectedCategory,
                      ),
                      separatorBuilder: (_, idx) => const SizedBox(width: 4),
                      itemCount: vm.categories.length,
                    ),
                  ),
                  PostComponent(
                    post: vm.posts[0],
                    index: 0,
                    width: size.maxWidth,
                  ),
                  Container(
                    height: 8,
                    width: size.maxWidth,
                    color: HexColor('E5E5E5'),
                  ),
                  ListTile(
                    leading: Image.asset(ImageAssetProvider().getShortsLogo()),
                    title: Text(
                      'Shorts',
                      style: GoogleFonts.roboto(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 284,
                    width: size.maxWidth,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(
                              vertical: 14, horizontal: 12) +
                          const EdgeInsets.only(bottom: 6),
                      itemBuilder: (_, index) => ShortComponent(
                          short: vm.shorts[index],
                          height: 250,
                          width: 150,
                          index: index),
                      separatorBuilder: (_, idx) => const SizedBox(
                        width: 12,
                      ),
                      itemCount: vm.shorts.length,
                    ),
                  ),
                  Container(
                    height: 8,
                    width: size.maxWidth,
                    color: HexColor('E5E5E5'),
                  ),
                  ...List.generate(
                    vm.posts.length - 1,
                    (index) => PostComponent(
                      post: vm.posts[index],
                      index: index,
                      width: size.maxWidth,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle:
            GoogleFonts.roboto(fontSize: 12, color: Colors.black),
        selectedItemColor: Colors.black,
        selectedIconTheme: const IconThemeData(color: Colors.black),
        unselectedIconTheme: const IconThemeData(color: Colors.black),
        showUnselectedLabels: false,
        showSelectedLabels: false,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.slideshow_sharp),
            activeIcon: Icon(Icons.smart_display_sharp),
            label: 'Shorts',
          ),
          BottomNavigationBarItem(
            icon: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.black,
                  width: 1.5
                )
              ),
              child: const Icon(Icons.add),
            ),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.subscriptions_outlined),
            activeIcon: Icon(Icons.subscriptions_rounded),
            label: 'Subscriptions',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.library_add_check_outlined),
            activeIcon: Icon(Icons.library_add_check_sharp),
            label: 'Library',
          ),
        ],
      ),
    );
  }
}
