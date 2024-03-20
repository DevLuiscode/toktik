import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';

class OtherProfileScreen extends StatelessWidget {
  const OtherProfileScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              Container(
                height: size.height,
                color: Colors.pink,
                child: CustomScrollView(
                  slivers: [
                    SliverAppBar(
                      toolbarHeight: 110,
                      pinned: true,
                      expandedHeight: size.height * 0.4,
                      backgroundColor: Colors.white,
                      flexibleSpace: const FlexibleSpaceBar(
                        titlePadding: EdgeInsets.zero,
                        centerTitle: true,
                        title: SizedBox(
                          height: 56,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(Iconsax.home),
                              Icon(Iconsax.home),
                              Icon(Iconsax.home),
                              Icon(Iconsax.home),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
