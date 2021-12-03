import 'package:flutter/material.dart';

import '../theme.dart';

class SpaceCard extends StatelessWidget {
  final EdgeInsets margin;
  final int price;
  final String imgurl;
  final bool isPopular;
  final String space;
  final String name;
  const SpaceCard({
    Key? key,
    this.margin = EdgeInsets.zero,
    required this.imgurl,
    required this.price,
    required this.space,
    this.isPopular = false,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        children: [
          Container(
            width: 130,
            height: 110,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  imgurl,
                ),
              ),
              borderRadius: BorderRadius.circular(18),
            ),
            child: Align(
              alignment: Alignment.topRight,
              child: isPopular
                  ? Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      width: 70,
                      height: 30,
                      decoration: BoxDecoration(
                        color: purpleColor,
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(18),
                          bottomLeft: Radius.circular(18),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            'assets/icon_star.png',
                            width: 20,
                            height: 20,
                          ),
                          Text(
                            '4/5',
                            style: whiteTextStyle.copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    )
                  : const SizedBox(),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: blackTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text.rich(
                TextSpan(
                  text: "\$ $price",
                  style: purpleTextStyle.copyWith(
                    fontSize: 16,
                  ),
                  children: [
                    TextSpan(
                      text: ' / month',
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                space,
                style: greyTextStyle.copyWith(
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
