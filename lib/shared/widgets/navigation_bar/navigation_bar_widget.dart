import 'package:flutter/material.dart';
import 'package:toktik/shared/shared.dart';

class NavigationBarWidget extends StatelessWidget {
  const NavigationBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(seconds: 1),
      child: SafeArea(
        top: false,
        bottom: true,
        left: false,
        right: false,
        child: Container(
          color: Colors.black,
          height: 55,
          padding: const EdgeInsets.symmetric(vertical: 2),
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ...List.generate(
                navgationBarList.length,
                (index) {
                  final item = navgationBarList[index];
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      index == 2
                          ? Stack(
                              children: [
                                Container(
                                  height: 30,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    gradient: const LinearGradient(
                                      colors: [
                                        Color(0XFF25F4EE),
                                        Color(0XFFFE2C55),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  bottom: 0,
                                  right: 5,
                                  left: 5,
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 40,
                                    height: 35,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white,
                                    ),
                                    child: Icon(
                                      item.icon,
                                      size: 28,
                                      color: item.isSelected
                                          ? Colors.black
                                          : Colors.grey,
                                    ),
                                  ),
                                )
                              ],
                            )
                          : Icon(
                              item.icon,
                              size: 20,
                              color:
                                  item.isSelected ? Colors.white : Colors.grey,
                            ),
                      Text(
                        item.name != null ? item.name! : "",
                        style: TextStyle(
                            color: item.isSelected ? Colors.white : Colors.grey,
                            fontSize: 13),
                      )
                    ],
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
