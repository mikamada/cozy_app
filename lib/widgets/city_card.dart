import 'package:flutter/material.dart';

import '../theme.dart';

class CityCard extends StatelessWidget {
  final String imgUrl;
  final bool isPopular;
  final String name;
  const CityCard({
    Key? key,
    required this.imgUrl,
    this.isPopular = false,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20),
      width: 120,
      height: 150,
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        children: [
          Container(
            width: 120,
            height: 102,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(18),
                topRight: Radius.circular(18),
              ),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  imgUrl,
                ),
              ),
            ),
            child: Align(
              alignment: Alignment.topRight,
              child: isPopular
                  ? Container(
                      padding: const EdgeInsets.all(3),
                      width: 50,
                      height: 30,
                      decoration: BoxDecoration(
                          color: purpleColor,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            topRight: Radius.circular(18),
                          )),
                      child: Center(
                        child: Image.asset(
                          'assets/icon_star.png',
                          width: 22,
                          height: 22,
                        ),
                      ),
                    )
                  : const SizedBox(),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            name,
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
