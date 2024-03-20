import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class NavBarModel {
  final String? name;
  final IconData icon;
  final bool isSelected;

  NavBarModel({
    this.name,
    required this.icon,
    required this.isSelected,
  });

  NavBarModel copyWitht({
    String? name,
    IconData? icon,
    bool? isSelected,
  }) =>
      NavBarModel(
        name: name ?? this.name,
        icon: icon ?? this.icon,
        isSelected: isSelected ?? this.isSelected,
      );
}

final List<NavBarModel> navgationBarList = [
  NavBarModel(name: "Inicio", icon: Iconsax.home, isSelected: true),
  NavBarModel(name: "Amigos", icon: Iconsax.profile_2user, isSelected: false),
  NavBarModel(icon: Iconsax.add, isSelected: false),
  NavBarModel(name: "Bandeja", icon: Iconsax.direct_inbox, isSelected: false),
  NavBarModel(name: "Perfil", icon: Iconsax.user, isSelected: false),
];
