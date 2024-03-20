import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class FloatingActionsButtonWidget extends StatelessWidget {
  const FloatingActionsButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const SizedBox(
          height: 70,
          width: 50,
          child: Stack(
            children: [
              CircleAvatar(
                radius: 30,
              ),
              Positioned(
                bottom: 5,
                left: 0,
                right: 0,
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.red,
                  child: Icon(
                    color: Colors.white,
                    Iconsax.add,
                    size: 20,
                  ),
                ),
              )
            ],
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.favorite,
            size: 35,
            color: Colors.white,
          ),
        ),
        const Text(
          "234.3 Mill",
          style: TextStyle(color: Colors.white),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.message_rounded,
            size: 35,
            color: Colors.white,
          ),
        ),
        const Text(
          "342",
          style: TextStyle(color: Colors.white),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.save_rounded,
            size: 35,
            color: Colors.white,
          ),
        ),
        const Text(
          "546",
          style: TextStyle(color: Colors.white),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.share,
            size: 35,
            color: Colors.white,
          ),
        ),
        const Text(
          "34",
          style: TextStyle(color: Colors.white),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 12),
          child: CircleAvatar(
            radius: 23,
          ),
        ),
      ],
    );
  }
}
