import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OtherProfileScreen extends StatefulWidget {
  const OtherProfileScreen({
    super.key,
  });

  @override
  State<OtherProfileScreen> createState() => _OtherProfileScreenState();
}

class _OtherProfileScreenState extends State<OtherProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 3,
      child: NestedScrollView(
        physics: const NeverScrollableScrollPhysics(),
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppbarWidget(
              size: size,
            ),
            SliverPersistentHeader(
              pinned: true,
              delegate: MyDelegate(
                tabBar: const TabBar(
                  tabs: [
                    Tab(
                      icon: Icon(Icons.menu),
                    ),
                    Tab(
                      icon: Icon(Icons.share_outlined),
                    ),
                    Tab(
                      icon: Icon(Icons.favorite_border_outlined),
                    ),
                  ],
                  indicatorColor: Colors.black87,
                  unselectedLabelColor: Colors.grey,
                  labelColor: Colors.black,
                ),
              ),
            ),
          ];
        },
        body: const TabBarView(
          children: [
            ListGridWidget(),
            ListGridWidget(),
            ListGridWidget(),
          ],
        ),
      ),
    );
  }
}

class ListGridWidget extends StatelessWidget {
  const ListGridWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 1,
        crossAxisSpacing: 1,
      ),
      itemBuilder: (context, index) {
        return Container(
          color: Colors.pink,
        );
      },
    );
  }
}

class MyDelegate extends SliverPersistentHeaderDelegate {
  final TabBar tabBar;

  MyDelegate({required this.tabBar});
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color:
          Colors.white, // O cualquier color que se ajuste al diseño de tu app
      child: Column(
        children: [
          tabBar,
        ],
      ),
    );
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

class SliverAppbarWidget extends StatelessWidget {
  const SliverAppbarWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: size.height * 0.37,
      surfaceTintColor: Colors.white,
      backgroundColor: Colors.white,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: EdgeInsets.zero,
        collapseMode: CollapseMode.pin,
        expandedTitleScale: 1,
        background: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const CircleAvatar(
              radius: 50,
            ),
            const SizedBox(height: 10),
            const Text(
              "@user2024",
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text("37"),
                    Text("Siguiendo"),
                  ],
                ),
                SizedBox(width: 10),
                SizedBox(width: 10),
                Column(
                  children: [
                    Text("3734.mil"),
                    Text("Seguidores"),
                  ],
                ),
                SizedBox(width: 10),
                Column(
                  children: [
                    Text("1,1"),
                    Text("Me gusta"),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  onPressed: () {},
                  color: Colors.amber,
                  child: const Text("Seguir"),
                ),
                const SizedBox(width: 10),
                MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  onPressed: () {},
                  color: Colors.amber,
                  child: const Text("Mensajes"),
                ),
                const SizedBox(width: 10),
                MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  minWidth: 20,
                  onPressed: () {},
                  color: Colors.amber,
                  child: const Icon(Iconsax.arrow_down_1),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Icon(Iconsax.like)
          ],
        ),
      ),
    );
  }
}
