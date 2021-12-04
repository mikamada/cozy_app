import 'package:cozy_app/theme.dart';
import 'package:flutter/material.dart';

class ItemButtonNavigation extends StatelessWidget {
  final String imgUrl;
  final bool isActive;
  const ItemButtonNavigation({
    Key? key,
    required this.imgUrl,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(),
        Container(
          height: 26,
          width: 26,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                imgUrl,
              ),
            ),
          ),
        ),
        isActive
            ? Container(
                width: 30,
                height: 2,
                decoration: BoxDecoration(
                  color: purpleColor,
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
              )
            : Container(),
      ],
    );
  }
}
